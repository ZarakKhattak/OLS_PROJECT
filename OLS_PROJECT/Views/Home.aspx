<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="OLS_PROJECT.Views.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="padding: 10px;">
                <tr>
                    <td>
                        <asp:GridView ID="gvCust" runat="server" />

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="GridViewLabel" runat="server" Text="" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="AddReservation" runat="server" Text="Create a Reservation" OnClick="AddReservation_Click" Width="200" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="CancelReservation" runat="server" Text="Cancel a Reservation" OnClick="CancelReservation_Click" Width="200" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
