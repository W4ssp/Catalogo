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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
            if(Request.QueryString["idproducto"] != null)
            {
                int idproducto = Convert.ToInt32(Request.QueryString["idproducto"]);
                entProducto obj = negProducto.buscarProducto(idproducto);
                txtDetalle.Text = obj.Detalle;
                txtNombre.Text = obj.Nombre;
                txtPrecio.Text = obj.Precio.ToString();
                txtStock.Text = obj.Stock.ToString();
                List<entCategoria> lista = negCategoria.ListarCategorias();
                foreach (entCategoria c in lista)
                {
                    ListItem li = new ListItem(c.Descripcion, c.IdCategoria.ToString());
                    cmbCategoria.Items.Add(li);
                }
                cmbCategoria.SelectedValue = obj.IdCategoria.ToString();
            }
            else
            {
                Response.Redirect("formPrincipal.aspx");
            }

            }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            if(txtStock.Text != "" && txtPrecio.Text != "" && txtNombre.Text != "" && txtDetalle.Text != "")
            {
                entProducto obj = new entProducto();
                obj.Nombre = txtNombre.Text;
                obj.Detalle = txtDetalle.Text;
                obj.IdProducto = Convert.ToInt32(Request.QueryString["idproducto"]);
                try
                {
                    obj.Precio = float.Parse(txtPrecio.Text);
                    obj.Stock = float.Parse(txtStock.Text);
                }
                catch (Exception ex)
                {
                    lblerror.Text = "Datos incorrectos";
                    lblerror.Visible = true;
                    return;
                }
                obj.IdCategoria = Convert.ToInt32(cmbCategoria.SelectedValue);
                if(negProducto.ModificarProducto(obj) == 1)
                {
                    Response.Redirect("formPrincipal.aspx");
                }
                else
                {
                    lblerror.Text = "No se pudo modificar";
                    lblerror.Visible = true;
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