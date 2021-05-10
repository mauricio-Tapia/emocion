<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Usuario.aspx.vb" Inherits="Emocionalatte.ConsultaReporte" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>


    <style type="text/css">
        



.form-style-9{
	max-width: 800px;
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
            width: 387px;
        }

        .auto-style3 {
            width: 92%;
        }

    </style>

</head>
<body>
     <form id="form1" runat="server" class="form-style-9">
    
        <table class="auto-style3">
            <tr>
                <td class="auto-style1">
                    <asp:Image ID="Image1" runat="server" Height="101px" ImageUrl="~/Imagenes/LOGO.png" Width="170px" />
                </td>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" CssClass="form-style-3-heading" Text="USUARIOS"></asp:Label>
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
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="USUARIO:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label6" runat="server" Text="CONTRASEÑA:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtContra" runat="server" Width="272px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="lblMensaje" runat="server" CssClass="align-left" ForeColor="#990000" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="USUARIO"  Width="439px">
                        <Columns>
                            <asp:BoundField DataField="USUARIO" HeaderText="USUARIO" ReadOnly="True" SortExpression="USUARIO" />
                            <asp:BoundField DataField="CONTRASEÑA" HeaderText="CONTRASEÑA" SortExpression="CONTRASEÑA" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlUSUARIO" runat="server" ConnectionString="<%$ ConnectionStrings:EMOCIONALATTE_MA %>" SelectCommand="SELECT * FROM [SESION]"></asp:SqlDataSource>
                </td>
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
                    <asp:Label ID="Label13" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:Label ID="Label14" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:Button ID="btnAgregar" runat="server" BackColor="#996600" ForeColor="White" Text="AGREGAR" Width="98px" Height="35px" />
                    <asp:Label ID="Label7" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:Label ID="Label10" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:Button ID="btnEditar" runat="server" BackColor="#996600" ForeColor="White" Text="EDITAR" Width="98px" Height="35px" />
                    <asp:Label ID="Label8" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:Label ID="Label11" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:Button ID="btnEliminar" runat="server" BackColor="#996600" ForeColor="White" Text="ELIMINAR" Width="98px" Height="35px" />
                    <asp:Label ID="Label9" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:Label ID="Label12" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:Button ID="btnConsultar" runat="server" BackColor="#996600" ForeColor="White" Text="CONSULTAR" Width="98px" Height="35px" />
                    <asp:Label ID="Label15" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:Label ID="Label16" runat="server" Text="Label" Visible="False"></asp:Label>
        <label for="field6">
        <asp:Image ID="Image4" runat="server" Height="38px" ImageUrl="~/Imagenes/flecha.png" Width="40px" onclick="location.href='/Administrador.aspx'"/>
        </label>
                </td>
            </tr>
            </table>

    </form>
         
</body>
</html>
