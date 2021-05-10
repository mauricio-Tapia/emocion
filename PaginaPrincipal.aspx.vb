Public Class PaginaPrincipal
    Inherits System.Web.UI.Page
    Public dst As DataSet

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnRegistrarRep_Click(sender As Object, e As EventArgs) Handles btnRegistrarRep.Click

        Conexiones.AbrirConexion()
        Conexiones.Cnn.Open()

        Dim da As New SqlClient.SqlDataAdapter("select * from REPORTE WHERE FOLIO = " & txtFolio.Text & ";", Conexiones.Cnn)
        Dim ds As New DataSet 'lo descomente
        dst = New DataSet
        da.Fill(dst)
        Dim dt As New DataTable
        da.Fill(dt)

        'GridView1.DataSource = ds

        'GridView1.DataBind()

        If dst.Tables(0).Rows.Count > 0 Then

            lblMensaje.Text = "YA SE REGISTRÓ UN REPORTE CON ESE FOLIO"
            lblMensaje.Visible = True
            txtFolio.Text = ""
            txtNombre.Text = ""
            txtCelular.Text = ""
            txtEmail.Text = ""
            txtAsunto.Text = ""


        Else

            Dim cd As New SqlClient.SqlCommand("insert into REPORTE(FOLIO,CLIENTE,CORREO_ELECTRONICO,ASUNTO,CELULAR) values('" & txtFolio.Text & "','" & txtNombre.Text & "','" & txtEmail.Text & "','" & txtAsunto.Text & "','" & txtCelular.Text & "');", Conexiones.Cnn)
            cd.ExecuteNonQuery()

            'MsgBox("Su reporte fue registrado con EXITO ", vbCritical, "Error")
            txtFolio.Text = ""
            txtNombre.Text = ""
            txtCelular.Text = ""
            txtEmail.Text = ""
            txtAsunto.Text = ""

            lblMensaje.Text = "SE REIGSTRO SU REPORTE CON EXITO"
            lblMensaje.Visible = True



        End If

        Conexiones.Cnn.Close()



    End Sub
End Class