Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports DevExpress.Web

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub grid_Init(ByVal sender As Object, ByVal e As EventArgs)
		Dim g As ASPxGridView = TryCast(sender, ASPxGridView)
		g.Templates.DataItem = New CustomTemplate()
	End Sub
End Class