using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Helper;

namespace PreShop.UserRegistrations
{
    public partial class User : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //SpartansHelper.FillDropDown(ddlCity, "select * from tbl_Cities where isActive=1", "City", "CityID", "Select City", "-1");
                //SpartansHelper.BindDataSource("select top 8 * from tbl_Categories where isActive=1", rptMainRepeater);
            }
        }
        protected void rptMainRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            var rptSubCaeogry = (Repeater)e.Item.FindControl("rptSubCaeogry");
            var hfCategoryID = (HiddenField)e.Item.FindControl("hfCategoryID");
            SpartansHelper.BindDataSource("select top 6 * from tbl_Subcategories where isActive=1 and CategoryID=" + hfCategoryID.Value, rptSubCaeogry);
        }

        protected void rptSubCaeogry_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            var rptSubItems = (Repeater)e.Item.FindControl("rptSubItems");
            var hfSubCategoryID = (HiddenField)e.Item.FindControl("hfSubCategoryID");
            SpartansHelper.BindDataSource("select top 4 * from tbl_SubcategoryHeadings where Status=1 and SubCategoryID=" + hfSubCategoryID.Value, rptSubItems);
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewProducts.aspx" + QueryStringModule.Encrypt("Search=" + txtSearch.Text));
        }
    }
}