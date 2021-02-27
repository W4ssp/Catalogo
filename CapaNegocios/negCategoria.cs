using CapaDatos;
using CapaEntidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaNegocios
{
    public class negCategoria
    {
        public static List<entCategoria> ListarCategorias()
        {
            return daoCategoria.ListarCategorias();
        
        }

        public static int AgregarCategoria(entCategoria oCategoria)
        {
            return daoCategoria.AgregarCategoria(oCategoria);
        }

    }
}
