<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Billing.aspx.cs" Inherits="Order.Billing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
     <form id="form1" runat="server">
  <div>

        <asp:ScriptManager ID="ScriptManager1" runat="server" />
             <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                 <ContentTemplate>

        
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <br />
                <br />
                Seat Categories:
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>Please, Select Seat......</asp:ListItem>
                    <asp:ListItem Value="Standard">Standard : + $0</asp:ListItem>
                    <asp:ListItem Value="Premium">Premium: + $5</asp:ListItem>
                    <asp:ListItem Value="VIP">VIP: + $10</asp:ListItem>
                </asp:DropDownList>
                <br />
                Number of Tickets:
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="1" />
        &nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="2" />
        &nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="3" />
        &nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="4" />
        &nbsp;&nbsp;
                <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="+" />
                <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
            <br />
            <br />
                     Check (Bill)&nbsp; --------------------------------------<br />
            <br />
            Movie Title :
            <asp:Label ID="Label5" runat="server"></asp:Label>
            <br />
                     <br />
            Ticket Price:
            <asp:Label ID="Label11" runat="server"></asp:Label>
            <br />
            Seat Categories: <asp:Label ID="Label7" runat="server"></asp:Label>
                      &nbsp;<br />
            Total Ticket Price : <asp:Label ID="Label8" runat="server"></asp:Label>
            <br />
            <br />
            Number of Tickets:
            <asp:Label ID="Label6" runat="server"></asp:Label>
            <br />
            <br />
            Sub Total: <asp:Label ID="Label2" runat="server"></asp:Label>
            <br />
            Total Price :&nbsp;
            <asp:Label ID="Label9" runat="server"></asp:Label>
                     &nbsp;(13% HST inclusive)<br />
            <br />


     


            Confirm Your Order<asp:CheckBox ID="CheckBox1" runat="server" />
            <br />
            <asp:Label ID="Label4" runat="server"></asp:Label>



                </ContentTemplate>
            </asp:UpdatePanel>
        
                
        </div>

        <br />
        <asp:Button ID="Button6" runat="server" Text="Button" OnClick="Button6_Click" />
        <br />
        <br />
    </form>
</body>
</html>
