<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CancelReservation.aspx.cs" Inherits="OLS_PROJECT.Views.CancelReservation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:GridView ID="gvRentals" runat="server" />
            <asp:Label ID="noRentalsLabel" runat="server" Text="No Reservations Exist!" Visible="false"></asp:Label>
            <br />
            <asp:Label ID="deleteRentalLabel" runat="server" Text="Enter Rental ID to Delete Reservation:"></asp:Label>
            <br />
            <asp:TextBox ID="deleteRentalTextBox" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="deleteRentalButton" runat="server" Text="Delete Reservation" />
        </div>
    </form>
</body>
</html>
