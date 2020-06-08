<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dontUseSqldatasource.aspx.cs" Inherits="dontUseSqldatasource" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        .center { margin: auto;

                  width: 50%;

                  border: 3px solid green;

                  padding: 10px; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="FacSSN" runat="server" Text="FacSSN："></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="FacFirstName" runat="server" Text="FacFirstName:"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="FacLastName" runat="server" Text="FacLastName:"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="FacCity" runat="server" Text="FacCity:"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="FacState" runat="server" Text="FacState:"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="FacDept" runat="server" Text="FacDept:"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="FacRank" runat="server" Text="FacRank:"></asp:Label>
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="FacSalary" runat="server" Text="FacSalary:"></asp:Label>
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="FacSupervisor" runat="server" Text="FacSupervisor:"></asp:Label>
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="FacHireDate" runat="server" Text="FacHireDate:"></asp:Label>
            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="FacZipCode" runat="server" Text="FacZipCode:"></asp:Label>
            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
        </div>
    </form>
</body>
</html>
