using DataSetTableAdapters;
using System;

public partial class Interests_AddInterest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAddInterest_Click(object sender, EventArgs e)
    {
        tbl_interestTableAdapter interestTableAdapter = new tbl_interestTableAdapter();
        interestTableAdapter.InsertInterest(txtInterest.Text);
        Response.Redirect("/Interests/ListInterest.aspx");
    }
}