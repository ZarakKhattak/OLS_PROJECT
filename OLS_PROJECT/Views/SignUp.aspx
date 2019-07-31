<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="OLS_PROJECT.Views.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="FirstNameLabel" runat="server" Text="First Name:" Width="200" />
                        <asp:TextBox ID="FirstNameTB" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LastNameLabel" runat="server" Text="Last Name:" Width="200" />
                        <asp:TextBox ID="LastNameTB" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="EmailLabel" runat="server" Text="Email:" Width="200" />
                        <asp:TextBox ID="EmailTB" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="PhoneNumberLabel" runat="server" Text="Phone Number:" Width="200" />
                        <asp:TextBox ID="PhoneNumberTB" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="CountryLabel" runat="server" Text="Country:" Width="200" />
                        <asp:TextBox ID="CountryTB" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="ProvinceLabel" runat="server" Text="Province:" Width="200" />
                        <asp:TextBox ID="ProvinceTB" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="AddressLabel" runat="server" Text="Address:" Width="200" />
                        <asp:TextBox ID="AddressTB" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="PostalCodeLabel" runat="server" Text="Postal Code:" Width="200" />
                        <asp:TextBox ID="PostalCodeTB" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LicenseNumberLabel" runat="server" Text="License Number:" Width="200" />
                        <asp:TextBox ID="LicenseNumberTB" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="CreateAccountBN" runat="server" Text="Create Account" OnClick="CreateCustomer_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
