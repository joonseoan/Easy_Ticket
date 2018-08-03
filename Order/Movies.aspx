<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Movies.aspx.cs" Inherits="Movie_Ticket_Project.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style = "background-color: bisque">

    <h1 style="background-color: aquamarine;">Please, insert new movies.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h1>
    <br />

    <form id="form1" runat="server">
        <div style ="text-align: center;">

            <asp:ScriptManager ID="ScriptManager1" runat="server" />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>

            Movie Title:
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
                    <br />
                    Genre:&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Width="148px">
            </asp:DropDownList>
            <br />
            <br />
            Director:
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            Cast1: <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            Cast2:
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            Cast3:
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            Duration: <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
                    Grade:&nbsp;&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
            </asp:DropDownList>
            <br />
            &nbsp;<br />
            Synopsis:&nbsp;<asp:TextBox ID="TextBox7" runat="server" Height="87px" TextMode="MultiLine" Width="285px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" BackColor="#0000CC" BorderStyle="None" Font-Bold="True" Font-Italic="True" ForeColor="Yellow" />
            &nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" BackColor="Red" BorderStyle="None" Font-Bold="True" Font-Italic="True" ForeColor="White" Text="Lotout" OnClick="Button2_Click" />
        
                </ContentTemplate>
            </asp:UpdatePanel>
                
        </div>
    </form>
</body>
</html>
