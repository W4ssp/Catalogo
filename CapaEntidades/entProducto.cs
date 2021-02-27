using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidades
{
    public class entProducto
    {
        public int IdProducto { get; set; }
        public String Nombre { get; set; }
        public String Detalle { get; set; }
        public float Precio { get; set; }
        public float Stock { get; set; }
        public int IdCategoria { get; set; }
        public int Activo { get; set; }
    }
}
