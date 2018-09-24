using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PreShop.UserRegistrations
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                tbl_Registration obj = new tbl_Registration();
                obj.Email = txtEmail.Text;
                obj.Password = txtPassword.Text;
                DataTable dt = obj.LogIn();
                if (dt.Rows.Count > 0)
                {
                    if (checkbox.Checked)
                    {
                        Response.Cookies["UserEmail"].Value = dt.Rows[0]["Email"].ToString();
                        Response.Cookies["UserPassword"].Value = dt.Rows[0]["Password"].ToString();
                        Response.Cookies["UserEmail"].Expires.AddDays(30);
                        Response.Cookies["UserPassword"].Expires.AddDays(30);
                    }
                    Session["UserID"] = dt.Rows[0]["UserID"];
                    Response.Redirect("index.aspx");
                }
            }
            
        }
    }
}