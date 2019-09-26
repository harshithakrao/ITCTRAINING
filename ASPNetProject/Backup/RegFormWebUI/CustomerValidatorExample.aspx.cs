using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegFormWebUI
{
    public partial class CustomerValidatorExample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string data = args.Value;
            //args.Value will get the data entered in Textbox that has to be validated

            char[] ch=data.ToCharArray();
            foreach (var c in ch)
            {
                if (!char.IsUpper(c))
                    args.IsValid = false;
            }
        }
    }
}