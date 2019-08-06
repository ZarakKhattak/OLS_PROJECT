<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReservationCreation.aspx.cs" Inherits="OLS_PROJECT.Views.ReservationCreation" %>

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
                        <asp:Label ID="CustomerIDLabel" runat="server" Text="Customer ID:" Width="200" />
                        <asp:TextBox ID="CustomerIDTB" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="StartDateLabel" runat="server" Text="Start Date:" Width="200" />
                        <asp:Calendar ID="StartDateCal" runat="server"  />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="EndDateLabel" runat="server" Text="End Date:" Width="200" />
                        <asp:Calendar ID="EndDateCal" runat="server"  />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LicensePlateLabel" runat="server" Text="License Plate:" Width="200" />
                        <asp:TextBox ID="LicensePlateTB" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="CreateReservationBN" runat="server" Text="Create Reservation" OnClick="CreateReservationBN_Click" Width="200" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="CancelBN" runat="server" Text="Cancel" OnClick="CancelBN_Click" Width="200" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="VehicleGrid" runat="server" />
                        <asp:Label ID="VehicleGridLabel" runat="server" Text="" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
