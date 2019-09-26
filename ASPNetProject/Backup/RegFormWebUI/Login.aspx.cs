using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
using EntityLayer;
using System.Web.Security;

namespace RegFormWebUI
{
    public partial class Login : System.Web.UI.Page
    {
        LoginBAL bal = new LoginBAL();
        LoginInfoEntity entity = new LoginInfoEntity();
      
        protected void Page_Load(object sender, EventArgs e)
        {
            


        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            try
            {
                entity.MobNo = long.Parse(Login1.UserName);
                entity.Password = Login1.Password;

                var res = bal.Authenticate(entity);

                if (res)
                {
                    FormsAuthentication.RedirectFromLoginPage(Login1.UserName, false);
                }
                else
                    Login1.FailureText = "Invalid credentials";
            }
            catch (Exception ex)
            {
                Login1.FailureText = ex.Message;
            }
        }

       
    }
}