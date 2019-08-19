Imports System.Net.Mail
Public Class test
    Inherits System.Web.UI.Page

    Private Sub btnsubmit_Click(sender As Object, e As EventArgs) Handles btnsubmit.Click
        ' cheak if the user has entered text in all the boxes...

        Dim EmailMsg As New MailMessage

        Try
            ' send to and from addresses
            EmailMsg.From = New MailAddress("171034@trinitycshools.nz")
            EmailMsg.To.Add("171034@trinityschools.nz")

            ' set the subject and body of e-mail
            EmailMsg.Subject = txtSubject.Text
            EmailMsg.Body = "from: " & txtEmail.Text & vbNewLine & txtMsg.Text

            ' set up SMTP
            Dim SMTP As New SmtpClient("smpt.office365.com")
            SMTP.Port = 587
            SMTP.EnableSsl = True
            SMTP.Credentials = New System.Net.NetworkCredential("171034@trinityschools.nz", "your_password")
            SMTP.Send(EmailMsg)

        Catch ex As Exception
            ' on error
            MsgBox(" an ERROR has occured while sending your request. Please check your return e-mail address and try again")
            Exit Sub
        End Try

        ' Reset form and let user know e-mail was sent.
        txtEmail.Text = ""
        txtMsg.Text = ""
        txtName.Text = ""
        txtSubject.Text = ""
        MsgBox("your message has been sent. Thank you very much.",, "contact page")

    End Sub
End Class