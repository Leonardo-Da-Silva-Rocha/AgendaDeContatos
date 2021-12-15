﻿using System;
using System.Web.UI.WebControls;

namespace AgendaDeContatos
{
    public partial class Usuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Inserting(object sender, SqlDataSourceCommandEventArgs e)
        {

        }

        protected void SqlDataSource1_Inserted(object sender, SqlDataSourceStatusEventArgs e)
        {
            if (e.Exception != null)
            {
                lblMsg.Text = "Inserido um registro duplicado ou com campos em branco";
                e.ExceptionHandled = true;
            }
        }

        protected void SqlDataSource1_Updated(object sender, SqlDataSourceStatusEventArgs e)
        {
            if (e.Exception != null)
            {
                lblMsg.Text = "Alterando um registro sem informar os campos";
                e.ExceptionHandled = true;
            }
        }
    }
}