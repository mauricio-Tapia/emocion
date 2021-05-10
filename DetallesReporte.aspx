<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DetallesReporte.aspx.vb" Inherits="Emocionalatte.DetallesReporte" %>

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
	background: linear-gradient(to bottom, #EA7B00 5%, #337DA8 100%);
	background-color: #28739E;
}
        .auto-style1 {
            width: 121px;
        }
    .form-style-2-heading{
	font-weight: bold;
	font-style: italic;
	border-bottom: 2px solid #ddd;
	margin-bottom: 20px;
	font-size: 15px;
	padding-bottom: 3px;
}
    .form-style-3-heading{
	font-weight: bold;
	font-style: italic;
	border-bottom: 2px solid #ddd;
	margin-bottom: 20px;
	font-size: 30px;
	padding-bottom: 3px;
}

        .auto-style2 {
            width: 589px;
        }

        .auto-style3 {
            margin-top: 0px;
        }

    </style>

</head>
<body>
     
    <form id="form1" runat="server" class="form-style-9">
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">
                    <asp:Image ID="Image1" runat="server" Height="101px" ImageUrl="~/Imagenes/LOGO.png" Width="170px" />
                </td>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" CssClass="form-style-3-heading" Text="INFORMACIÓN SOBRE EL REPORTE"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="FOLIO:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtFolioDR" runat="server" CssClass="auto-style3"></asp:TextBox>
                    <asp:Label ID="Label8" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:Button ID="btnConsulta" runat="server" BackColor="#996600" ForeColor="White" Text="CONSULTAR" Width="98px" Height="35px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="FOLIO"  Width="892px">
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
                    <asp:SqlDataSource ID="SqlCLIENTEREPORTE" runat="server" ConnectionString="<%$ ConnectionStrings:EMOCIONALATTE_MA %>" SelectCommand="SELECT * FROM [REPORTE]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td><label><asp:Button ID="btnPP" runat="server" Text="Pagina Principal" BackColor="#996600" BorderColor="White" BorderStyle="None" CssClass="form-style-2-heading" ForeColor="White" Width="136px" />
        </label>
                </td>
            </tr>
        </table>
    
    </form>
</body>
</html>
