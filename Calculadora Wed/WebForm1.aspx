<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Calculadora_Wed.WebForm1" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 46px">
    <form id="form1" runat="server">
            <h1>CALCULADORA WEB</h1>
        <asp:Label ID="Label1" runat="server" Text="Numero 1"></asp:Label>
        :<asp:TextBox ID="Tnum1" runat="server" Height="16px" style="margin-left: 11px" Width="90px"></asp:TextBox>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Numero 2:"></asp:Label>
            <asp:TextBox ID="Tnum2" runat="server" Height="16px" style="margin-left: 11px" Width="90px"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Resultado:"></asp:Label>
&nbsp;
            <asp:Label ID="Lresultado" runat="server" Text="0"></asp:Label>
        </p>
        <p>
&nbsp;&nbsp;
            &nbsp;<asp:DropDownList ID="doperaciones" runat="server">
                <asp:ListItem>Suma</asp:ListItem>
                <asp:ListItem>Resta</asp:ListItem>
                <asp:ListItem>Multiplicacion</asp:ListItem>
                <asp:ListItem>Division</asp:ListItem>
                <asp:ListItem>x2</asp:ListItem>
                <asp:ListItem>exp</asp:ListItem>
                <asp:ListItem>10x</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 253px" Text="=" Width="313px" />
        </p>
    </form>
    </body>
</html>