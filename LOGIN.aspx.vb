Public Class LOGIN
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles btnIngresar.Click
        Conexiones.AbrirConexion()
        Conexiones.Cnn.Open()

        Dim da As New SqlClient.SqlDataAdapter("select * from SESION where USUARIO='" & txtUsuario.Text & "' and CONTRASEÑA='" & txtClave.Text & "'", Conexiones.Cnn)
        Dim ds As New DataSet
        da.Fill(ds)
        If ds.Tables(0).Rows.Count > 0 Then
            CreateCookies()

            Response.Redirect("~/Administrador.aspx")

        Else
            lblMensaje.Text = "Usuario o contraseña incorrectos"
            lblMensaje.Visible = True


        End If

        Conexiones.Cnn.Close()
    End Sub

    Private Sub CreateCookies()
        Dim FechaHora As String = Now.AddMinutes(10)

        If Request.Cookies("EmpleadoASP") Is Nothing Then

            Dim aCookie As New HttpCookie("EmpleadoASP")

            aCookie.Value = "Activa"

            aCookie.Expires = FechaHora

            Response.Cookies.Add(aCookie)

        Else

            Dim cookie As HttpCookie = HttpContext.Current.Request.Cookies("EmpleadoASP")

            cookie.Value = "Activa"

            cookie.Expires = FechaHora

            Response.Cookies.Add(cookie)

        End If



    End Sub


End Class