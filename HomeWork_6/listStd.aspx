<%@ Page Language="C#" AutoEventWireup="true" CodeFile="listStd.aspx.cs" Inherits="listStd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT Student.*,Course.CourseNo,Course.CrsDesc FROM [Student],[Course],[enrollment],[offering] where course.CourseNo=@no and student.stdSSN=enrollment.stdSSN and enrollment.OfferNo=offering.OfferNo and offering.CourseNo=course.CourseNo">
                <SelectParameters>
                    <asp:ControlParameter  Name="no" controlId="DropDownList1" propertyname="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Course]"></asp:SqlDataSource>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="CrsDesc" DataValueField="CourseNo">
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确定" />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None">
                <EmptyDataTemplate>
            暂无数据！
</EmptyDataTemplate>
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="StdSSN" HeaderText="StdSSN" SortExpression="StdSSN" />
                    <asp:BoundField DataField="StdFirstName" HeaderText="StdFirstName" SortExpression="StdFirstName" />
                    <asp:BoundField DataField="StdLastName" HeaderText="StdLastName" SortExpression="StdLastName" />
                    <asp:BoundField DataField="StdCity" HeaderText="StdCity" SortExpression="StdCity" />
                    <asp:BoundField DataField="StdState" HeaderText="StdState" SortExpression="StdState" />
                    <asp:BoundField DataField="StdMajor" HeaderText="StdMajor" SortExpression="StdMajor" />
                    <asp:BoundField DataField="StdClass" HeaderText="StdClass" SortExpression="StdClass" />
                    <asp:BoundField DataField="StdGPA" HeaderText="StdGPA" SortExpression="StdGPA" />
                    <asp:BoundField DataField="StdZip" HeaderText="StdZip" SortExpression="StdZip" />
                    <asp:BoundField DataField="CourseNo" HeaderText="CourseNo" SortExpression="CourseNo" />
                    <asp:BoundField DataField="CrsDesc" HeaderText="CrsDesc" SortExpression="CrsDesc" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <br />
        </div>
    </form>

</body>
</html>
