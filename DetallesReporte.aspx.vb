Imports System.Data.SqlClient
Public Class DetallesReporte
    Inherits System.Web.UI.Page
    Public dst As DataSet

    ' Definir la cadena de conexión con la base de datos de SQL Server
    '
    'Private CadenaConexion As String = "Data Source=ACER\PGDL;" &
    '  "Initial Catalog=EMOCIONALATTE_MA;Integrated Security=Yes"

    'Private Function Buscar(FOLIO As String) As DataRow

    'If (String.IsNullOrEmpty(FOLIO)) Then
    '    Throw New ArgumentNullException("FOLIO")
    'End If

    '' Declaramos la variable que devolverá la función, que
    '' en principio indica que no existe ningún registro
    '' que coincida con el ID especificado.
    ''
    'Dim returnValue As DataRow = Nothing

    '' Creamos la conexión con la base de SQL Server.
    'Using cnn As New SqlConnection(CadenaConexion)

    '    ' Creamos un objeto Command.
    '    Dim cmd As SqlCommand = cnn.CreateCommand()

    '    ' Indicamos la consulta SQL de selección que deseamos ejecutar
    '    cmd.CommandText = "SELECT * FROM NombreTabla WHERE FOLIO=@FOLIO"

    '    ' Añadimos el único parámetro de entrada existente en la consulta**
    '    cmd.Parameters.AddWithValue("@FOLIO", txtFolioDR.Text)

    '    ' Creamos el adaptador de datos al que le pasamos el objeto Command.
    '    Dim da As New SqlDataAdapter(cmd)

    '    ' Intentamos rellenar un objeto DataTable como resultado
    '    ' de ejecutar la consulta SQL de selección especificada.
    '    '
    '    Using dt As New DataTable()

    '        da.Fill(dt)

    '        If (dt.Rows.Count > 0) Then
    '            ' Nos quedamos con la primera fila u objeto DataRow.
    '            '
    '            returnValue = dt.Rows(0)
    '        End If

    '    End Using

    'End Using

    '' Devolvemos el objeto DataRow obtenido.
    ''
    'Return returnValue

    'End Function



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnRegistrarRep_Click(sender As Object, e As EventArgs) Handles btnPP.Click
        Response.Redirect("~/PaginaPrincipal.aspx")
    End Sub

    Protected Sub txtFolioDR_TextChanged(sender As Object, e As EventArgs) Handles txtFolioDR.TextChanged

    End Sub

    Protected Sub btnConsulta_Click(sender As Object, e As EventArgs) Handles btnConsulta.Click


        'Try
        ' Obtenemos un objeto DataRow correspondiente con
        ' el ID escrito en un control TextBox
        ''
        'Dim row As DataRow = Buscar(txtFolioDR.Text)

        'If (row Is Nothing) Then
        '    'MessageBox.Show("No hay registros que coincidan con el ID especificado.")
        '    ' Abandonamos el procedimiento
        '    Return
        'End If

        ' Rellenamos los correspondientes controles TextBox
        ' con los datos existentes en el objeto DataRow
        ' obtenido.
        'txtFolioDR.Text = Convert.ToString(row("FOLIO"))
        'txtNombreDR.Text = Convert.ToString(row("CLIENTE"))
        'txtCelularDR.Text = Convert.ToString(row("CELULAR"))
        'txtAsuntoDR.Text = Convert.ToString(row("ASUNTO"))
        'txtEstatusDR.Text = Convert.ToString(row("ESTATUS"))
        'txtRespuestaDR.Text = Convert.ToString(row("RESPUESTA"))


        'txtNombreDR.Visible = True
        'txtCelularDR.Visible = True
        'txtAsuntoDR.Visible = True
        'txtEstatusDR.Visible = True
        'txtRespuestaDR.Visible = True

        'lblAsunto.Visible = True
        'lblNombre.Visible = True
        'lblCelular.Visible = True
        'lblEstatus.Visible = True
        'lblRespuesta.Visible = True

        'btnPP.Visible = True


        'Catch ex As Exception
        '    ' Se ha producido un error

        '    ' MessageBox.Show(ex.Message)

        'End Try

        Conexiones.AbrirConexion()
        Conexiones.Cnn.Open()

        Dim da As New SqlClient.SqlDataAdapter("select * from REPORTE WHERE FOLIO = " & txtFolioDR.Text & ";", Conexiones.Cnn)
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
End Class