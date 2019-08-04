<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="OLS_PROJECT.Views.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rental Login</title>
    <style type="text/css">

        html {
            background: #1A1A1A;
            height: 100vh;
        }

        body {
            min-height: 100vh;
            margin: 0;
        }

        #control_table {
            background-color: #2F2F2F;
            width: 230px;
            text-align: center;
            display:inline-block;
            min-height: 100vh;
        }

        #main_div {
            min-height: 100vh;
        }

        #grid_view_div {
            display: inline-block;
            height: 100vh;
            color: #AFAFAF;
        }

        .NavBtn {
            border-style:solid;
            border-radius: 3px;
            border-width:3px;
            margin: 2px;
        }

        #title {
            color: white;
            font-family:'Segoe UI', 'Tahoma', 'Geneva', 'Verdana', 'sans-serif';
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="main_div">
            <table id="control_table">
                <tr>
                    <td>
                        <h1 id="title">Car Rental</h1>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="CreateCustomer" runat="server" Text="Create Customer Profile" OnClick="CreateCustomer_Click" Width="220" CssClass="NavBtn" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="AddReservation" runat="server" Text="Create Reservation" OnClick="AddReservation_Click" Width="220" CssClass="NavBtn" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="CancelReservation" runat="server" Text="Cancel Reservation" OnClick="CancelReservation_Click" Width="220" CssClass="NavBtn" />
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <asp:Button ID="Logout" runat="server" Text="Logout" OnClick="Logout_Click" Width="220" CssClass="NavBtn" />
                    </td>
                </tr>
            </table>
            <div id="grid_view_div">
                <asp:GridView ID="gvCust" runat="server" CellPadding="5" HorizontalAlign="Center" />
                <asp:Label ID="GridViewLabel" runat="server" Text="" />
            </div>
        </div>
    </form>
</body>
</html>
