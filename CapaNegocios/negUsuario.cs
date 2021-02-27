using CapaDatos;
using CapaEntidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaNegocios
{
    public class negUsuario
    {
        public static entUsuario Login(String usuario, String password)
        {
            return daoUsuario.Login(usuario, password);
        }

    }
}
