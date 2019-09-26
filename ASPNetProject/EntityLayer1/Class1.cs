using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EntityLayer
{
    public class RegistrationEntity
    {
        public int RegID { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public DateTime? DOB { get; set; }
        public string Gender { get; set; }
        public string Nationality { get; set; }
        public string Quali { get; set; }
        public string Skills { get; set; }
        public string Hobbies { get; set; }
        public DateTime? DOJ { get; set; }
        public decimal? Salary { get; set; }

    }
}
