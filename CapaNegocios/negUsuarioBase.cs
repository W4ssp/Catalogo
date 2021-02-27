namespace CapaNegocios
{
    public class negUsuarioBase
    {
        public static entUsuario Login(String usuario, String password)
        {
            return daoUsuario.Login(usuario, password);
        }
    }
}