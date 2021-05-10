Imports System.Web
Imports System.Web.Configuration
Imports System.Data
Imports System.Data.SqlClient
Public Class Administrador
    Inherits System.Web.UI.Page
    Public dst As DataSet



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Conexiones.AbrirConexion()
        Conexiones.Cnn.Open()

        Dim da As New SqlClient.SqlDataAdapter("select * from REPORTE;", Conexiones.Cnn)
        Dim ds As New DataSet 'lo descomente
        dst = New DataSet
        da.Fill(dst)
        Dim dt As New DataTable
        da.Fill(dt)


        If dst.Tables(0).Rows.Count > 0 Then


            GridView1.DataSource = dst.Tables(0)
            GridView1.DataBind()

        Else
            GridView1.DataSource = Nothing
            GridView1.DataBind()
        End If



        Conexiones.Cnn.Close()

    End Sub

    'COOKIE PARA VERIFICAR QUE SE HAGAN MOVIMIENTOS EN EL SISTEMA
    Private Sub VerificaCookie()
        If Request.Cookies("EmpleadoASP") Is Nothing Then
            Response.Redirect("~/Login.aspx")
        Else
            Dim cookie As HttpCookie = HttpContext.Current.Request.Cookies("EmpleadoASP")
            cookie.Value = "Activa"
            cookie.Expires = Now.AddMinutes(10)
            Response.Cookies.Add(cookie)

        End If
    End Sub



    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlBusqueda.SelectedIndexChanged

    End Sub

    Protected Sub btnBuscar_Click(sender As Object, e As EventArgs) Handles btnBuscar.Click
        VerificaCookie()

        Conexiones.AbrirConexion()
        Conexiones.Cnn.Open()

        Dim da As New SqlClient.SqlDataAdapter("select * from REPORTE WHERE ESTATUS = '" & ddlBusqueda.SelectedItem.Value & "';", Conexiones.Cnn)
        Dim ds As New DataSet 'lo descomente
        dst = New DataSet
        da.Fill(dst)
        Dim dt As New DataTable
        da.Fill(dt)

        'GridView1.DataSource = ds

        'GridView1.DataBind()

        If dst.Tables(0).Rows.Count > 0 Then


            GridView1.DataSource = dst.Tables(0)
            GridView1.DataBind()

        Else
            GridView1.DataSource = Nothing
            GridView1.DataBind()
        End If



        Conexiones.Cnn.Close()



    End Sub


    Private Sub Limpiar()

        txtRespuesta.Text = " "
        txtRespuesta.Focus()

    End Sub



    Protected Sub BtnEditar_Click(sender As Object, e As EventArgs) Handles BtnEditar.Click
        VerificaCookie()



        Conexiones.AbrirConexion()
        Conexiones.Cnn.Open()

        Dim da As New SqlClient.SqlDataAdapter("select * from REPORTE WHERE FOLIO = " & ddlFolio.SelectedItem.Value & " AND ESTATUS = 'EN PROCESO';", Conexiones.Cnn)
        Dim ds As New DataSet 'lo descomente
        dst = New DataSet
        da.Fill(dst)
        Dim dt As New DataTable
        da.Fill(dt)

        'GridView1.DataSource = ds

        'GridView1.DataBind()

        If dst.Tables(0).Rows.Count > 0 Then

            Dim cd As New SqlClient.SqlCommand("UPDATE REPORTE SET ESTATUS = 'REVISADO' , RESPUESTA = '" & txtRespuesta.Text & "' WHERE FOLIO = " & ddlFolio.SelectedItem.Value & " AND ESTATUS = 'EN PROCESO';", Conexiones.Cnn)
            cd.ExecuteNonQuery()
            Limpiar()
            lblMensaje.Text = "El reporte se actualizó correctamente"
            lblMensaje.Visible = True
            txtRespuesta.Text = ""


            Conexiones.Cnn.Close()

        Else
            lblMensaje.Text = "Los reportes con estatus 'REVISADO' no pueden volver a actualizarse"
            lblMensaje.Visible = True
            txtRespuesta.Text = ""
        End If



    End Sub

    Protected Sub BtnEditar0_Click(sender As Object, e As EventArgs) Handles BtnEditar0.Click
        Response.Redirect("~/PaginaPrincipal.aspx")
    End Sub

    'Protected Sub BtnSalir_Click(sender As Object, e As EventArgs) Handles BtnSalir.Click

    'End Sub

End Class