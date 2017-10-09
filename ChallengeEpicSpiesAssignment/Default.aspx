<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ChallengeEpicSpiesAssignment.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 299px;
            height: 359px;
        }
        .auto-style2 {
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <img alt="" class="auto-style1" src="logo.PNG" /><br />
            <h1 class="auto-style2">Spy New Assignment Form</h1>
            <p class="auto-style2">
                Spy Code Name:
                <asp:TextBox ID="nameBox" runat="server"></asp:TextBox>
            </p>
            <p class="auto-style2">
                New Assignment Name:
                <asp:TextBox ID="AssignmentBox" runat="server"></asp:TextBox>
            </p>
            <p class="auto-style2">
                End Date of Previous Assignment </p>
            <p class="auto-style2">
                <asp:Calendar ID="endCalendar" runat="server"></asp:Calendar>
            </p>
            <p class="auto-style2">
                &nbsp;</p>
            <p class="auto-style2">
                Start Date of New Assignment </p>
            <p class="auto-style2">
                <asp:Calendar ID="startCalendar" runat="server"></asp:Calendar>
            </p>
            <p class="auto-style2">
                &nbsp;</p>
            <p class="auto-style2">
                Projected End Date of New Assignment</p>
            <p class="auto-style2">
                <asp:Calendar ID="projectedCalendar" runat="server"></asp:Calendar>
            </p>
            <p class="auto-style2">
                &nbsp;</p>
            <p class="auto-style2">
                <asp:Button ID="assignBttn" runat="server" OnClick="assignBttn_Click" Text="Assign Spy" />
            </p>
            <p class="auto-style2">
                &nbsp;</p>
            <p class="auto-style2">
                <asp:Label ID="resultlbl" runat="server"></asp:Label>
            </p>
            <p class="auto-style2">
                &nbsp;</p>
            <p class="auto-style2">
                &nbsp;</p>
        </div>
    </form>
</body>
</html>
