<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserForm.ascx.cs" Inherits="comp2007_assign1.UserForm" %>

<div class="results">
    <asp:Label runat="server" Text="Results:"></asp:Label>
    <asp:RadioButtonList ID="ResultsRadioButtonList" runat="server" RepeatDirection="Horizontal" Width="350">
        <asp:ListItem Text="Win" Value="Win"></asp:ListItem>
        <asp:ListItem Text="Lose" Value="Lose"></asp:ListItem>
    </asp:RadioButtonList><!--Results1RadioButtonList-->
</div>
<!--results-->

<div class="form-group">
    <asp:Label runat="server" Text="Score:"></asp:Label>
    <asp:TextBox CssClass="form-control" ID="ScoreTextBox" runat="server" placeholder="Enter The Games Score"></asp:TextBox>
</div>
<!--Score-->

<div class="form-group">
    <asp:Label runat="server" Text="Points Allowed:"></asp:Label>
    <asp:TextBox CssClass="form-control" ID="PointsAllowedTextBox" runat="server" placeholder="Enter The Points Allowed"></asp:TextBox>
</div>
<!--PointsAllowed-->

<div class="form-group">
    <asp:Label runat="server" Text="Spectators:"></asp:Label>
    <asp:TextBox CssClass="form-control" ID="SpectatorsTextBox" runat="server" placeholder="Enter The Number of Spectators"></asp:TextBox>
</div>
<!--Spectators-->

