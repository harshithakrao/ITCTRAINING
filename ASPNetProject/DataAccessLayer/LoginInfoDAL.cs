using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using EntityLayer;

namespace DataAccessLayer
{
    public class LoginInfoDAL
    {
        masterEntities db = new masterEntities();
        public bool Authenticate(LoginInfoEntity le)
        {
            //code is written using LINQ or LAMBDA
            try
            {
                var result = db.Logininfoes.Where(x => x.mobno == le.MobNo && x.password == le.Password).SingleOrDefault();
                if (result == null)
                    return false;



            }
            catch(Exception ex)
            {
                throw ex;
            }
            return true;

        }
    }
}
