using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using DevExpress.Web;

/// <summary>
/// Summary description for Class1
/// </summary>
public class CustomTemplate : ITemplate {

	public void InstantiateIn(Control container) {
		GridViewDataItemTemplateContainer c = container as GridViewDataItemTemplateContainer;
		if (c.Column is GridViewDataCheckColumn) {
			object o = DataBinder.Eval(c.DataItem, c.Column.FieldName);
			if ((o != null) && ((bool)o)){
				ASPxCheckBox cb = new ASPxCheckBox {
					ID = "myCB",
					Checked = true
				};
			c.Controls.Add(cb);
			}				
		}
		else {
			c.Controls.Add(
				new LiteralControl(DataBinder.Eval(c.DataItem, c.Column.FieldName).ToString())
			);
		}
	}
}