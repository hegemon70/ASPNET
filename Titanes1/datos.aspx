<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="datos.aspx.vb" Inherits="Titanes1.datos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <td>
        <table><tr>
            <td>
                <asp:label runat="server" text=page.session("FechaSalida")></asp:label>

            </td>

               </tr>

        </table>
    
    </td>
        
</asp:Content>
