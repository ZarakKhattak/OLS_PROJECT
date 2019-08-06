<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReservationCreation.aspx.cs" Inherits="OLS_PROJECT.Views.ReservationCreation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Reservation</title>
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
            margin: 2px 2px 2px 0px;
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

        .cal {
            display:inline-block;
        }

        .dropdown {
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
    <form id="form1" runat="server">
        <div id="controls_div">
            <table class="control_table">
                <tr>
                    <td>
                        <asp:Label ID="CustomerNameLabel" runat="server" Text="Customer Name:" Width="200" />
                        <asp:DropDownList ID="CustomerDropDown" runat="server" Width="200" CssClass="dropdown"/>
                    </td>
                    <td>
                        <asp:Label ID="LicensePlateLabel" runat="server" Text="Available Vehicles: " Width="200" />
                        <asp:DropDownList ID="LicensePlateDropDown" runat="server" Width="200" CssClass="dropdown"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="StartDateLabel" runat="server" Text="Start Date" Width="200" />
                        <br />
                        <asp:Calendar ID="StartDateCal" runat="server" CssClass="cal" OnSelectionChanged="CalanderDateChanged" ForeColor="White" BackColor="#1A1A1A"/>
                    </td>
                    <td>
                        <asp:Label ID="EndDateLabel" runat="server" Text="End Date" Width="200" />
                        <br />
                        <asp:Calendar ID="EndDateCal" runat="server" CssClass="cal" OnSelectionChanged="CalanderDateChanged" BackColor="#1A1A1A" ForeColor="White"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="CreateReservationBN" runat="server" Text="Create Reservation" OnClick="CreateReservationBN_Click" Width="339px" CssClass="Btn" />
                    </td>
                    <td>
                        <asp:Button ID="CancelBN" runat="server" Text="Cancel" OnClick="CancelBN_Click" Width="333px" CssClass="Btn" />
                    </td>
                </tr>
                </table>
        </div>
    </form>
</body>
</html>
