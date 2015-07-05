Public Class viajes
    Inherits System.Web.UI.Page
    Dim errorFMC As String
    Dim utils As New CalendarioFMC
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        utils.formateaCalendario(FSalida, "Fecha de Salida")
        utils.formateaCalendario(FVuelta, "Fecha de Vuelta")
        errorFMC = utils.ValidaRangoMañanaHasta1Mes(RangeValidator1)
        If Not String.Compare(errorFMC, "") Then
            Response.Write(errorFMC)
        End If
        utils.comparaFechaVueltaMayorFechaSalida(CompareValidator1, FechaSalida)
        utils.FormateaValidationSumary(ValidationSummary1)
        utils.CreaBotonReservar(Button1)

    End Sub

    Private Sub FSalida_SelectionChanged(sender As Object, e As EventArgs) Handles FSalida.SelectionChanged
        FechaSalida.Text = FSalida.SelectedDate.ToShortDateString

    End Sub

    Private Sub FVuelta_SelectionChanged(sender As Object, e As EventArgs) Handles FVuelta.SelectionChanged
        FechaVuelta.Text = FVuelta.SelectedDate.ToShortDateString
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If Page.IsValid Then
            Label1.Text = "reserva efectuada  Fecha Salida: " & FechaSalida.Text & " Fecha Vuelta: " & FechaVuelta.Text
            Page.Session("FSalida") = FechaSalida.Text
            Page.Session("FVuelta") = FechaVuelta.Text

        End If
    End Sub
End Class