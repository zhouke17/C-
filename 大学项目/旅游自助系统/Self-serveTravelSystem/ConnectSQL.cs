using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace Self_serveTravelSystem
{
    public class ConnectSQL
    {
        
        class select
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Self-ServiceTravelSystem"].ToString());
            
        }
    }
}