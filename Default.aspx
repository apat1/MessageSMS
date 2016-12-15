<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="MessageSMS._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <p>
        Gmail Account:
        &nbsp;&nbsp;
        <asp:TextBox ID="gmailTxt" runat="server"></asp:TextBox>
    </p>
    <p>
        Password:
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="passTxt" TextMode="Password" runat="server"></asp:TextBox>
    </p>
    <p>
        Phone Number:
        &nbsp;
        <asp:TextBox ID="phoneTxt" runat="server"></asp:TextBox>
    </p>
    <p>
        Provider:
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="providerList" runat="server">
            <asp:ListItem Selected="True" Value="TMOBILE">TMOBILE</asp:ListItem>
            <asp:ListItem>SPRINT</asp:ListItem>
            <asp:ListItem>VERIZON</asp:ListItem>
            <asp:ListItem>AT&amp;T</asp:ListItem>
        </asp:DropDownList>
        </p>
    <p>
        Short Message:
        &nbsp
        <asp:TextBox ID="msgTxt" runat="server"></asp:TextBox>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="sendBtn" runat="server" Text="Send" onclick="sendBtn_Click" />
        <asp:Button ID="saveBtn" runat="server" Text="Save Account" 
            onclick="saveBtn_Click" />
    </p>

</asp:Content>
