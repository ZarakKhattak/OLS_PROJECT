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
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter a Valid Username" ControlToValidate="UsernameTxtBox" />
            <br />


            <asp:TextBox ID="PasswordTxtBox" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter a Password" ControlToValidate="PasswordTxtBox" />
            <br />
            <asp:Label ID="LabelInvalidPassword" runat="server" Text=""></asp:Label>
            <br />
            <asp:Button ID="Submit_Btn" runat="server" Text="Submit" OnClick="Submit_Btn_Click" />
        </div>
    </form>
</body>

</html>
