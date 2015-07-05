<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="viajes.aspx.vb" Inherits="Titanes1.viajes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    


   

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <table>

        <tr><td><div> <asp:Calendar ID="FSalida" runat="server"></asp:Calendar></div>
            <asp:TextBox ID="FechaSalida" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="RangeValidator"></asp:RangeValidator>  
            </td>
            <td>
                <asp:Calendar ID="FVuelta" runat="server"></asp:Calendar>
                <asp:TextBox ID="FechaVuelta" runat="server"></asp:TextBox>
                  
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator"></asp:CompareValidator>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Button" /></td>
        </tr>
    </table>
   
</asp:Content>
