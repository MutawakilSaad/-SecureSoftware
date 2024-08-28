<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VulnerablePage.aspx.cs" Inherits="YourNamespace.VulnerablePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>صفحة بها ثغرة XSS</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblName" runat="server" Text="أدخل اسمك:"></asp:Label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:Button ID="btnSubmit" runat="server" Text="إرسال" OnClick="btnSubmit_Click" />
            <br />
            <asp:Label ID="lblOutput" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>






*********************************************************************
using System;

namespace YourNamespace
{
    public partial class VulnerablePage : System.Web.UI.Page
    {
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // هنا تكمن الثغرة، حيث يتم عرض المدخلات مباشرة دون أي معالجة
            lblOutput.Text = "مرحبا، " + txtName.Text; 
        }
    }
}
