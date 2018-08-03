<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Service.aspx.cs" Inherits="Movie_Ticket_Project.WebForm4" EnableSessionState="True" %>

<!DOCTYPE html >

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color: black;">
    <form id="form1" runat="server" autocomplete="on">
        <div style="text-align: center;">

        <!-- 
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
             <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                 <ContentTemplate>
            -->
                            <h1 id ="title" style = "text-align: center; color: #00FF00; font-family: Verdana, Geneva, Tahoma, sans-serif; font-weight: bolder; font-size: 40px; font-style: normal; text-decoration: blink;" runat="server"></h1>

                                &nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="We Picked For You" BackColor="#000066" BorderStyle="None" Font-Bold="True" Font-Italic="True" ForeColor="White" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button1" runat="server" Text="All Movies" OnClick="Button1_Click" BackColor="#006600" BorderStyle="None" Font-Bold="True" Font-Italic="True" ForeColor="White" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button3" runat="server" BackColor="#FFFF66" BorderStyle="None" Font-Italic="True" OnClick="Button3_Click" Text="Logout" />
                                <br />
                    &nbsp;<br />
                                 <asp:Table ID="Table1" runat="server" BackColor="Black" ForeColor="White" HorizontalAlign="Center"></asp:Table>

                                <br />
             <!--   </ContentTemplate>
             </asp:UpdatePanel> -->
        </div>
        

    </form>

   
            
   
</body>
</html>
