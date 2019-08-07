<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateCustomerProfile.aspx.cs" Inherits="OLS_PROJECT.Views.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign up</title>
    <style>
        html body {
            min-height: 100vh;
            padding: 0;
            margin: 0;
            text-align: center;
            background: #1A1A1A;
            color: white;
            font-family: 'Segoe UI';
        }

        .label {
            text-align:left;
        }

        #controls_div {
            display:inline-block;
            margin-left:auto;
            margin-right:auto;
            background: #2F2F2F;
            border-radius:5px;
            padding: 10px;
            margin-top: 10%;
            
        }

        .Btn {
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
            width:90%;
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
    <form id="form1" runat="server" autocomplete="off">
        <div id="controls_div">
            <table id="table">
                <tr>
                    <td>
                        <asp:Label ID="FirstNameLabel" runat="server" Text="First Name:" Width="200" CssClass="label" />
                        <asp:TextBox ID="FirstNameTB" runat="server" CssClass="TextBoxCss"/>
                        <br />
                        <asp:RequiredFieldValidator ID="val" runat="server" ControlToValidate="FirstNameTB" ErrorMessage="Field Required" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LastNameLabel" runat="server" Text="Last Name:" Width="200" CssClass="label" />
                        <asp:TextBox ID="LastNameTB" runat="server"  CssClass="TextBoxCss"/>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="LastNameTB" ErrorMessage="Field Required" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="EmailLabel" runat="server" Text="Email:" Width="200" CssClass="label" />
                        <asp:TextBox ID="EmailTB" runat="server"  CssClass="TextBoxCss"/>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailTB" ErrorMessage="Field Required" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="PhoneNumberLabel" runat="server" Text="Phone Number:" Width="200" CssClass="label" />
                        <asp:TextBox ID="PhoneNumberTB" runat="server"  CssClass="TextBoxCss"/>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="PhoneNumberTB" ErrorMessage="Field Required" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="CountryLabel" runat="server" Text="Country:" Width="200" CssClass="label" />
                        <asp:TextBox ID="CountryTB" runat="server"  CssClass="TextBoxCss"/>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="CountryTB" ErrorMessage="Field Required" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="ProvinceLabel" runat="server" Text="Province:" Width="200" CssClass="label" />
                        <asp:TextBox ID="ProvinceTB" runat="server"  CssClass="TextBoxCss"/>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ProvinceTB" ErrorMessage="Field Required" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="AddressLabel" runat="server" Text="Address:" Width="200" CssClass="label" />
                        <asp:TextBox ID="AddressTB" runat="server"  CssClass="TextBoxCss"/>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="AddressTB" ErrorMessage="Field Required" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="PostalCodeLabel" runat="server" Text="Postal Code:" Width="200" CssClass="label" />
                        <asp:TextBox ID="PostalCodeTB" runat="server"  CssClass="TextBoxCss"/>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="PostalCodeTB" ErrorMessage="Field Required" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LicenseNumberLabel" runat="server" Text="License Number:" Width="200" CssClass="label" />
                        <asp:TextBox ID="LicenseNumberTB" runat="server"  CssClass="TextBoxCss"/>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="LicenseNumberTB" ErrorMessage="Field Required" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="CreateAccountBN" runat="server" Text="Create Account" OnClick="CreateCustomer_Click" CssClass="Btn"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Cancel" OnClick="Cancel_Click" CssClass="Btn"  CausesValidation="false"/>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
