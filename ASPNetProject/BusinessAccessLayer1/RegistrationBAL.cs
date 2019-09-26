using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EntityLayer;
using DataAccessLayer;
using System.Data;

namespace BusinessLayer
{
    public class RegistrationBAL
    {

        RegistrationDAL dal = new RegistrationDAL();
      

        public bool InsertRegistration (RegistrationEntity entity)
        {
            if (entity.DOB >= DateTime.Now)
                throw new Exception("DOB invalid");
            if (entity.DOJ >= DateTime.Now)
                throw new Exception("Cannot register an employee who has not joined");
            if (entity.Salary >= 10000 && entity.Salary <= 75000)
            {

            }
            else
                throw new Exception("Salary range between 10000 and 75000 ");
            return dal.InsertRegistration(entity);
        }

        public RegistrationEntity SelectByID(int id)
        {
            return dal.SelectByID(id);
        }

        public bool UpdateRegistration(string add, decimal sal, int regid)
        {
            return dal.UpdateRegistration(add, sal, regid);
        }

        //public IList<RegistrationEntity> SelectRegistration()
        //{
        //    return dal.SelectRegistration();
        //}


        public bool DeleteRegistration(int regid)
        {
            return dal.DeleteRegistration(regid);
        }


        public List<CustomEntity> JoinExample()
        {
            return dal.JoinExample();
        }


        //public int CallSP_sp_insertregistration(RegistrationEntity entity)
        //{
        //    if (entity.DOB >= DateTime.Now)
        //        throw new Exception("DOB invalid");
        //    if (entity.DOJ >= DateTime.Now)
        //        throw new Exception("Cannot register an employee who has not joined");
        //    if (entity.Salary >= 10000 && entity.Salary <= 75000)
        //    {

        //    }
        //    else
        //        throw new Exception("Salary range between 10000 and 75000 ");

        //    return dal.CallSP_sp_insertregistration(entity);
        //}
        //public DataSet ShowEmpProject_Report()
        //{
        //    return dal.ShowEmpProject_Report();
        //}


    }
}
