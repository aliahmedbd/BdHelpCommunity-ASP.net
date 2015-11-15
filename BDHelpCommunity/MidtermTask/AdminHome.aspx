<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="MidtermTask.AdminHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="CSS/Home.css" type="text/css" /> 
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="header">
            <div class="header1">
                <div class="header11">&nbsp;</div>
                <div class="header12">
                    <asp:Menu ID="MenuProfile" runat="server" BackColor="#FFFBD6" DynamicHorizontalOffset="2" Font-Bold="False" Font-Names="Verdana" Font-Size="XX-Small" ForeColor="#990000" OnMenuItemClick="MenuProfile_MenuItemClick" StaticSubMenuIndent="10px">
                        <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
                        <DynamicMenuItemStyle HorizontalPadding="0px" VerticalPadding="0px" />
                        <DynamicMenuStyle BackColor="#FFFBD6" />
                        <DynamicSelectedStyle BackColor="#FFCC66" />
                        <Items>
                            <asp:MenuItem Text="Ali Ahmed" Value="menuNmae">
                                <asp:MenuItem NavigateUrl="~/Profile.aspx" Text="View Profile" Value="View Profile"></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/LogIn.aspx" Text="Log Out" Value="Log Out"></asp:MenuItem>
                            </asp:MenuItem>
                        </Items>
                        <StaticHoverStyle BackColor="#990000" ForeColor="White" />
                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <StaticSelectedStyle BackColor="#FFCC66" />
                    </asp:Menu>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
            </div>
            <div class="header2">
                <div class="header21"> <h3> BD Help Community</h3></div>
                <div class="header22">
                    <asp:Menu ID="Menu1" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#7C6F57" StaticSubMenuIndent="10px">
                        <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <DynamicMenuStyle BackColor="#F7F6F3" />
                        <DynamicSelectedStyle BackColor="#5D7B9D" />
                        <Items>
                            <asp:MenuItem Text="Report" Value="Report">
                                <asp:MenuItem NavigateUrl="~/Report1.aspx" Text="Best Questions" Value="Best Questions"></asp:MenuItem>
                                <asp:MenuItem Text="Best hiting Users" Value="Best hiting Users" NavigateUrl="~/BestUsers.aspx"></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/TopAnsweredQuestion.aspx" Text="Top Answered Question" Value="Top Answered Question"></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/UnAnsweredQuestion.aspx" Text="Unanswered Questions" Value="Unanswered Questions"></asp:MenuItem>
                            </asp:MenuItem>
                        </Items>
                        <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <StaticSelectedStyle BackColor="#5D7B9D" />
                    </asp:Menu>
                    </div>
            </div>
            <div class="header3">
                
                <asp:Button ID="btnAskQuestion" runat="server" OnClick="btnAskQuestion_Click" Text="Ask A Question" />
                
            </div>
        </div>
        <div class="content">
            <div class="content1">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
<!--
                <div class="content11"></div>
                <div class="content11"></div>
                <div class="content11"></div>
                <div class="content11"></div>
                <div class="content11"></div>
                <div class="content11"></div>
                <div class="content11"></div>
                <div class="content11"></div>
                <div class="content11"></div>
 -->   
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
                <div style="margin-left: 40px">
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="QuestionId" OnRowDeleting="RowDelete" >
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:CommandField ShowDeleteButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                </div>            
            </div>
            <div class="content2"></div>
        </div>
        <div class="foter"></div>
    </div>
    </form>
</body>
</html>
