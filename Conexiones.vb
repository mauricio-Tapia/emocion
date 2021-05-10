Imports System.Web
Imports System.Data.SqlClient
Public Class Conexiones
    Public Shared Cnn As SqlClient.SqlConnection
    Public Shared Validar As String = "0"

    Public Shared Sub AbrirConexion()
        'Cnn = New SqlConnection("Server=ACER\PGDL;Database=EMOCIONALATTE_MA;User Id=sa;Password=fNxM8v7y;")
        Cnn = New SqlConnection("Server=den1.mssql7.gear.host;User Id=emocio;Password=Su271!_5780o;")
        'Database=emocio;
    End Sub


End Class
