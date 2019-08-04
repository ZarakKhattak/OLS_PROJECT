<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OLS_PROJECT.Views.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="login_form" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="UsernameLabel" runat="server" Text="Username: " Width ="90"/>
                        <asp:TextBox ID="UsernameTxtBox" runat="server" Width="150"/>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter a Valid Username" style="color:#ff0000" ControlToValidate="UsernameTxtBox" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:label ID="PasswordLabel" runat="server" Text="Password: " Width="90"/>
                        <asp:TextBox ID="PasswordTxtBox" runat="server" Width="150"/>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter a Password"  style="color:#ff0000" ControlToValidate="PasswordTxtBox" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LabelInvalidPassword" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Submit_Btn" runat="server" Text="Submit" OnClick="Submit_Btn_Click" Width="150"/>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>

</html>
