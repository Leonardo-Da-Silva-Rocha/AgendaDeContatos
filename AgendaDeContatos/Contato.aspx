<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagePrincipal.Master" AutoEventWireup="true" CodeBehind="Contato.aspx.cs" Inherits="AgendaDeContatos.Contato" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="inserir um novo contato"></asp:Label>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Nome"></asp:Label>
    <br />
    <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
    <br />
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label5" runat="server" Text="Telefona"></asp:Label>
    <br />
    <asp:TextBox ID="txtTelefone" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="btnInserir" runat="server" OnClick="btnInserir_Click" Text="Inserir Contato" />
    <br />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" Text="Lista de Contatos"></asp:Label>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="466px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="telefone" HeaderText="telefone" SortExpression="telefone" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Contato] WHERE [id] = @id" InsertCommand="INSERT INTO [Contato] ([nome], [email], [telefone]) VALUES (@nome, @email, @telefone)" SelectCommand="SELECT [id], [nome], [email], [telefone] FROM [Contato]" UpdateCommand="UPDATE [Contato] SET [nome] = @nome, [email] = @email, [telefone] = @telefone WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nome" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="telefone" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nome" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="telefone" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
