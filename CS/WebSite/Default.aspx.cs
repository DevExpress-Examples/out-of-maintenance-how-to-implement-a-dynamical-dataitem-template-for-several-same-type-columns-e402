using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web.ASPxGridView;

public partial class _Default : System.Web.UI.Page
{ 
	protected void grid_Init(object sender, EventArgs e) {
		ASPxGridView g = sender as ASPxGridView;
		g.Templates.DataItem = new CustomTemplate();
	}
}