using System;
using System.Data.SqlClient;

namespace AgendaDeContatos
{
    public partial class Contato : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnInserir_Click(object sender, EventArgs e)
        {
            SqlConnection conexao = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            try
            {
                conexao.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conexao;
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "INSERT INTO Contato (nome,email,telefone) VALUES (@nome, @email, @telefone)";
                cmd.Parameters.AddWithValue("@nome", txtNome.Text);
                cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@telefone", txtTelefone.Text);
                cmd.ExecuteNonQuery();
                GridView1.DataBind();
            }
            catch
            {
                //msg de erro
            }
            finally
            {
                conexao.Close();
            }
        }
    }
}