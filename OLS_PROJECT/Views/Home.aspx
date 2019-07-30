<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="OLS_PROJECT.Views.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>


            <asp:Button ID="btn_tmp" runat="server" Text="Get Employees" OnClick="btn_tmp_Click1" />
            <br />
            <asp:GridView ID="gvCust" runat="server">
            </asp:GridView>

        </div>
    </form>
</body>
</html>
