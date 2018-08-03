<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Description.aspx.cs" Inherits="Movie_Ticket_Project.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color: black;">
       
        <form id="form1" runat="server">
        
        <div style="text-align: center;">
        <div style="margin-top: 31px">
        <h1 id ="title" style = "text-align: center; color: #FF00FF; font-family: Magneto; font-weight: bolder; font-size: xx-large; font-style: italic; text-decoration: blink;" runat="server"></h1>
            <br />
            <asp:Image ID="Image1" runat="server" Height="80px" BorderColor="#CC0000" BorderStyle="Ridge" HorizontalAlign="center" />
             <br />
             <br />
             <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="False" Font-Overline="False" ForeColor="#FF66FF" Style ="text-align: left;" Font-Strikeout="False" Font-Underline="True"></asp:Label>
             <br />
            <br />
            <asp:Label ID="Label3" runat="server" ForeColor="White"></asp:Label>
            <br />
             <br />
             <asp:Label ID="Label1" runat="server" Font-Italic="True" ForeColor="#FFCC00"></asp:Label>
             <br />
             <br />
             <asp:Image ID="Image2" runat="server" />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" ForeColor="#CCCCCC" Text="($17.99)"></asp:Label>
            <br />
             <br />
        
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back To Recommendation" BackColor="#FF0066" BorderStyle="None" Font-Bold="True" Font-Italic="True" ForeColor="White" Width="170px" />
        
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button3" runat="server" Text="Order" BackColor="#6600CC" BorderStyle="None" Font-Bold="True" Font-Italic="True" ForeColor="White" Width="250px" OnClick="Button3_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
            <asp:Button ID="Button2" runat="server" Text="Back To All Movies" OnClick="Button2_Click" BackColor="#FF9900" BorderStyle="None" Font-Bold="True" Font-Italic="True" ForeColor="White" />
        
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" BackColor="White" BorderStyle="None" Font-Italic="True" OnClick="Button4_Click" Text="Logout" />
        
             <br />
             <br />
             <br />
             <br />
        </div>

    </div>


        </form>

        </body>
</html>
