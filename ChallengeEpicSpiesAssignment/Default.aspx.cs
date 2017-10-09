using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChallengeEpicSpiesAssignment
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                endCalendar.SelectedDate = DateTime.Now.Date;
                startCalendar.SelectedDate = DateTime.Now.Date.AddDays(14);
                projectedCalendar.SelectedDate = DateTime.Now.Date.AddDays(21);
            }
            Page.MaintainScrollPositionOnPostBack = true;

        }

        protected void assignBttn_Click(object sender, EventArgs e)
        {
            double startDate = startCalendar.SelectedDate.Subtract(endCalendar.SelectedDate).TotalDays;

            if (startDate <= 7)
            {
                resultlbl.Text = "Error: Must allow at least 2 weeks between previouse assignment and the new assignment.";
                startCalendar.SelectedDate = endCalendar.SelectedDate.AddDays(14);
            }

            double workingDays = projectedCalendar.SelectedDate.Subtract(startCalendar.SelectedDate).TotalDays;

            double salary = workingDays * 500;

            if (workingDays > 21)
            { 
               salary = (workingDays * 500) + 1000;
            }

            
            resultlbl.Text = String.Format("Assignment of {0} to {1} is authorized. Budget total: {2:C}"
                , nameBox.Text, AssignmentBox.Text, salary);
                 
        }
    }
}