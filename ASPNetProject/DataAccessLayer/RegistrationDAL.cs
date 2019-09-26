using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using EntityLayer;
using System.Data;
using System.Data.SqlClient;

namespace DataAccessLayer
{
    public class RegistrationDAL
    {
        masterEntities db = new masterEntities();
        public bool InsertRegistration(RegistrationEntity re)
        {
            try
            {
                Registration rdb = new Registration();//contain the new of data to be inserted
                rdb.Name = re.Name;
                rdb.Address = re.Address;
                rdb.DOB = re.DOB;
                rdb.DOJ = re.DOJ;
                rdb.Nationality = re.Nationality;
                rdb.Qualification = re.Quali;
                rdb.Hobbies = re.Hobbies;
                rdb.SkillSets = re.Skills;
                rdb.Salary = re.Salary;

                db.Registrations.AddObject(rdb);//add to conceptual model
                int res = db.SaveChanges();//update the values in conceptual model to actual DB

                if (res > 0)
                    return true;


            }
            catch (Exception ex)
            {
                throw ex;
            }
            return false;
        }


        public RegistrationEntity SelectByID(int id)
        {
            RegistrationEntity entity = new RegistrationEntity();
            try
            {
                var data = db.Registrations.Where(x => x.RegID == id).SingleOrDefault();

                entity.Name = data.Name;
                entity.Address = data.Address;
                entity.DOB = data.DOB;
                entity.DOJ = data.DOJ;
                entity.Gender = data.Gender;
                entity.Nationality = data.Nationality;
                entity.Quali = data.Qualification;
                entity.Skills = data.SkillSets;
                entity.Hobbies = data.Hobbies;
                entity.Salary = data.Salary;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return entity;
        }

        public bool UpdateRegistration(string address, decimal salary, int regid)
        {
            try
            {
                var old = db.Registrations.Where(x => x.RegID == regid).SingleOrDefault();

                old.Address = address;
                old.Salary = salary;
                old.RegID = regid;

                var res = db.SaveChanges();//update changes to the database

                if (res > 0)
                    return true;
                
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return false;

        }

        public bool DeleteRegistration(int id)
        {
            try
            {
                var del = db.Registrations.Where(x => x.RegID == id).SingleOrDefault();
                db.Registrations.DeleteObject(del);

                var res = db.SaveChanges();
                if (res > 0)
                    return true;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return false;
        }

        public List<CustomEntity> JoinExample()
        {
            List<CustomEntity> clist = new List<CustomEntity>();
            try
            {
                var join= (from c in db.courseinfoes join s in db.Studentinfoes on c.cid equals s.courseid select new {CNAME=c.coursename,SNAME=s.name}).ToList();

                foreach (var j in join)
                {
                    CustomEntity ce = new CustomEntity();
                    ce.StudentName = j.SNAME;
                    ce.CourseName = j.CNAME;
                    clist.Add(ce);
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }
            return clist;
        }


    }
}
