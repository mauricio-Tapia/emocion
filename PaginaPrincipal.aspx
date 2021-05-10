<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PaginaPrincipal.aspx.vb" Inherits="Emocionalatte.PaginaPrincipal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    
    <style type="text/css">
        
.form-style-2{
	max-width: 800px;
	padding: 20px 12px 10px 20px;
	font: 13px Arial, Helvetica, sans-serif;
}
.form-style-2-heading{
	font-weight: bold;
	font-style: italic;
	border-bottom: 2px solid #ddd;
	margin-bottom: 20px;
	font-size: 15px;
	padding-bottom: 3px;
}

.form-style-2 label{
	display: block;
	margin: 0px 0px 15px 0px;
}
.form-style-2 label > span{
	width: 100px;
	font-weight: bold;
	float: left;
	padding-top: 8px;
	padding-right: 5px;
}
.form-style-2 span.required{
	color:red;
}
.form-style-2 .tel-number-field{
	width: 40px;
	text-align: center;
}
.form-style-2 input.input-field, .form-style-2 .select-field{
	width: 48%;	
}
.form-style-2 input.input-field, 
.form-style-2 .tel-number-field, 
.form-style-2 .textarea-field, 
 .form-style-2 .select-field{
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	border: 1px solid #C2C2C2;
	box-shadow: 1px 1px 4px #EBEBEB;
	-moz-box-shadow: 1px 1px 4px #EBEBEB;
	-webkit-box-shadow: 1px 1px 4px #EBEBEB;
	border-radius: 3px;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	padding: 7px;
	outline: none;
}
.form-style-2 .input-field:focus, 
.form-style-2 .tel-number-field:focus, 
.form-style-2 .textarea-field:focus,  
.form-style-2 .select-field:focus{
	border: 1px solid #0C0;
}
.form-style-2 .textarea-field{
	height:100px;
	width: 55%;
}
.form-style-2 input[type=submit],
.form-style-2 input[type=button]{
	border: none;
	padding: 8px 15px 8px 15px;
	background: #FF8500;
	color: #fff;
	box-shadow: 1px 1px 4px #DADADA;
	-moz-box-shadow: 1px 1px 4px #DADADA;
	-webkit-box-shadow: 1px 1px 4px #DADADA;
	border-radius: 3px;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
}
.form-style-2 input[type=submit]:hover,
.form-style-2 input[type=button]:hover{
	background: #EA7B00;
	color: #fff;
}

        .auto-style1 {
            font-size: 40px;
            width: 438px;
            margin-left: 0px;
        }

        .auto-style2 {
            font-weight: bold;
            font-style: italic;
            border-bottom: 2px solid #ddd;
            margin-bottom: 20px;
            font-size: 20px;
            padding-bottom: 3px;
            width: 1280px;
        }

        .auto-style3 {
            width: 506px;
        }
        .auto-style6 {
            width: 98%;
        }
        .auto-style4 {
            font-weight: bold;
            font-style: italic;
            border-bottom: 2px solid #ddd;
            margin-bottom: 20px;
            font-size: 15px;
            padding-bottom: 3px;
            width: 878px;
        }
        form { float: left; }

        .auto-style7 {
            float: left;
            width: 647px;
            height: 444px;
        }

        .auto-style8 {
            width: 107px;
        }

        .auto-style9 {
            height: 23px;
        }

        .auto-style10 {
            width: 310px;
        }

        .auto-style11 {
            width: 172px;
        }

        </style>
    <style type="float: left">
form { float: left; }
</style> 

</head>
<body>
    <table style="background-color: #232323; color: #FFFFFF;" class="auto-style6">
             <tr>
                 <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Image ID="Image1" runat="server" Height="106px" ImageUrl="~/Imagenes/LOGO.png" Width="201px" />
          
                 </td>
                 <td>
         <h1 style="border-color: #663300; background-color: #232323" class="auto-style1">SERVICIO DE AYUDA</h1></td>
             </tr>
             </table>

    <div class="form-style-2">
        
<div style="border-color: #663300; background-color: #bf930d" class="auto-style2">GENERA TU REPORTE</div>
    <form id="form1" runat="server" class="auto-style3">
        <label for="field1"><span class="auto-style8">Folio de compra<span class="required">*</span></span><asp:TextBox ID="txtFolio" runat="server" Height="26px"></asp:TextBox>
        </label>
        <label for="field2"><span>Nombre <span class="required">*</span></span><asp:TextBox ID="txtNombre" runat="server" Width="366px"></asp:TextBox>
        </label>
&nbsp;&nbsp;<label for="field3"><span>Email <span class="required">*</span></span><asp:TextBox ID="txtEmail" runat="server" Width="366px"></asp:TextBox>
        </label>
        &nbsp;&nbsp;
        <label for="field4"><span>Celular <span class="required">*</span></span><asp:TextBox ID="txtCelular" runat="server" Width="366px"></asp:TextBox>
        </label>
<label for="field5"><span>Asunto <span class="required">*</span></span><asp:TextBox ID="txtAsunto" runat="server" Height="74px" TextMode="MultiLine" Width="370px"></asp:TextBox>
        </label>
&nbsp;<label><span></span><asp:Button ID="btnRegistrarRep" runat="server" Text="Registrar" BackColor="#996600" BorderColor="#663300" BorderStyle="None" CssClass="form-style-2-heading" ForeColor="White" Width="116px" />
        <label for="field6">
        <br />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style4"> ¿Desea consultar el estatus de su reporte?</asp:HyperLink>
        &nbsp;&nbsp;
        <asp:Image ID="Image2" runat="server" Height="38px" ImageUrl="~/Imagenes/LOGOLUPA.png" Width="40px" onclick="location.href='/DetallesReporte.aspx'"/>
        </label>
        </label>
       
   </form>
        </div>


    <form method='POST' action='a.php' margin='0' style="float: left">
<input type='hidden' value='$a' name='eso'>
<inpu type='submit' value='ENTRAR' name='accion'>
</form>
<form method='POST' action='a.php' margin='0' class="auto-style7">
<input type='hidden' value='$a' name='eso'>
    <table style="width:100%;">
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10" colspan="2">
                <asp:Label ID="lblMensaje" runat="server" CssClass="auto-style2" ForeColor="#990000" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>
        <label for="field6">
        <asp:Image ID="Image4" runat="server" Height="38px" ImageUrl="~/Imagenes/585e4d1ccb11b227491c339b.png" Width="40px" onclick="location.href='/LOGIN.aspx'"/>
        </label>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10" colspan="2">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10" colspan="2">
                <asp:Image ID="Image3" runat="server" Height="387px" ImageUrl="~/Imagenes/Imagen1.png" Width="338px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9" colspan="2">
                &nbsp;</td>
            <td class="auto-style9" colspan="2">
                &nbsp;</td>
        </tr>
    </table>
<inpu type='submit' value='CERRAR' name='accion'>
    </form>




    </body>
</html>
