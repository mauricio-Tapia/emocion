Public Class ConsultaReporte
    Inherits System.Web.UI.Page
    Public dst As DataSet

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Conexiones.AbrirConexion()
        Conexiones.Cnn.Open()

        Dim da As New SqlClient.SqlDataAdapter("select * from SESION;", Conexiones.Cnn)
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
    End Sub

    Protected Sub btnRegistrarRep_Click(sender As Object, e As EventArgs)

    End Sub
    'btnagregar
    Protected Sub txtConsulta_Click(sender As Object, e As EventArgs) Handles btnAgregar.Click


        Conexiones.AbrirConexion()
        Conexiones.Cnn.Open()

        Dim da As New SqlClient.SqlDataAdapter("select * from SESION WHERE USUARIO = '" & txtUsuario.Text & "';", Conexiones.Cnn)
        'Dim ds As New DataSet 'lo descomente
        dst = New DataSet
        da.Fill(dst)
        Dim dt As New DataTable
        da.Fill(dt)

        'GridView1.DataSource = ds

        'GridView1.DataBind()

        If dst.Tables(0).Rows.Count > 0 Then

            lblMensaje.Text = "YA SE REGISTRÓ UN USUARIO CON ESE NOMBRE"
            lblMensaje.Visible = True
            txtUsuario.Text = ""
            txtContra.Text = ""


        Else

            Dim cd As New SqlClient.SqlCommand("insert into SESION (USUARIO, CONTRASEÑA) values('" & txtUsuario.Text & "','" & txtContra.Text & "');", Conexiones.Cnn)
            cd.ExecuteNonQuery()

            'MsgBox("Su reporte fue registrado con EXITO ", vbCritical, "Error")
            txtUsuario.Text = ""
            txtContra.Text = ""


            lblMensaje.Text = "Se registró el usuario con éxito"
            lblMensaje.Visible = True



        End If

        Conexiones.Cnn.Close()

    End Sub

    Protected Sub btnEditar_Click(sender As Object, e As EventArgs) Handles btnEditar.Click
        Conexiones.AbrirConexion()
        Conexiones.Cnn.Open()


        Dim da As New SqlClient.SqlDataAdapter("select * from SESION WHERE USUARIO = '" & txtUsuario.Text & "';", Conexiones.Cnn)
        Dim ds As New DataSet 'lo descomente
        dst = New DataSet
        da.Fill(dst)
        Dim dt As New DataTable
        da.Fill(dt)

        'GridView1.DataSource = ds

        'GridView1.DataBind()

        If dst.Tables(0).Rows.Count > 0 Then
            Dim cd As New SqlClient.SqlCommand("UPDATE SESION SET CONTRASEÑA = '" & txtContra.Text & "' WHERE USUARIO = '" & txtUsuario.Text & "';", Conexiones.Cnn)
            cd.ExecuteNonQuery()

            lblMensaje.Text = "El Usuario se actualizó correctamente"
            lblMensaje.Visible = True
            txtUsuario.Text = ""
            txtContra.Text = ""


            Conexiones.Cnn.Close()
        Else
            lblMensaje.Text = "El usuario no existe"
            lblMensaje.Visible = True
            txtUsuario.Text = ""
            txtContra.Text = ""
        End If
    End Sub

    Protected Sub btnEliminar_Click(sender As Object, e As EventArgs) Handles btnEliminar.Click
        Conexiones.AbrirConexion()
        Conexiones.Cnn.Open()


        Dim da As New SqlClient.SqlDataAdapter("select * from SESION WHERE USUARIO = '" & txtUsuario.Text & "';", Conexiones.Cnn)
        Dim ds As New DataSet 'lo descomente
        dst = New DataSet
        da.Fill(dst)
        Dim dt As New DataTable
        da.Fill(dt)

        'GridView1.DataSource = ds

        'GridView1.DataBind()

        If dst.Tables(0).Rows.Count > 0 Then
            Dim cd As New SqlClient.SqlCommand("delete from SESION WHERE USUARIO = '" & txtUsuario.Text & "';", Conexiones.Cnn)
            cd.ExecuteNonQuery()

            lblMensaje.Text = "El Usuario se eliminó correctamente"
            lblMensaje.Visible = True
            txtUsuario.Text = ""
            txtContra.Text = ""


            Conexiones.Cnn.Close()
        Else
            lblMensaje.Text = "El usuario no existe"
            lblMensaje.Visible = True
            txtUsuario.Text = ""
            txtContra.Text = ""
        End If
    End Sub

    Protected Sub btnConsultar_Click(sender As Object, e As EventArgs) Handles btnConsultar.Click
        Conexiones.AbrirConexion()
        Conexiones.Cnn.Open()

        Dim da As New SqlClient.SqlDataAdapter("select * from SESION;", Conexiones.Cnn)
        Dim ds As New DataSet 'lo descomente
        dst = New DataSet
        da.Fill(dst)
        Dim dt As New DataTable
        da.Fill(dt)
        lblMensaje.Visible = False

        If dst.Tables(0).Rows.Count > 0 Then


            GridView1.DataSource = dst.Tables(0)
            GridView1.DataBind()

        Else
            GridView1.DataSource = Nothing
            GridView1.DataBind()
        End If
    End Sub
    'DataSourceID="SqlUSUARIO
End Class