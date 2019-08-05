<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OLS_PROJECT.Views.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style>
        html body {
            min-height: 100vh;
            padding:0;
            margin:0;
            text-align:center;
            background: #1A1A1A;
            color: white;
            font-family:'Segoe UI';
        }

        #controls_div {
            display:inline-block;
            margin-left:auto;
            margin-right:auto;
            background: #2F2F2F;
            border-radius:5px;
            padding: 10px;
            margin-top: 20%;
        }

        .LoginBtn {
            border-style:solid;
            border-radius: 3px;
            border-width:3px;
            margin: 2px;
            border-color:#181818;
            background: #1A1A1A;
            color:white;
            font-family:'Segoe UI';
            font-size: 15px;
            padding:5px;
        }

        .TextBoxCss {
            background:#181818;
            border-style: solid;
            border-width:2px;
            border-radius: 2px;
            border-color: #131313;
            color: #8F8F8F;
            font-family:'Segoe UI';
        }

    </style>
</head>
<body>
    <form id="login_form" runat="server">
        <div id="controls_div">
            <table>
                <tr>
                    <td>
                        <asp:Label ID="UsernameLabel" runat="server" Text="Username: " Width ="90"/>
                        <asp:TextBox ID="UsernameTxtBox" runat="server" Width="150" CssClass="TextBoxCss"/>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter a Valid Username" style="color:#ff0000" ControlToValidate="UsernameTxtBox" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:label ID="PasswordLabel" runat="server" Text="Password: " Width="90"/>
                        <asp:TextBox ID="PasswordTxtBox" runat="server" Width="150" CssClass="TextBoxCss"/>
                        <br />
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
                        <asp:Button ID="Submit_Btn" runat="server" Text="Submit" OnClick="Submit_Btn_Click" Width="150" CssClass="LoginBtn"/>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>

</html>
