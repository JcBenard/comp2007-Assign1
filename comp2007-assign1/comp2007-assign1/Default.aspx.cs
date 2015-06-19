using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace comp2007_assign1
{
    public partial class _Default : Page
    {

        private int totalWins = 0;
        private int totalScore = 0;
        private int totalAllowed = 0;
        private int totalSpec = 0;
        private int gameScore;
        private int gameAllow;
        private int gameSpec;
        private Boolean gameWon;
        private Boolean invalidInput = false;
        private UserForm currentForm;
        private ContentPlaceHolder MainContent;

        protected void Page_Load(object sender, EventArgs e)
        {
            //get the MainContent of the page for reference
            MainContent = Page.Master.FindControl("MainContent") as ContentPlaceHolder;
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {       
            //call the clear method to set all the results fields to blank
            clear();

            try
            {
                for (int index = 1; index <= 4; index++)
                {
                    //get the current user control form
                    currentForm = (UserForm)MainContent.FindControl("form" + index);

                    if (currentForm.results == "Win"){
                        totalWins = totalWins + 1;
                        gameWon = true;
                    }else{
                        gameWon = false;
                    }

                    //get the information from the fields
                    gameScore = Int32.Parse(currentForm.score);
                    gameAllow = Int32.Parse(currentForm.pointsAllowed);
                    gameSpec = Int32.Parse(currentForm.spectators);

                    //add the current game numbers to the totals
                    totalScore = totalScore + gameScore;
                    totalAllowed = totalAllowed + gameAllow;
                    totalSpec = totalSpec + gameSpec;

                    //validate that the fields have valid values
                    if (gameScore == gameAllow)//if the score are tied
                    {
                        //set the text in the fields to tell the users the error then change the invalid flag to true
                        currentForm.score = gameScore + " Games cannot end in a tie.";
                        currentForm.pointsAllowed = gameAllow + " Games cannot end in a tie.";
                        invalidInput = true;
                    }

                    if (gameWon == true && gameScore < gameAllow)//if the game was won but the score is less then allowed
                    {
                        //set the text in the fields to tell the users the error then change the invalid flag to true
                        currentForm.score = gameScore + " Score Must Be higher then allowed if game is won.";
                        currentForm.pointsAllowed = gameAllow + " Allowed must be less then scored if game is won.";
                        invalidInput = true;
                    }

                    if (gameWon == false && gameScore > gameAllow)//if the game was lost but the score was more then allowed
                    {
                        //set the text in the fields to tell the users the error then change the invalid flag to true
                        currentForm.score = gameScore + " Score Must Be lower then allowed if game is lost.";
                        currentForm.pointsAllowed = gameAllow + " Allowed must be higher then scored if game is lost.";
                        invalidInput = true;
                    }

                    if (gameScore < 0)//if the score is less then 0
                    {
                        //set the text in the fields to tell the users the error then change the invalid flag to true
                        currentForm.score = gameScore + " Score cannot be negative.";
                        invalidInput = true;
                    }

                    if (gameAllow < 0)//if the allowed is less then 0
                    {
                        //set the text in the fields to tell the users the error then change the invalid flag to true
                        currentForm.pointsAllowed = gameAllow + " Allowed cannot be negative.";
                        invalidInput = true;
                    }

                    if (gameSpec < 0)//if the spectators are less then 0
                    {
                        //set the text in the fields to tell the users the error then change the invalid flag to true
                        currentForm.spectators = gameSpec + " Spectators cannot be negative.";
                        invalidInput = true;
                    }
                }//end of for

                if (invalidInput == false)//if none of the fields are invalid
                {
                    //update the text in the results labels doing calculations when needed
                    GamesWonLabel.Text = "Total Won: " + totalWins;
                    GamesLoseLabel.Text = "Total Lost: " + (4 - totalWins);
                    PercentWonLabel.Text = "Percent Won: %" + (totalWins * 100 / 4);
                    TotalScoredLabel.Text = "Total Scored: " + totalScore;
                    TotalAllowedLabel.Text = "Total Allowed: " + totalAllowed;
                    TotalSpecLabel.Text = "Total Specators: " + totalSpec;
                    PointDifferenceLabel.Text = "Score Difference: " + (totalScore - totalAllowed);
                    AvgSpecLabel.Text = "Average Specators: " + (totalSpec / 4);
                }
            }//end of try
            catch
            {
                //tell the user that all fields must be complete
                GamesWonLabel.Text = "All Fields must be Filled in.";
            }//end of catch
        }//end of submitButton

        protected void ClearButton_Click(object sender, EventArgs e)
        {
            //call the clear method to set all the results fields to blank
            clear();

            for (int index = 1; index <= 4; index++)
            {
                //get the current user control form
                currentForm = (UserForm)MainContent.FindControl("form" + index);

                //set the fields to default values
                currentForm.results = "-1";
                currentForm.score = "";
                currentForm.pointsAllowed = "";
                currentForm.spectators = "";
            }//end of for
        }//end of ClearButton

        private void clear()//clears the results fields
        {
            GamesWonLabel.Text = "";
            GamesLoseLabel.Text = "";
            PercentWonLabel.Text = "";
            TotalScoredLabel.Text = "";
            TotalAllowedLabel.Text = "";
            TotalSpecLabel.Text = "";
            PointDifferenceLabel.Text = "";
            AvgSpecLabel.Text = "";
        }//end of clear
    }//end of class
}//end of program