using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class Conexion
    {
        public SqlConnection conectar()
        {
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = "Data Source = ESTEBAN\\SQLEXPRESS; Initial Catalog=DBProductos; Integrated Security=true";
            return cn;
        }
    }
}
