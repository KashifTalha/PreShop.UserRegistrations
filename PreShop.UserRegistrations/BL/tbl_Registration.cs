using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Helper;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace PreShop.UserRegistrations
{
    public class tbl_Registration : SpartansHelper
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string Image { get; set; }
        public string Address { get; set; }
        public int Status { get; set; }


        public bool Save()
        {
            SqlParameter[] par = new SqlParameter[7];
            {
                par[0] = new SqlParameter("@FirstName", FirstName);
                par[1] = new SqlParameter("@LastName", LastName);
                par[2] = new SqlParameter("@Email", Email);
                par[3] = new SqlParameter("@Password", Password);
                par[4] = new SqlParameter("@Image", Image);
                par[5] = new SqlParameter("@Address", Address);
                par[6] = new SqlParameter("@Status", Status);
                SpartansHelper.ExecuteQuery("sp_Registration", par);
                return true;
            }
        }

        static SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
        public DataTable LogIn()
        {
            SqlParameter[] par = new SqlParameter[2];
            {
                par[0] = new SqlParameter("@Email", Email);
                par[1] = new SqlParameter("@Password", Password);
                string qry = "select * from tbl_Registration where Email='" + Email + "' and Password='" + Password + "'";
                return SpartansHelper.ExecutePlainQuery(qry);
            }

        }
    }
}