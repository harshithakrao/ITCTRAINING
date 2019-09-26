using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccessLayer;
using EntityLayer;

namespace BusinessLayer
{
    public class LoginBAL
    {
        LoginInfoDAL dal = new LoginInfoDAL();

        public bool Authenticate(LoginInfoEntity le)
        {
            return dal.Authenticate(le);
        }
    }
}
