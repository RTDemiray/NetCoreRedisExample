using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NetCoreRedisExample.Models
{
    public class User
    {
        public string Firstname { get; set; }
        public string Lastname { get; set; }
        public string Twitter { get; set; }
        public string Blog { get; set; }
    }
}
