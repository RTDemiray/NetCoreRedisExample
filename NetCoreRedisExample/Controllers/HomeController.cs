using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using System.Threading.Tasks;
using Dapper.Contrib.Extensions;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using NetCoreRedisExample.Models;
using Newtonsoft.Json;
using StackExchange.Redis.Extensions.Core.Abstractions;

namespace NetCoreRedisExample.Controllers
{
    public class HomeController : Controller
    {
        private readonly IRedisCacheClient _redisCacheClient;
        private readonly IDbConnection _dbConnection;

        public HomeController(IRedisCacheClient redisCacheClient, IDbConnection dbConnection)
        {
            _redisCacheClient = redisCacheClient;
            _dbConnection = dbConnection;
        }

        public async Task<IActionResult> Index()
        {
            var model = await _dbConnection.GetAllAsync<Products>();
            return View(model);
        }

        [Route("AddCart/{id}")]
        public async Task<IActionResult> AddCart(int id)
        {
            var product = await _dbConnection.GetAsync<Products>(id);
            if (product == null) return RedirectToAction(nameof(Index));

            string clientIp = HttpContext.Connection.RemoteIpAddress.ToString();
  
            string jsonData = JsonConvert.SerializeObject(product);
            byte[] data = Encoding.UTF8.GetBytes(jsonData);
            await _redisCacheClient.Db0.Database.ListRightPushAsync(clientIp, data);
            await _redisCacheClient.Db0.UpdateExpiryAsync(clientIp, DateTimeOffset.Now.AddMinutes(30));
            return RedirectToAction(nameof(Index));
        }

        [Route("ShoppingCart")]
        public async Task<IActionResult> ShoppingCart()
        {
            string clientIp = HttpContext.Connection.RemoteIpAddress.ToString();
            List<Products> products = new List<Products>();

            var data = await _redisCacheClient.Db0.Database.ListRangeAsync(clientIp);

            foreach (var item in data)
            {
                var product = JsonConvert.DeserializeObject<Products>(item);
                var productControl = await _dbConnection.GetAsync<Products>(product.id);
                if (productControl != null)
                    products.Add(productControl);
                else
                    await _redisCacheClient.Db0.Database.ListRemoveAsync(clientIp, item, 1);
            }

            return View(products);
        }

        [Route("DeleteCart/{id}")]
        public async Task<IActionResult> DeleteCart(int id)
        {
            var product = await _dbConnection.GetAsync<Products>(id);
            if (product == null) return View(nameof(ShoppingCart));

            string clientIp = HttpContext.Connection.RemoteIpAddress.ToString();
            string jsonData = JsonConvert.SerializeObject(product);
            byte[] data = Encoding.UTF8.GetBytes(jsonData);

            await _redisCacheClient.Db0.Database.ListRemoveAsync(clientIp, data, 1);
            return RedirectToAction(nameof(ShoppingCart));
        }

    }
}
