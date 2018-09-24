using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Helper;
using PreShop.EmailService;

namespace PreShop.UserRegistrations
{
    public partial class UserRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                tbl_Registration obj = new tbl_Registration();
                obj.FirstName = txtFirstName.Text;
                obj.LastName = txtLastName.Text;
                obj.Email = txtEmail.Text;
                obj.Password = txtPassowrd.Text;
                obj.Image = null;
                obj.Address = txtAddress.Text;
                obj.Status = 0;
                obj.Save();
                EmailHelper.SendMail(obj.Email, "Sign Up Confirmation","<a>Click Here</a> To Confirm Your Account");
                lbl.Text = "Registered Successfully";
            }
        }
    }
}