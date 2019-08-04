<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CancelReservation.aspx.cs" Inherits="OLS_PROJECT.Views.CancelReservation" %>

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
                        <asp:GridView ID="gvRentals" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="noRentalsLabel" runat="server" Text="No Reservations Exist!" Visible="false"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="deleteRentalLabel" runat="server" Text="Enter Rental ID to Delete Reservation:"></asp:Label>
                        <asp:TextBox ID="deleteRentalTextBox" runat="server" Width="150"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="deleteRentalButton" runat="server" Text="Delete Reservation" Width="150" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="CancelButton" runat="server" Text="Cancel" Width="150" OnClick="CancelButton_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
