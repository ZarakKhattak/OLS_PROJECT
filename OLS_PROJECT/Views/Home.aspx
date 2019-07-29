<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="OLS_PROJECT.Views.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="CurrentReservations" runat="server" AutoGenerateColumns="false" BackColor="White"
                BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4"
                OnPageIndexChanging="gvPerson_PageIndexChanging"
                OnRowCancelingEdit="gvPerson_RowCancelingEdit"
                OnRowDataBound="gvPerson_RowDataBound" OnRowDeleting="gvPerson_RowDeleting"
                OnRowEditing="gvPerson_RowEditing" OnRowUpdating="gvPerson_RowUpdating"
                OnSorting="gvPerson_Sorting">
                <RowStyle BackColor="White" ForeColor="003399" />
                <Columns>
                    <!-- <asp:CommandField ShowEditButton="true" /> -->
                    <!-- <asp:CommandField ShowDeleteButton="true" /> -->


                </Columns>


            </asp:GridView>
        </div>
    </form>
</body>
</html>
