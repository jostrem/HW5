<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Wicked Easy Recipes<br />
        Using 5 ingredients or less!<br />
        <br />
        <strong>Home</strong> | New Recipie | About Us | Contact<br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Recipie Name" HeaderText="Recipie Name" SortExpression="Recipie Name" />
                <asp:BoundField DataField="Submitted By" HeaderText="Submitted By" SortExpression="Submitted By" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
