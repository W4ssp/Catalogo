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
    public partial class formAgregar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<entCategoria> lista = negCategoria.ListarCategorias();
            foreach(entCategoria obj in lista)
            {
                ListItem item = new ListItem(obj.Descripcion, obj.IdCategoria.ToString());
                cmbCategorias.Items.Add(item);
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            if(txtDetalle.Text != "" && txtNombre.Text != "" && txtPrecio.Text != "" && txtStock.Text != "")
            {
                entProducto obj = new entProducto();
                obj.Nombre = txtNombre.Text;
                obj.Detalle = txtDetalle.Text;
                try
                {
                    obj.Precio = float.Parse(txtPrecio.Text);
                    obj.Stock = float.Parse(txtStock.Text);
                }
                catch(Exception ex)
                {
                    lblerror.Text = "Datos Invalidos";
                    lblerror.Visible = true;
                    return;
                }
                obj.IdCategoria = Convert.ToInt32(cmbCategorias.SelectedValue);
                if(negProducto.AgregarProducto(obj) == 1)
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