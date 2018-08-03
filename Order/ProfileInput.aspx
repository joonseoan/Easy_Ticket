<%@ Page maintainScrollPositionOnPostBack="true"  Language="C#" AutoEventWireup="true" CodeBehind="ProfileInput.aspx.cs" Inherits="Movie_Ticket_Project.WebForm2" %>
<!-- maintainScrollPositionOnPostBack="true" -->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>

<body style="background-color: blanchedalmond; text-align: center;">
    
     <h1 style="background-color: aquamarine;">Please, fill out the form below.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h1>
     <br />

    <form id="form1" runat="server">

        <div>

            <asp:ScriptManager ID="ScriptManager1" runat="server" />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
            
            <asp:Label ID="first_name" runat="server" Text="First Name" Font-Bold="True"></asp:Label>
            :
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="last_name" runat="server" Text="Last Name" Font-Bold="True"></asp:Label>
            :
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="first_name_validation" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Please, enter your first name." ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="last_name_validation" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Pleasse, enter your last name." ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="genger" runat="server" Text="Gender" Font-Bold="True"></asp:Label>
            :<asp:RadioButtonList style = "margin-left: auto; margin-right: auto;" ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="209px" BorderColor="#660033" BorderStyle="Solid" Font-Bold="True">
                <asp:ListItem Selected="True" Value="male">Male</asp:ListItem>
                <asp:ListItem Value="female">Female</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <br />
            <asp:Label ID="age" runat="server" Text="Age" Font-Bold="True"></asp:Label>
            :<asp:RadioButtonList style = "margin-left: auto; margin-right: auto;" ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" Font-Bold="True" BorderColor="Maroon" BorderStyle="Solid">
                <asp:ListItem Value="7">0 - 7</asp:ListItem>
                <asp:ListItem Value="13">8 - 13</asp:ListItem>
                <asp:ListItem Selected="True" Value="17">15 -17</asp:ListItem>
                <asp:ListItem Value="18">18 ~</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <br />
            <asp:Label ID="genre" runat="server" Text="Favorite Genre" Font-Bold="True"></asp:Label>
            :
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
            <br />
            <br />
            <br />
            <asp:Label ID="Label10" runat="server" Text="Favorite Director:" Font-Bold="True"></asp:Label>
&nbsp;<asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#000066"></asp:Label>
            &nbsp;<br />
            
            <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" Height="217px" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" Width="183px"></asp:ListBox>
            
            <br />
            
            <br />
            <br />
            <asp:Label ID="actor" runat="server" Text="Favorite Actor / Actress" Font-Bold="True"></asp:Label>
            :&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#000066"></asp:Label>
            <br />
            <asp:ListBox ID="ListBox2" runat="server" AutoPostBack="True" Height="224px" OnSelectedIndexChanged="ListBox2_SelectedIndexChanged" Width="187px"></asp:ListBox>
            <br />
            <br />
            <asp:Label ID="Label9" runat="server" ForeColor="Red"></asp:Label>
            <br />

            <asp:Label ID="email" runat="server" Text="Email" Font-Bold="True"></asp:Label>
            :
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="email_required_validation" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="Please, enter your email." ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="email_format_validation" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="It must be an email format." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label13" runat="server" Text="(It must be at least 8 letters)" Font-Size="8pt"></asp:Label>
            <br />
            <asp:Label ID="password1" runat="server" Text="Password" Font-Bold="True"></asp:Label>
            :
            <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="password1_required_validation" runat="server" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="Please, enter password." ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CustomValidator ID="size_validator" runat="server" ControlToValidate="TextBox6" ErrorMessage="It must be at least 8 characters. " ForeColor="Red"></asp:CustomValidator>
            <br />
            <br />
            <asp:Label ID="password2" runat="server" Text="Password (Confirm)" Font-Bold="True"></asp:Label>
            :
            <asp:TextBox ID="TextBox7" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="password2_required_validation" runat="server" ControlToValidate="TextBox7" Display="Dynamic" ErrorMessage="Please, enter password." ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="password2_compare_validation" runat="server" ControlToCompare="TextBox6" ControlToValidate="TextBox7" Display="Dynamic" ErrorMessage="It does not match with password above." ForeColor="Red"></asp:CompareValidator>
            <br />
            <br />
            

                </ContentTemplate>
            </asp:UpdatePanel>
                
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" BackColor="#003300" BorderColor="#000099" BorderStyle="None" Font-Bold="True" Font-Italic="True" ForeColor="White" />
            
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Back to Login" BackColor="Black" BorderStyle="None" Font-Bold="True" Font-Italic="True" ForeColor="White" />
            
        </div>
    </form>

    
</body>
</html>
