<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Movie_Ticket_Project.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color: black;">

    <div style="text-align: center; color: white;">
        <div>

            <h1 style="color: red; font-size: 60px">Welcome to TicketEasy!</h1>

        </div>

        <form id="form1" runat="server">
       
            <div>
            </div>
            <br />
            <asp:Image ID="Image1" runat="server" Height="300px" Width="300px" />
            <br />
            <br />
            <asp:Label ID="email" runat="server" Text="Email"></asp:Label>
            :
            <asp:TextBox ID="TextBox1" runat="server" autofocus></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="password" runat="server" Text="Password"></asp:Label>
            :
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please, fill out email ID" ForeColor="#FF66FF"></asp:RequiredFieldValidator>
&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" ForeColor="#FF66FF"></asp:Label>
            &nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="You must enter &quot;email&quot;" ForeColor="#FF66FF" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please, fill out your password" ForeColor="#FF66FF"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="submit" runat="server" Text="Singin" OnClick="submit_Click" BackColor="#400080" BorderStyle="None" Font-Bold="True" Font-Italic="True" ForeColor="White" />
       
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="signup" runat="server" Text="Singup" OnClick="signup_Click" BackColor="#003300" BorderStyle="None" Font-Bold="True" Font-Italic="True" ForeColor="White" />
            &nbsp;
            <br />
            <br />
            <asp:CheckBox ID="CheckBox1" runat="server" Text="I am an administrator" ForeColor="#CCCCCC" />
            <p>
                &nbsp;</p>
       
            </form>
        </div>
</body>
</html>
