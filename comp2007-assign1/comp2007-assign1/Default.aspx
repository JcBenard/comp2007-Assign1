<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="comp2007_assign1._Default" %>
<%@ Register TagPrefix="My" TagName="UserForm" Src="~/UserForm.ascx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <div class="row">

        <div class="col-md-4 col-md-offset-2">
            <h1>Game 1</h1>
            <My:UserForm runat="server" ID="form1" />
        </div><!--col-md-4 col-md-offset-2-->

        <div class="col-md-4">
            <h1>Game 2</h1>
            <My:UserForm runat="server" ID="form2" />
        </div><!--col-md-4-->

    </div><!--row-->

    <div class="row">

        <div class="col-md-4 col-md-offset-2">
            <h1>Game 3</h1>
            <My:UserForm runat="server" ID="form3" />
        </div><!--col-md-4 col-md-offset-2-->

        <div class="col-md-4">
            <h1>Game 4</h1>
            <My:UserForm runat="server" ID="form4" />
        </div><!--col-md-4-->

    </div><!--row-->

    <div class="row">
        <div class="col-md-2 col-md-offset-5">
            <asp:Button CssClass="btn btn-default" ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
            <asp:Button CssClass="btn btn-default" ID="ClearButton" runat="server" Text="Clear" OnClick="ClearButton_Click" />
        </div><!--col-md-1 col-md-offset-5-->   
    </div><!--row-->

    <div class="row">
        <div class="col-md-2 col-md-offset-4">
            <asp:Label ID="GamesWonLabel" runat="server"></asp:Label><br />
            <asp:Label ID="PercentWonLabel" runat="server"></asp:Label><br />
            <asp:Label ID="TotalAllowedLabel" runat="server"></asp:Label><br />
            <asp:Label ID="TotalSpecLabel" runat="server"></asp:Label>
        </div><!--col-md-2 col-md-offset-4-->

        <div class="col-md-2">
            <asp:Label ID="GamesLoseLabel" runat="server"></asp:Label><br />
            <asp:Label ID="TotalScoredLabel" runat="server"></asp:Label><br />
            <asp:Label ID="PointDifferenceLabel" runat="server"></asp:Label><br />
            <asp:Label ID="AvgSpecLabel" runat="server"></asp:Label>
        </div><!--col-md-2-->
    </div><!--row-->

</asp:Content>
