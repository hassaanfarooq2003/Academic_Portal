﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="studenthomepage.aspx.cs" Inherits="_Default" %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <title></title>

        <link rel="stylesheet" href="~/lib/bootstrap/dist/css/bootstrap.min.css" />
        <link rel="stylesheet" href="~/css/site.css" asp-append-version="true" />
        <link rel="stylesheet" href="~/WebApplication1.styles.css" asp-append-version="true" />
        <link rel="stylesheet" href="~/css/StyleSheet.css" /><!-- stylesheet for loginpage-->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Comic+Neue:wght@400;700&display=swap" rel="stylesheet">
        <link rel="stylesheet"
            href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
        <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
        <style>
            /*BODY OF THE CODE*/
            header {
                display: flex;
                justify-content: space-between;
                box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
                position: fixed;
                left: 345px;
                width: calc(100%-345px);
                top: 0;
                z-index: 100;
                right: 750px;
            }

            :root {
                --colour-dark: #1D2231;
                --text-grey: #8390A2;
            }

            * {
                padding: 0;
                marigin: 0;
                box-sizing: border-box;
                list-style-type: none;
                text-decoration: none;
            }

            body,
            html {
                height: 100%;
                font-family: 'Comic Neue', cursive;
            }

            .sidebar {
                width: 345px;
                position: fixed;
                left: 0;
                top: 0;
                height: 100%;
                background: #88BEEF;

            }

            .siderbar menu {
                margin-top: 1rem;
            }

            .sidebar-brand {
                height: 188px;
                colour: #0C5AA0;
                width: 347px;
            }

            .sidebar-brand span {
                display: inline-block;
                height: 26px;
                width: 142px;
            }

            .sidebar -menu li {
                width: 100%;
                margin-bottom: 1.3rem;
                padding-left: 2rem;
            }

            .main-content {
                margin-left: 345px;

            }

            main {
                margin-top: 90px;
                padding: 2rem 1.5rem;
                background: #f1f5f9;
                min-height: calc(100vh-90px);
            }

            /*           #LinkButton1.active {
               background:#fff;
               padding-top:1rem;
               padding-bottom:1rem;
               color:#88BEEF;
               border-radius:30px 0px 0px 30px;
           }*/

            .mt-5 {
                height: 117px;
            }

            .table {
                margin-top: 105px;
            }
            /*custom button hovering stuff*/
            .btn-custom {
    display: inline-block;
    color: #fff;
    text-align: center;
    vertical-align: middle;
    user-select: none;
    background-color: #007bff;
    border: 1px solid transparent;
    padding: .375rem .75rem;
    font-size: 1rem;
    line-height: 1.5;
    border-radius: .25rem;
    transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;
}

.btn-custom:hover {
    color: #fff;
    background-color: #0056b3;
    border-color: #004c99;
}

.btn-custom:focus, .btn-custom.focus {
    outline: 0;
    box-shadow: 0 0 0 .2rem rgba(38,143,255,.5);
}
        </style>

    </head>

    <body>
        <form id="form1" runat="server">
            <div class="sidebar">
                <div class="sidebar-brand">
                    <asp:ImageButton ID="Homebutton" runat="server" Height="108px" ImageUrl="~/logo.png"
                        Width="110px" />

                </div>

                <div class="sidebar-brand">
                    <ul>
                        <li>
                            <span class="las la-igloo">
                   <asp:LinkButton ID="LinkButton1" CssClass="btn-custom" runat="server" OnClick="LinkButton1_Click1">LinkButton</asp:LinkButton>
                            </span>

                        </li>
                        <li style="height: 61px; width: 304px; margin-top: 28px;">
                            <asp:LinkButton ID="LinkButton2" CssClass="btn-custom" runat="server" OnClick="LinkButton2_Click">LinkButton</asp:LinkButton>

                        </li>
                        <li style="height: 47px; width: 306px">
                            <asp:LinkButton ID="LinkButton3"  CssClass="btn-custom" runat="server" OnClick="LinkButton3_Click">LinkButton
                            </asp:LinkButton>
                        </li>
                        <li style="height: 49px; width: 305px">
                            <asp:LinkButton ID="LinkButton4"  CssClass="btn-custom" runat="server" OnClick="LinkButton4_Click">LinkButton
                            </asp:LinkButton>
                        </li>
                        <li style="height: 51px; width: 305px">
                            <asp:LinkButton ID="LinkButton5" CssClass="btn-custom" runat="server" OnClick="LinkButton5_Click">LinkButton
                            </asp:LinkButton>
                        </li>
                        <li style="height: 50px">
                            <asp:LinkButton ID="LinkButton6"  CssClass="btn-custom" runat="server" OnClick="LinkButton6_Click">LinkButton
                            </asp:LinkButton>
                        </li>
                        <li style="height: 39px; width: 298px">
                            <label for="">
                                <span class="las la-bars">
                                    <asp:LinkButton ID="Logout"  CssClass="btn-custom" runat="server" OnClick="LinkButton1_Click1">Logout
                                    </asp:LinkButton>
                                </span>
                            </label>
                        </li>
                        <li></li>
                    </ul>
                    <p>
                        &nbsp;</p>
                </div>



            </div>

            <div class="main-content">
                <header>
                    <h1>
                        <label for="">
                            Dashboard
                        </label>
                    </h1>

                </header>
                <main>
                    <h2>Academic Information</h2>
                    <asp:GridView ID="GridViewCurrentStatus" runat="server" CssClass="table" OnSelectedIndexChanged="GridViewCurrentStatus_SelectedIndexChanged"></asp:GridView>

                    <h2>Student Bio-data</h2>
                    <asp:GridView ID="GridViewStudentBiodata" runat="server" CssClass="table" OnSelectedIndexChanged="GridViewStudentBiodata_SelectedIndexChanged"></asp:GridView>

                    <h2>Attendance</h2>
                    <asp:GridView ID="GridViewAttendance" runat="server" CssClass="table" OnSelectedIndexChanged="GridViewAttendance_SelectedIndexChanged"></asp:GridView>

                    <h2>CGPA</h2>
                    <asp:GridView ID="GridViewCgpa" runat="server" CssClass="table" OnSelectedIndexChanged="GridViewCgpa_SelectedIndexChanged"></asp:GridView>

                </main>

            </div>


        </form>
    </body>

    </html>