using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace comp2007_assign1
{
    public partial class UserForm : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Getter and setter methods for the fields
        public string results
        {
            get { return ResultsRadioButtonList.SelectedItem.Text; ; }
            set { ResultsRadioButtonList.SelectedIndex = Int32.Parse(value); }
        }

        public string score
        {
            get { return ScoreTextBox.Text; }
            set { ScoreTextBox.Text = value; }
        }

        public string pointsAllowed
        {
            get { return PointsAllowedTextBox.Text; }
            set { PointsAllowedTextBox.Text = value; }
        }

        public string spectators
        {
            get { return SpectatorsTextBox.Text; }
            set { SpectatorsTextBox.Text = value; }
        }
    }
}