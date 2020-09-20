using Dapper.Contrib.Extensions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NetCoreRedisExample.Models
{
    [Table(nameof(Products))]
    public class Products
    {
        public int id { get; set; }
        public string name { get; set; }
        public string price { get; set; }
        public string category { get; set; }
    }
}
