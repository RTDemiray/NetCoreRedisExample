
**Projede StackExchange.Redis.Extensions ve Dapper kütüphanelerini kullanarak basit bir alışveriş sepetini session vb. yerine redis veritabanında saklıyoruz.**

# StackExchange.Redis.Extensions

[![Build Status](https://github.com/imperugo/StackExchange.Redis.Extensions/workflows/.NET%20Core/badge.svg?branch=v6)](https://github.com/imperugo/StackExchange.Redis.Extensions)
[![NuGet](http://img.shields.io/nuget/v/StackExchange.Redis.Extensions.Core.svg?style=flat)](https://www.nuget.org/packages/StackExchange.Redis.Extensions.Core/)

**Redis** veritabanı yapılandırılması
```JSON
"Redis": {		
	"AllowAdmin": true,
	"Ssl": false,
	"ConnectTimeout": 6000,
	"ConnectRetry": 2,
	"Database": 0,
	"Hosts": [
	{
		"Host": "localhost",
		"Port": "6379"
	}]
}
