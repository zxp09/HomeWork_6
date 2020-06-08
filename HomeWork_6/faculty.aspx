<%@ Page Language="C#" AutoEventWireup="true" CodeFile="faculty.aspx.cs" Inherits="faculty" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
                SelectCommand="SELECT * FROM [Faculty]"
                InsertCommand="INSERT INTO [Faculty] ([FacSSN], [FacFirstName], [FacLastName], [FacCity], [FacState], [FacDept], [FacRank], [FacSalary], [FacSupervisor], [FacHireDate], [FacZipCode]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
                UpdateCommand="UPDATE [Faculty] SET [FacFirstName] = ?, [FacLastName] = ?, [FacCity] = ?, [FacState] = ?, [FacDept] = ?, [FacRank] = ?, [FacSalary] = ?, [FacSupervisor] = ?, [FacHireDate] = ?, [FacZipCode] = ? WHERE [FacSSN] = ?" DeleteCommand="DELETE FROM [Faculty] WHERE [FacSSN] = ?" OldValuesParameterFormatString="original_{0}" OnSelecting="SqlDataSource1_Selecting">
                <FilterParameters></FilterParameters>
                <DeleteParameters>
                    <asp:Parameter Name="original_FacSSN" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="FacSSN" Type="String" />
                    <asp:Parameter Name="FacFirstName" Type="String" />
                    <asp:Parameter Name="FacLastName" Type="String" />
                    <asp:Parameter Name="FacCity" Type="String" />
                    <asp:Parameter Name="FacState" Type="String" />
                    <asp:Parameter Name="FacDept" Type="String" />
                    <asp:Parameter Name="FacRank" Type="String" />
                    <asp:Parameter Name="FacSalary" Type="Single" />
                    <asp:Parameter Name="FacSupervisor" Type="String" />
                    <asp:Parameter Name="FacHireDate" Type="DateTime" />
                    <asp:Parameter Name="FacZipCode" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FacFirstName" Type="String" />
                    <asp:Parameter Name="FacLastName" Type="String" />
                    <asp:Parameter Name="FacCity" Type="String" />
                    <asp:Parameter Name="FacState" Type="String" />
                    <asp:Parameter Name="FacDept" Type="String" />
                    <asp:Parameter Name="FacRank" Type="String" />
                    <asp:Parameter Name="FacSalary" Type="Single" />
                    <asp:Parameter Name="FacSupervisor" Type="String" />
                    <asp:Parameter Name="FacHireDate" Type="DateTime" />
                    <asp:Parameter Name="FacZipCode" Type="String" />
                    <asp:Parameter Name="original_FacSSN" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Faculty] WHERE (([FacCity] LIKE '%' + ? + '%') AND ([FacLastName] LIKE '%' + ? + '%'))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox2" Name="FacCity" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox1" Name="FacLastName" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Label ID="Label2" runat="server" Text="city:"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="firstname:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <br />
            <br />
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="FacSSN" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
                <AlternatingItemTemplate>
                    <li style="background-color: #FFF8DC;">FacSSN:
                        <asp:Label ID="FacSSNLabel" runat="server" Text='<%# Eval("FacSSN") %>' />
                        <br />
                        FacFirstName:
                        <asp:Label ID="FacFirstNameLabel" runat="server" Text='<%# Eval("FacFirstName") %>' />
                        <br />
                        FacLastName:
                        <asp:Label ID="FacLastNameLabel" runat="server" Text='<%# Eval("FacLastName") %>' />
                        <br />
                        FacCity:
                        <asp:Label ID="FacCityLabel" runat="server" Text='<%# Eval("FacCity") %>' />
                        <br />
                        FacState:
                        <asp:Label ID="FacStateLabel" runat="server" Text='<%# Eval("FacState") %>' />
                        <br />
                        FacDept:
                        <asp:Label ID="FacDeptLabel" runat="server" Text='<%# Eval("FacDept") %>' />
                        <br />
                        FacRank:
                        <asp:Label ID="FacRankLabel" runat="server" Text='<%# Eval("FacRank") %>' />
                        <br />
                        FacSalary:
                        <asp:Label ID="FacSalaryLabel" runat="server" Text='<%# Eval("FacSalary") %>' />
                        <br />
                        FacSupervisor:
                        <asp:Label ID="FacSupervisorLabel" runat="server" Text='<%# Eval("FacSupervisor") %>' />
                        <br />
                        FacHireDate:
                        <asp:Label ID="FacHireDateLabel" runat="server" Text='<%# Eval("FacHireDate") %>' />
                        <br />
                        FacZipCode:
                        <asp:Label ID="FacZipCodeLabel" runat="server" Text='<%# Eval("FacZipCode") %>' />
                        <br />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                    </li>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <li style="background-color: #008A8C;color: #FFFFFF;">FacSSN:
                        <asp:Label ID="FacSSNLabel1" runat="server" Text='<%# Eval("FacSSN") %>' />
                        <br />
                        FacFirstName:
                        <asp:TextBox ID="FacFirstNameTextBox" runat="server" Text='<%# Bind("FacFirstName") %>' />
                        <br />
                        FacLastName:
                        <asp:TextBox ID="FacLastNameTextBox" runat="server" Text='<%# Bind("FacLastName") %>' />
                        <br />
                        FacCity:
                        <asp:TextBox ID="FacCityTextBox" runat="server" Text='<%# Bind("FacCity") %>' />
                        <br />
                        FacState:
                        <asp:TextBox ID="FacStateTextBox" runat="server" Text='<%# Bind("FacState") %>' />
                        <br />
                        FacDept:
                        <asp:TextBox ID="FacDeptTextBox" runat="server" Text='<%# Bind("FacDept") %>' />
                        <br />
                        FacRank:
                        <asp:TextBox ID="FacRankTextBox" runat="server" Text='<%# Bind("FacRank") %>' />
                        <br />
                        FacSalary:
                        <asp:TextBox ID="FacSalaryTextBox" runat="server" Text='<%# Bind("FacSalary") %>' />
                        <br />
                        FacSupervisor:
                        <asp:TextBox ID="FacSupervisorTextBox" runat="server" Text='<%# Bind("FacSupervisor") %>' />
                        <br />
                        FacHireDate:
                        <asp:TextBox ID="FacHireDateTextBox" runat="server" Text='<%# Bind("FacHireDate") %>' />
                        <br />
                        FacZipCode:
                        <asp:TextBox ID="FacZipCodeTextBox" runat="server" Text='<%# Bind("FacZipCode") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                    </li>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    未返回数据。
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <li style="">FacSSN:
                        <asp:TextBox ID="FacSSNTextBox" runat="server" Text='<%# Bind("FacSSN") %>' />
                        <br />
                        FacFirstName:
                        <asp:TextBox ID="FacFirstNameTextBox" runat="server" Text='<%# Bind("FacFirstName") %>' />
                        <br />
                        FacLastName:
                        <asp:TextBox ID="FacLastNameTextBox" runat="server" Text='<%# Bind("FacLastName") %>' />
                        <br />
                        FacCity:
                        <asp:TextBox ID="FacCityTextBox" runat="server" Text='<%# Bind("FacCity") %>' />
                        <br />
                        FacState:
                        <asp:TextBox ID="FacStateTextBox" runat="server" Text='<%# Bind("FacState") %>' />
                        <br />
                        FacDept:
                        <asp:TextBox ID="FacDeptTextBox" runat="server" Text='<%# Bind("FacDept") %>' />
                        <br />
                        FacRank:
                        <asp:TextBox ID="FacRankTextBox" runat="server" Text='<%# Bind("FacRank") %>' />
                        <br />
                        FacSalary:
                        <asp:TextBox ID="FacSalaryTextBox" runat="server" Text='<%# Bind("FacSalary") %>' />
                        <br />
                        FacSupervisor:
                        <asp:TextBox ID="FacSupervisorTextBox" runat="server" Text='<%# Bind("FacSupervisor") %>' />
                        <br />
                        FacHireDate:
                        <asp:TextBox ID="FacHireDateTextBox" runat="server" Text='<%# Bind("FacHireDate") %>' />
                        <br />
                        FacZipCode:
                        <asp:TextBox ID="FacZipCodeTextBox" runat="server" Text='<%# Bind("FacZipCode") %>' />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                    </li>
                </InsertItemTemplate>
                <ItemSeparatorTemplate>
                    <br />
                </ItemSeparatorTemplate>
                <ItemTemplate>
                    <li style="background-color: #DCDCDC;color: #000000;">FacSSN:
                        <asp:Label ID="FacSSNLabel" runat="server" Text='<%# Eval("FacSSN") %>' />
                        <br />
                        FacFirstName:
                        <asp:Label ID="FacFirstNameLabel" runat="server" Text='<%# Eval("FacFirstName") %>' />
                        <br />
                        FacLastName:
                        <asp:Label ID="FacLastNameLabel" runat="server" Text='<%# Eval("FacLastName") %>' />
                        <br />
                        FacCity:
                        <asp:Label ID="FacCityLabel" runat="server" Text='<%# Eval("FacCity") %>' />
                        <br />
                        FacState:
                        <asp:Label ID="FacStateLabel" runat="server" Text='<%# Eval("FacState") %>' />
                        <br />
                        FacDept:
                        <asp:Label ID="FacDeptLabel" runat="server" Text='<%# Eval("FacDept") %>' />
                        <br />
                        FacRank:
                        <asp:Label ID="FacRankLabel" runat="server" Text='<%# Eval("FacRank") %>' />
                        <br />
                        FacSalary:
                        <asp:Label ID="FacSalaryLabel" runat="server" Text='<%# Eval("FacSalary") %>' />
                        <br />
                        FacSupervisor:
                        <asp:Label ID="FacSupervisorLabel" runat="server" Text='<%# Eval("FacSupervisor") %>' />
                        <br />
                        FacHireDate:
                        <asp:Label ID="FacHireDateLabel" runat="server" Text='<%# Eval("FacHireDate") %>' />
                        <br />
                        FacZipCode:
                        <asp:Label ID="FacZipCodeLabel" runat="server" Text='<%# Eval("FacZipCode") %>' />
                        <br />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                    </li>
                </ItemTemplate>
                <LayoutTemplate>
                    <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <li runat="server" id="itemPlaceholder" />
                    </ul>
                    <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">FacSSN:
                        <asp:Label ID="FacSSNLabel" runat="server" Text='<%# Eval("FacSSN") %>' />
                        <br />
                        FacFirstName:
                        <asp:Label ID="FacFirstNameLabel" runat="server" Text='<%# Eval("FacFirstName") %>' />
                        <br />
                        FacLastName:
                        <asp:Label ID="FacLastNameLabel" runat="server" Text='<%# Eval("FacLastName") %>' />
                        <br />
                        FacCity:
                        <asp:Label ID="FacCityLabel" runat="server" Text='<%# Eval("FacCity") %>' />
                        <br />
                        FacState:
                        <asp:Label ID="FacStateLabel" runat="server" Text='<%# Eval("FacState") %>' />
                        <br />
                        FacDept:
                        <asp:Label ID="FacDeptLabel" runat="server" Text='<%# Eval("FacDept") %>' />
                        <br />
                        FacRank:
                        <asp:Label ID="FacRankLabel" runat="server" Text='<%# Eval("FacRank") %>' />
                        <br />
                        FacSalary:
                        <asp:Label ID="FacSalaryLabel" runat="server" Text='<%# Eval("FacSalary") %>' />
                        <br />
                        FacSupervisor:
                        <asp:Label ID="FacSupervisorLabel" runat="server" Text='<%# Eval("FacSupervisor") %>' />
                        <br />
                        FacHireDate:
                        <asp:Label ID="FacHireDateLabel" runat="server" Text='<%# Eval("FacHireDate") %>' />
                        <br />
                        FacZipCode:
                        <asp:Label ID="FacZipCodeLabel" runat="server" Text='<%# Eval("FacZipCode") %>' />
                        <br />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                    </li>
                </SelectedItemTemplate>
            </asp:ListView>
            <br />
        </div>
    </form>
</body>
</html>
