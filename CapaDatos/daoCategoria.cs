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
    public class daoCategoria
    {
        public static List<entCategoria> ListarCategorias()
        {
            SqlCommand cmd = null;
            SqlDataReader dr = null;
            List<entCategoria> lista = null;
            try
            {
                Conexion cn = new Conexion();
                SqlConnection cnx = cn.conectar();
                cmd = new SqlCommand("ListarCategorias", cnx);
                cmd.CommandType = CommandType.StoredProcedure;
                cnx.Open();
                dr = cmd.ExecuteReader();
                lista = new List<entCategoria>();
                while (dr.Read())
                {
                    entCategoria c = new entCategoria();
                    c.Descripcion = dr["Descripcion"].ToString();
                    c.IdCategoria = Convert.ToInt32(dr["IdCategoria"].ToString());
                    lista.Add(c);
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
    
        public static int AgregarCategoria(entCategoria oCategoria)
        {
            int indicador = 0;
            SqlCommand cmd = null;
            try
            {
                Conexion cn = new Conexion();
                SqlConnection cnx = cn.conectar();
                cmd = new SqlCommand("AgregarCategoria", cnx);
                cmd.Parameters.AddWithValue("Descripcion", oCategoria.Descripcion);
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
