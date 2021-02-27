using CapaNegocios;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Catalogo
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString["cat"] != null)
            {
                int cat = Convert.ToInt32(Request.QueryString["cat"]);
                grvProductos.DataSource = negProducto.ListarProductoPorCategoria(cat);
                grvProductos.DataBind();    
            }
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Response.Redirect("formAgregar.aspx");
        }

        protected void grvProductos_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("formModificar.aspx?idproducto=" + grvProductos.Rows[grvProductos.SelectedIndex].Cells[0].Text);
        }

        protected void btnAgregarCategoria_Click(object sender, EventArgs e)
        {
            Response.Redirect("formAgregarCategoria.aspx");
        }

    }
}