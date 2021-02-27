using CapaEntidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class daoProductos
    {
        public static List<entProducto> ListarProductoPorCategoria(int idCategoria)
        {
            SqlCommand cmd = null;
            SqlDataReader dr = null;
            List<entProducto> lista = null;
            try
            {
                Conexion cn = new Conexion();
                SqlConnection cnx = cn.conectar();
                cmd = new SqlCommand("ListarProductosPorCategoria", cnx);
                cmd.Parameters.AddWithValue("IdCategoria", idCategoria);
                cmd.CommandType = CommandType.StoredProcedure;
                cnx.Open();
                dr = cmd.ExecuteReader();
                lista = new List<entProducto>();
                while (dr.Read())
                {
                    entProducto p = new entProducto();
                    p.Activo = Convert.ToInt32(dr["Activo"].ToString());
                    p.Detalle = dr["Detalle"].ToString();
                    p.IdCategoria = Convert.ToInt32(dr["IdCategoria"].ToString());
                    p.IdProducto = Convert.ToInt32(dr["IdProducto"].ToString());
                    p.Nombre = dr["Nombre"].ToString();
                    p.Precio = float.Parse(dr["Precio"].ToString());
                    p.Stock = float.Parse(dr["Stock"].ToString());
                    lista.Add(p);
                }

            }
            catch (Exception e)
            {

                lista = null;
            }
            finally
            {
                cmd.Connection.Close();
            }
            return lista;
        }

        public static entProducto buscarProducto(int idProducto)
        {
            entProducto oProducto = null;
            SqlCommand cmd = null;
            SqlDataReader dr = null;
            try
            {
                Conexion cn = new Conexion();
                SqlConnection cnx = cn.conectar();
                cmd = new SqlCommand("BuscarProducto", cnx);
                cmd.Parameters.AddWithValue("@IdProducto", idProducto);
                cmd.CommandType = CommandType.StoredProcedure;
                cnx.Open();
                dr = cmd.ExecuteReader();
                oProducto = new entProducto();
                dr.Read();
                oProducto.Activo = Convert.ToInt32(dr["Activo"].ToString());
                oProducto.Detalle = dr["Detalle"].ToString();
                oProducto.IdCategoria = Convert.ToInt32(dr["IdCategoria"].ToString());
                oProducto.IdProducto = Convert.ToInt32(dr["IdProducto"].ToString());
                oProducto.Nombre = dr["Nombre"].ToString();
                oProducto.Precio = float.Parse(dr["Precio"].ToString());
                oProducto.Stock = float.Parse(dr["Stock"].ToString());
                ;
            }
            catch (Exception e)
            {

                oProducto = null;
            }
            finally
            {
                cmd.Connection.Close();
            }
            return oProducto;
        }

        public static int ModificarProducto(entProducto oProducto)
        {
            int indicador = 0;
            SqlCommand cmd = null;

            try
            {
                Conexion cn = new Conexion();
                SqlConnection cnx = cn.conectar();
                cmd = new SqlCommand("ModificarProducto", cnx);
                cmd.Parameters.AddWithValue("@IdProducto", oProducto.IdProducto);
                cmd.Parameters.AddWithValue("@Nombre", oProducto.Nombre);
                cmd.Parameters.AddWithValue("@Detalle", oProducto.Detalle);
                cmd.Parameters.AddWithValue("@Precio", oProducto.Precio);
                cmd.Parameters.AddWithValue("@Stock", oProducto.Stock);
                cmd.Parameters.AddWithValue("@IdCategoria", oProducto.IdCategoria);
                cmd.CommandType = CommandType.StoredProcedure;
                cnx.Open();
                cmd.ExecuteNonQuery();
                indicador = 1;
            }
            catch (Exception e)
            {

                indicador = 0;
            }
            finally
            {
                cmd.Connection.Close();
            }
            return indicador;
        }
        public static int AgregarProducto(entProducto oProducto)
        {
            int indicador = 0;
            SqlCommand cmd = null;

            try
            {
                Conexion cn = new Conexion();
                SqlConnection cnx = cn.conectar();
                cmd = new SqlCommand("AgregarProducto", cnx);
                cmd.Parameters.AddWithValue("@Nombre", oProducto.Nombre);
                cmd.Parameters.AddWithValue("@Detalle", oProducto.Detalle);
                cmd.Parameters.AddWithValue("@Precio", oProducto.Precio);
                cmd.Parameters.AddWithValue("@Stock", oProducto.Stock);
                cmd.Parameters.AddWithValue("@IdCategoria", oProducto.IdCategoria);
                cmd.CommandType = CommandType.StoredProcedure;
                cnx.Open();
                cmd.ExecuteNonQuery();
                indicador = 1;
            }
            catch (Exception e)
            {

                indicador = 0;
            }
            finally
            {
                cmd.Connection.Close();
            }
            return indicador;
        }
    }
}
