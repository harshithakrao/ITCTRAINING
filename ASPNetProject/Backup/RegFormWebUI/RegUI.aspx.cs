using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
using EntityLayer;

namespace RegFormWebUI
{
    public partial class RegUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //TextBox

            string name = TextBox1.Text;
            string add = TextBox2.Text;
            DateTime dob = DateTime.Parse(TextBox3.Text);
            DateTime doj = DateTime.Parse(TextBox4.Text);
            
            decimal sal = decimal.Parse(TextBox5.Text);

            //drop down list

            string nation = ddlNationality.SelectedItem.Text;

            //List Box, Checked List box

            string q="";
            foreach(ListItem li in lbQualification.Items)
                if(li.Selected)
                    q+=li.Text+",";

            string sk="";
            foreach(ListItem li in clbSkills.Items)
                if(li.Selected)
                    sk+=li.Text+",";

            string h="";
            foreach(var t in hobby)
                    h+=t+",";

            lblResult.Text=name+"<br/>"+add+"<br/>"+dob+"<br/>"+gender+"<br/>"+nation+"<br/>"+q+"<br/>"+sk+"<br/>"+h+"<br/>"+doj+"<br/>"+sal;
        }

        string gender = "";

        protected void rbmale_CheckedChanged(object sender, EventArgs e)
        {
                    gender = rbmale.Text;
        }

        protected void F_CheckedChanged(object sender, EventArgs e)
        {
                    gender =rbFemale.Text;
        }

        List<string> hobby = new List<string>();

        protected void cbSwim_CheckedChanged(object sender, EventArgs e)
        {
            if (cbSwim.Checked)
                hobby.Add(cbSwim.Text);
            else
                hobby.Remove(cbSwim.Text);
        }

        protected void cbRead_CheckedChanged(object sender, EventArgs e)
        {
            if (cbRead.Checked)
                hobby.Add(cbRead.Text);
            else
                hobby.Remove(cbRead.Text);
        }

        protected void cbMusic_CheckedChanged(object sender, EventArgs e)
        {
            if (cbMusic.Checked)
                hobby.Add(cbMusic.Text);
            else
                hobby.Remove(cbMusic.Text);
        }

        protected void cbMobile_CheckedChanged(object sender, EventArgs e)
        {
            if (cbMobile.Checked)
                hobby.Add(cbMobile.Text);
            else
                hobby.Remove(cbMobile.Text);
        }

        protected void cbCook_CheckedChanged(object sender, EventArgs e)
        {
            if (cbCook.Checked)
                hobby.Add(cbCook.Text);
            else
                hobby.Remove(cbCook.Text);
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";

            rbmale.Checked = false;
            rbFemale.Checked = false;

            cbSwim.Checked = false;
            cbRead.Checked = false;
            cbMusic.Checked = false;
            cbMobile.Checked = false;
            cbCook.Checked = false;

        }

        RegistrationBAL bal=new RegistrationBAL();

        protected void btnSelectByID_Click(object sender, EventArgs e)
        {
            try
            {
                int id = Convert.ToInt32(DropDownList1.SelectedValue);
                var res = bal.SelectByID(id);

                TextBox1.Text = res.Name;
                TextBox2.Text = res.Address;
                TextBox3.TextMode = TextBoxMode.SingleLine;
                TextBox3.Text = res.DOB.ToString();
                TextBox4.TextMode = TextBoxMode.SingleLine;
                TextBox4.Text = res.DOJ.ToString();
                TextBox5.Text = res.Salary.ToString();

                if (res.Gender == rbmale.Text)
                {
                    rbmale.Checked = true;
                }

                if (res.Gender == rbFemale.Text)
                {
                    rbFemale.Checked = true;
                }



                ddlNationality.Text = res.Nationality;


                //list box

                string[] q = res.Quali.Split(',');
                foreach (ListItem li in lbQualification.Items)
                {
                    foreach (var t in q)
                    {
                        if (li.Text == t)
                            li.Selected = true;
                    }
                }


                //checkedlistbox

                string[] sk=res.Skills.Split(',');
                foreach (ListItem li in clbSkills.Items)
                {
                    foreach (var t in sk)
                    {
                        if (li.Text == t)
                            li.Selected = true;
                    }
                }

                //hobbies

                string[] hob = res.Hobbies.Split(',');
                foreach (var h in hob)
                {
                    if (h == cbCook.Text)
                        cbCook.Checked = true;
                    if (h == cbRead.Text)
                        cbRead.Checked = true;
                    if (h == cbMusic.Text)
                        cbMusic.Checked = true;
                    if (h == cbMobile.Text)
                        cbMobile.Checked = true;
                    if (h == cbSwim.Text)
                        cbSwim.Checked = true;
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }


        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                string newadd = TextBox2.Text;
                decimal newsal = decimal.Parse(TextBox5.Text);
                var regid = Convert.ToInt32(DropDownList1.SelectedValue);
                var res = bal.UpdateRegistration(newadd, newsal, regid);

                if (res)
                    lblResult.Text = "Data Updated";
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                var regid = Convert.ToInt32(DropDownList1.SelectedValue);

                var res=bal.DeleteRegistration(regid);

                if (res)
                    lblResult.Text = "Data deleted";
                DropDownList1.DataBind();
            }
            catch (Exception ex)
            {
                lblResult.Text = ex.Message;
            }
           
        }

        protected void btnJoins_Click(object sender, EventArgs e)
        {
            try
            {
                GridView1.DataSource = bal.JoinExample();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                lblResult.Text= ex.Message;
            }
        }
    }
}