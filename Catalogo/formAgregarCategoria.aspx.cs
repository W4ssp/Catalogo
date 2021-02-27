using CapaEntidades;
using CapaNegocios;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Catalogo
{
    public partial class formAgregarCategoria : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardarCategoria_Click(object sender, EventArgs e)
        {
            if(txtCategoria.Text != "")
                {
                    entCategoria obj = new entCategoria();
                    obj.Descripcion = txtCategoria.Text;                
                if(negCategoria.AgregarCategoria(obj) == 1)
                {
                    Response.Redirect("formPrincipal.aspx");
                }

            }
            else
            {
                    lblerror.Text = "Faltan Ingresar Campos";
                    lblerror.Visible = true;
            }

        }
    }
}