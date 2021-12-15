using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AgendaDeContatos
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            String email = txtEmail.Text;
            String senha = txtSenha.Text;

            SqlConnection conexao = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            try
            {
                conexao.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conexao;
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "SELECT * FROM Usuario WHERE email = @email and senha = @senha";
                cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@senha", txtSenha.Text);

                SqlDataReader registro = cmd.ExecuteReader();

                if (registro.HasRows)
                {
                    HttpCookie login = new HttpCookie("login", txtEmail.Text);
                    Response.Cookies.Add(login);
                    Response.Redirect("~/Index.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Erro ao logar')</script>");
                }
                registro.Close();
            }
            catch
            {
                Response.Write("<script>alert('Erro ao logar')</script>");
            }
            finally
            {
                conexao.Close();
            }
        }
    }
}