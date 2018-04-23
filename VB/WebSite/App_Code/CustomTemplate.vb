Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Web
Imports System.Web.UI
Imports DevExpress.Web.ASPxGridView
Imports DevExpress.Web.ASPxEditors

''' <summary>
''' Summary description for Class1
''' </summary>
Public Class CustomTemplate
	Implements ITemplate

	Public Sub InstantiateIn(ByVal container As Control) Implements ITemplate.InstantiateIn
		Dim c As GridViewDataItemTemplateContainer = TryCast(container, GridViewDataItemTemplateContainer)
		If TypeOf c.Column Is GridViewDataCheckColumn Then
			Dim o As Object = DataBinder.Eval(c.DataItem, c.Column.FieldName)
			If (o IsNot Nothing) AndAlso (CBool(o)) Then
				Dim cb As ASPxCheckBox = New ASPxCheckBox With {.ID = "myCB", .Checked = True}
			c.Controls.Add(cb)
			End If
		Else
			c.Controls.Add(New LiteralControl(DataBinder.Eval(c.DataItem, c.Column.FieldName).ToString()))
		End If
	End Sub
End Class