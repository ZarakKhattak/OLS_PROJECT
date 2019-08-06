<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateVehicleAndProperty.aspx.cs" Inherits="OLS_PROJECT.Views.CreateVehicleAndProperty" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" autocomplete="off">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="LicensePlateLabel" runat="server" Text="License Plate:" Width="150" />
                        <asp:TextBox ID="LicensePlateTB" runat="server" Width="150" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:RadioButtonList ID="CreateNewPropertyRadio" runat="server" OnSelectedIndexChanged="UpdateOptionsBasedOnRadio" AutoPostBack="true">
                            <asp:ListItem Text="Existing Vehicle Property" Selected="True" />
                            <asp:ListItem Text="New Vehicle Property" />
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <%-- create new --%>
                <tr>
                    <td>
                        <asp:Label ID="MakeLabel" runat="server" Text="Make:" Width="150" />
                        <asp:TextBox ID="MakeTB" runat="server" Width="150" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="ModelLabel" runat="server" Text="Model:" Width="150" />
                        <asp:TextBox ID="ModelTB" runat="server" Width="150" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="TypeLabel" runat="server" Text="Type:" Width="150" />
                        <asp:TextBox ID="TypeTB" runat="server" Width="150" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="DescriptionLabel" runat="server" Text="Description:" Width="150" />
                        <asp:TextBox ID="DescriptionTB" runat="server" Width="150" />
                    </td>
                </tr>
                <%-- use existing --%>
                <tr>
                    <td>
                        <asp:Label ID="MakeModelLabel" runat="server" Text="Make and Model:" Width="150" />
                        <asp:DropDownList ID="MakeModelDropDown" runat="server" Width="150" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="CreateVehicleBN" runat="server" Text="Create" Width="150" OnClick="CreateVehicleBN_Click"/>
                        <asp:Button ID="Cancel" runat="server" Text="Cancel" OnClick="Cancel_Click" Width="150" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
