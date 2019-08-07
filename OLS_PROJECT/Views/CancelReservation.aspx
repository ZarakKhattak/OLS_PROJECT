<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CancelReservation.aspx.cs" Inherits="OLS_PROJECT.Views.CancelReservation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cancel Reservation</title>
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
            border: 3px solid #181818;
            border-radius: 3px;
            margin: 2px;
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
    <form id="form1" runat="server" autocomplete="off">
        <div id="controls_div">
            <table>
                <tr>
                    <td>
                        <asp:Label ID="noRentalsLabel" runat="server" Text="No Reservations Exist!" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="deleteRentalLabel" runat="server" Text="Enter Rental ID to Delete Reservation:" />
                        <asp:TextBox ID="deleteRentalTextBox" runat="server" Width="150" CssClass="TextBoxCss" />
                        <br />
                        <asp:RequiredFieldValidator ID="val" runat="server" ControlToValidate="deleteRentalTextBox" ErrorMessage="Field Required" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="deleteRentalButton" runat="server" Text="Delete Reservation" Width="170px" OnClick="deleteRentalButton_Click" CssClass="Btn"/>
                        <asp:Button ID="CancelButton" runat="server" Text="Cancel" Width="170px" OnClick="CancelButton_Click" CssClass="Btn" CausesValidation="false" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="gvRentals" runat="server" CellPadding="10" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>