<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="viajes.aspx.vb" Inherits="Titanes1.viajes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    


   

    <style type="text/css">
        .auto-style1 {
            width: 191px;
        }
    </style>
    
    


   

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <td>
   
    <table style="width: 100%">

        <tr><td class="auto-style1">
                <asp:Calendar ID="FSalida" runat="server"></asp:Calendar>
                <asp:TextBox ID="FechaSalida" runat="server"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="RangeValidator" ControlToValidate="FechaSalida"></asp:RangeValidator>  
            </td>
            <td class="auto-style1">
                <asp:Calendar ID="FVuelta" runat="server"></asp:Calendar>
                <asp:TextBox ID="FechaVuelta" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator" ControlToValidate="FechaVuelta"></asp:CompareValidator>
            </td>
            
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Button" />
            </td>
        </tr>
        <tr><td>
            <br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </td></tr>
    </table>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </td>
</asp:Content>
