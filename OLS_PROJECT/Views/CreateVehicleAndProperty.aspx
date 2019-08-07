<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateVehicleAndProperty.aspx.cs" Inherits="OLS_PROJECT.Views.CreateVehicleAndProperty" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add new Vehicle</title>
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

        .radiobtn {
            text-align:left;
            float:left;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server" autocomplete="off">
        <div id="controls_div">
            <table>
                <tr>
                    <td>
                        <asp:Label ID="LicensePlateLabel" runat="server" Text="License Plate:" Width="150" CssClass="label"/>
                        <asp:TextBox ID="LicensePlateTB" runat="server" Width="150"  CssClass="TextBoxCss"/>
                    </td>
                </tr>
                <tr>
                    <td id="radiobtn">
                        <asp:RadioButtonList ID="CreateNewPropertyRadio" runat="server" OnSelectedIndexChanged="UpdateOptionsBasedOnRadio" AutoPostBack="true" CssClass="radiobtn">
                            <asp:ListItem Text="Existing Vehicle Property" Selected="True" />
                            <asp:ListItem Text="New Vehicle Property" />
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <%-- create new --%>
                <tr>
                    <td>
                        <asp:Label ID="MakeLabel" runat="server" Text="Make:" Width="150"  CssClass="label"/>
                        <asp:TextBox ID="MakeTB" runat="server" Width="150" CssClass="TextBoxCss"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="ModelLabel" runat="server" Text="Model:" Width="150"  CssClass="label"/>
                        <asp:TextBox ID="ModelTB" runat="server" Width="150" CssClass="TextBoxCss" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="TypeLabel" runat="server" Text="Type:" Width="150" CssClass="label" />
                        <asp:TextBox ID="TypeTB" runat="server" Width="150" CssClass="TextBoxCss" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="DescriptionLabel" runat="server" Text="Description:" Width="150" CssClass="label" />
                        <asp:TextBox ID="DescriptionTB" runat="server" Width="150" CssClass="TextBoxCss" />
                    </td>
                </tr>
                <%-- use existing --%>
                <tr>
                    <td>
                        <asp:Label ID="MakeModelLabel" runat="server" Text="Make and Model:" Width="150" CssClass="label" />
                        <asp:DropDownList ID="MakeModelDropDown" runat="server" Width="150" CssClass="dropdown"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="CreateVehicleBN" runat="server" Text="Create" Width="150" OnClick="CreateVehicleBN_Click" CssClass="Btn"/>
                        <asp:Button ID="Cancel" runat="server" Text="Cancel" OnClick="Cancel_Click" Width="150" CssClass="Btn"/>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
