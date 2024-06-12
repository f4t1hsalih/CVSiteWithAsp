using DataSetTableAdapters;
using System;

public partial class Interests_UpdateInterest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            tbl_interestTableAdapter interestTableAdapter = new tbl_interestTableAdapter();
            short id = short.Parse(Request.QueryString["Update"]);
            var value = interestTableAdapter.GetInterestsWithID(id);
            txtInterest.Text = value[0]["int_interest"].ToString();
        }
    }

    protected void btnUpdateInterest_Click(object sender, EventArgs e)
    {
        tbl_interestTableAdapter interestTableAdapter = new tbl_interestTableAdapter();
        short id = short.Parse(Request.QueryString["Update"]);
        interestTableAdapter.UpdateInterest(txtInterest.Text, id);
        Response.Redirect("/Interests/ListInterest.aspx");
    }
}