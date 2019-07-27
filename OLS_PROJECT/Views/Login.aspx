<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OLS_PROJECT.Views.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="login_form" runat="server">
        <div>
            <asp:TextBox ID="UsernameTxtBox" runat="server" />
            <br />
            <asp:TextBox ID="PasswordTxtBox" runat="server" />
            <br />
            <asp:Button ID="Submit_Btn" runat="server" Text="Submit" OnClick="Submit_Btn_Click" />
        </div>
    </form>
</body>
</html>
 