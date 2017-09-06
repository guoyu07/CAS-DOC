using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace Show_Socut_Data
{
	/// <summary>
	/// _default 的摘要说明。
	/// </summary>
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, System.EventArgs e)
        {
            // 在此处放置用户代码以初始化页面
            if (Session["UserName"] == null)
            {
                //如果用户未登陆
                T2.Visible = false;//隐藏表格二
            }
            else//如果登陆
            {
                T1.Visible = false;//隐藏表格一
                Label1.Text = Session["UserName"].ToString();//显示用户名
            }
        }

        protected void Button1_Click(object sender, System.EventArgs e)
        {
        }
    }
}
