using DataSetTableAdapters;
using System;

public partial class Interests_DeleteInterest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        short id = short.Parse(Request.QueryString["Delete"]);
        tbl_interestTableAdapter interestTableAdapter = new tbl_interestTableAdapter();
        interestTableAdapter.DeleteInterest(id);
        Response.Redirect("/Interests/ListInterest.aspx");
    }
}