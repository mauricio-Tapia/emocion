<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Administrador.aspx.vb" Inherits="Emocionalatte.Administrador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <style type="text/css">
.form-style-9{
	max-width: 900px;
	background: #FAFAFA;
	padding: 30px;
	margin: 50px auto;
	box-shadow: 1px 1px 25px rgba(0, 0, 0, 0.35);
	border-radius: 10px;
	border: 6px solid #dc9617;
}
.form-style-9 ul{
	padding:0;
	margin:0;
	list-style:none;
}
.form-style-9 ul li{
	display: block;
	margin-bottom: 10px;
	min-height: 35px;
}
.form-style-9 ul li  .field-style{
	box-sizing: border-box; 
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box; 
	padding: 8px;
	outline: none;
	border: 1px solid #B0CFE0;
	-webkit-transition: all 0.30s ease-in-out;
	-moz-transition: all 0.30s ease-in-out;
	/*-ms-transition: all 0.30s ease-in-out;*/
	-o-transition: all 0.30s ease-in-out;

}.form-style-9 ul li  .field-style:focus{
	box-shadow: 0 0 5px #B0CFE0;
	border:1px solid #B0CFE0;
}
.form-style-9 ul li .field-split{
	width: 49%;
}
.form-style-9 ul li .field-full{
	width: 100%;
}
.form-style-9 ul li input.align-left{
	float:left;
}
.form-style-9 ul li input.align-right{
	float:right;
}
.form-style-9 ul li textarea{
	width: 100%;
	height: 100px;
}
.form-style-9 ul li input[type="button"], 
.form-style-9 ul li input[type="submit"] {
	-moz-box-shadow: inset 0px 1px 0px 0px #3985B1;
	-webkit-box-shadow: inset 0px 1px 0px 0px #3985B1;
	box-shadow: inset 0px 1px 0px 0px #3985B1;
	background-color: #216288;
	border: 1px solid #17445E;
	display: inline-block;
	cursor: pointer;
	color: #FFFFFF;
	padding: 8px 18px;
	text-decoration: none;
	font: 12px Arial, Helvetica, sans-serif;
}
.form-style-9 ul li input[type="button"]:hover, 
.form-style-9 ul li input[type="submit"]:hover {
	background: linear-gradient(to bottom, #2D77A2 5%, #337DA8 100%);
	background-color: #28739E;
}
        .auto-style1 {
            width: 113px;
        }
        .auto-style2 {
            width: 509px;
        }
        .auto-style3 {
            width: 304px;
        }
        .auto-style4 {
            width: 226px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="form-style-9" aria-orientation="vertical">
       
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="82px" ImageUrl="~/Imagenes/LOGO.png" Width="162px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="REPORTES GENERADOS"></asp:Label>
                </td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label4" runat="server" Text="Folio"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:DropDownList ID="ddlFolio" runat="server" DataSourceID="SqlEmocio" DataTextField="FOLIO" DataValueField="FOLIO" AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlEmocio" runat="server" ConnectionString="<%$ ConnectionStrings:emocioConnectionString %>" SelectCommand="SELECT [FOLIO] FROM [REPORTE]"></asp:SqlDataSource>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td>Usuarios</td>
            </tr>
            <tr>
                <td class="auto-style1">Respuesta:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtRespuesta" runat="server" Height="76px" Width="487px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td>
        <label for="field6">
        <asp:Image ID="Image4" runat="server" Height="38px" ImageUrl="~/Imagenes/585e4d1ccb11b227491c339b.png" Width="40px" onclick="location.href='/Usuario.aspx'"/>
        </label>
                </td>
            </tr>
           
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
           
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Text="Busqueda Por:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:DropDownList ID="ddlBusqueda" runat="server" AutoPostBack="True">
                        <asp:ListItem>EN PROCESO</asp:ListItem>
                        <asp:ListItem>REVISADO</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                    <asp:Button ID="btnBuscar" runat="server" Text="BUSCAR" />
                </td>
                <td class="auto-style4">
                    <asp:Label ID="lblMensaje" runat="server" CssClass="align-left" ForeColor="#990000" Text="Label" Visible="False"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
           
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
           
        </table>
        
        
        
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" Width="844px" DataKeyNames="FOLIO"  HorizontalAlign="Justify">
            <Columns>
                <asp:BoundField DataField="FOLIO" HeaderText="FOLIO" ReadOnly="True" SortExpression="FOLIO" />
                <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                <asp:BoundField DataField="ASUNTO" HeaderText="ASUNTO" SortExpression="ASUNTO" />
                <asp:BoundField DataField="CORREO_ELECTRONICO" HeaderText="CORREO_ELECTRONICO" SortExpression="CORREO_ELECTRONICO" />
                <asp:BoundField DataField="CELULAR" HeaderText="CELULAR" SortExpression="CELULAR" />
                <asp:BoundField DataField="ESTATUS" HeaderText="ESTATUS" SortExpression="ESTATUS" />
                <asp:BoundField DataField="RESPUESTA" HeaderText="RESPUESTA" SortExpression="RESPUESTA" />
            </Columns>
            </asp:GridView>

        <asp:SqlDataSource ID="TABLAREPORTE" runat="server" ConnectionString="<%$ ConnectionStrings:EMOCIONALATTE_MA %>" SelectCommand="SELECT * FROM [REPORTE]"></asp:SqlDataSource>

        <table style="width:100%;">
            <tr>
                <td colspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="BtnEditar0" runat="server" Text="SALIR" Width="120px" BackColor="#996600" ForeColor="White" />
                </td>
                <td>
                    <asp:Button ID="BtnEditar" runat="server" Text="EDITAR" Width="120px" BackColor="#996600" ForeColor="White" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </form>
</body>
</html>
