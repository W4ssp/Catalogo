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
    public partial class formLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["usuario"] != null)
            {
                Response.Redirect("formPrincipal.aspx");
            }
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            if(txtUsuario.Text != "" && txtpass.Text != "")
            {
                entUsuario obj = negUsuario.Login(txtUsuario.Text, txtpass.Text);
                if(obj != null)
                {
                    Session["usuario"] = obj;
                    Response.Redirect("formPrincipal.aspx");
                }
                else
                {
                    lblError.Text = "Usuario o contraseña invalidos";
                    lblError.Visible = true;
                }
            }
            else
            {
                lblError.Text = "Faltan Ingresar Campos";
                lblError.Visible = true;
            }
        }
    }
}