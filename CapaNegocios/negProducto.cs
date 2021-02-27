using CapaDatos;
using CapaEntidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaNegocios
{
    public class negProducto
    {
        public static List<entProducto> ListarProductoPorCategoria(int idCategoria)
        {
            return daoProductos.ListarProductoPorCategoria(idCategoria);
        }

        public static entProducto buscarProducto(int idProducto)
        {
            return daoProductos.buscarProducto(idProducto);
        }

        public static int ModificarProducto(entProducto oProducto)
        {
            return daoProductos.ModificarProducto(oProducto);
        }

        public static int AgregarProducto(entProducto oProducto)
        {
            return daoProductos.AgregarProducto(oProducto);
        }
    }
}
