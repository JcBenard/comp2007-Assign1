<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="comp2007_assign1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <div class="row">

        <div class="col-md-4 col-md-offset-2">

            <h1>Game 1</h1>

            <div class="results">
                <asp:Label  runat="server" Text="Results:"></asp:Label>
                <asp:RadioButtonList id="ResultsRadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="350">
                    <asp:ListItem Text="Win" Value="Win"></asp:ListItem>
                    <asp:ListItem Text="Lose" Value="Lose"></asp:ListItem>
                </asp:RadioButtonList><!--Results1RadioButtonList-->
            </div><!--results1-->

            <div class="form-group">
                <asp:Label runat="server" Text="Score:"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="ScoreTextBox1" runat="server" placeholder="Enter The Games Score"></asp:TextBox>
            </div><!--Score1-->

             <div class="form-group">
                <asp:Label runat="server" Text="Points Allowed:"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="PointsAllowedTextBox1" runat="server" placeholder="Enter The Points Allowed"></asp:TextBox>
            </div><!--PointsAllowed1-->   
            
            <div class="form-group">
                <asp:Label runat="server" Text="Spectators:"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="SpectatorsTextBox1" runat="server" placeholder="Enter The Number of Spectators"></asp:TextBox>
            </div><!--PointsAllowed1-->      
        </div><!--col-md-4 col-md-offset-2-->

        <div class="col-md-4">

            <h1>Game 2</h1>

            <div class="results">
                <asp:Label  runat="server" Text="Results:"></asp:Label>
                <asp:RadioButtonList id="ResultsRadioButtonList2" runat="server" RepeatDirection="Horizontal" Width="350">
                    <asp:ListItem Text="Win" Value="Win"></asp:ListItem>
                    <asp:ListItem Text="Lose" Value="Lose"></asp:ListItem>
                </asp:RadioButtonList><!--Results1RadioButtonList-->
            </div><!--results1-->

            <div class="form-group">
                <asp:Label runat="server" Text="Score:"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="ScoreTextBox2" runat="server" placeholder="Enter The Games Score"></asp:TextBox>
            </div><!--Score1-->

             <div class="form-group">
                <asp:Label runat="server" Text="Points Allowed:"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="PointsAllowedTextBox2" runat="server" placeholder="Enter The Points Allowed"></asp:TextBox>
            </div><!--PointsAllowed1-->   
            
            <div class="form-group">
                <asp:Label runat="server" Text="Spectators:"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="SpectatorsTextBox2" runat="server" placeholder="Enter The Number of Spectators"></asp:TextBox>
            </div><!--PointsAllowed1--> 
        </div><!--col-md-4-->

    </div><!--row-->

    <div class="row">

        <div class="col-md-4 col-md-offset-2">
            <h1>Game 3</h1>

            <div class="results">
                <asp:Label  runat="server" Text="Results:"></asp:Label>
                <asp:RadioButtonList id="ResultsRadioButtonList3" runat="server" RepeatDirection="Horizontal" Width="350">
                    <asp:ListItem Text="Win" Value="Win"></asp:ListItem>
                    <asp:ListItem Text="Lose" Value="Lose"></asp:ListItem>
                </asp:RadioButtonList><!--Results1RadioButtonList-->
            </div><!--results1-->

            <div class="form-group">
                <asp:Label runat="server" Text="Score:"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="ResultsTextBox3" runat="server" placeholder="Enter The Games Score"></asp:TextBox>
            </div><!--Score1-->

             <div class="form-group">
                <asp:Label runat="server" Text="Points Allowed:"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="PointsAllowedTextBox3" runat="server" placeholder="Enter The Points Allowed"></asp:TextBox>
            </div><!--PointsAllowed1-->   
            
            <div class="form-group">
                <asp:Label runat="server" Text="Spectators:"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="SpectatorsTextBox3" runat="server" placeholder="Enter The Number of Spectators"></asp:TextBox>
            </div><!--PointsAllowed1--> 
        </div><!--col-md-4 col-md-offset-2-->

        <div class="col-md-4">
            <h1>Game 4</h1>

            <div class="results">
                <asp:Label  runat="server" Text="Results:"></asp:Label>
                <asp:RadioButtonList id="ResultsRadioButtonList4" runat="server" RepeatDirection="Horizontal" Width="350">
                    <asp:ListItem Text="Win" Value="Win"></asp:ListItem>
                    <asp:ListItem Text="Lose" Value="Lose"></asp:ListItem>
                </asp:RadioButtonList><!--Results1RadioButtonList-->
            </div><!--results1-->

            <div class="form-group">
                <asp:Label runat="server" Text="Score:"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="ScoreTextBox4" runat="server" placeholder="Enter The Games Score"></asp:TextBox>
            </div><!--Score1-->

             <div class="form-group">
                <asp:Label runat="server" Text="Points Allowed:"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="PointsAllowedTextBox4" runat="server" placeholder="Enter The Points Allowed"></asp:TextBox>
            </div><!--PointsAllowed1-->   
            
            <div class="form-group">
                <asp:Label runat="server" Text="Spectators:"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="SpectatorsTextBox4" runat="server" placeholder="Enter The Number of Spectators"></asp:TextBox>
            </div><!--PointsAllowed1--> 
        </div><!--col-md-4-->

    </div><!--row-->

    <div class="row">
        <div class="col-md-1 col-md-offset-5">
            <asp:Button CssClass="btn btn-default" ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
        </div><!--col-md-1 col-md-offset-5-->   
    </div><!--row-->

    <div class="row">
        <div class="col-md-2 col-md-offset-4">
            <asp:Label ID="FNLabel" runat="server"></asp:Label>
        </div><!--col-md-2 col-md-offset-4-->
    </div><!--row-->

</asp:Content>
