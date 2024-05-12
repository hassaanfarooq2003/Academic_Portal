<%@ Page Language="C#" AutoEventWireup="true" CodeFile="homepage.aspx.cs" Inherits="_Default" %>

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
                border-radius:10px;
                 box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
                }

            .mt-5 {
                height: 117px;
            }

            .table-dark-header th {
                background-color: #1D2231;
                --colour-dark: #fff;
            }

            .table {
                margin-top: 105px;
                background-color: #ffffff;
                /* Set your desired background color for tables */
                box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
                padding: 2rem;
            }

            .table th {
                background-color: #88beef;
                /* Set your desired background color for table headers */
                color: #fff;
                padding: 0.5rem;
            }

            .table td {
                padding: 0.5rem;
            }

            .table tr:nth-child(even) {
                background-color: #f1f5f9;
                /* Set your desired background color for even rows */
            }

            .table tr:nth-child(odd) {
                background-color: #fff;
                /* Set your desired background color for odd rows */
            }

            .custom-table {
                background-color: #f1f5f9;
                padding: 2rem 1.5rem;
                box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
                border-radius:10px;
                overflow:hidden;
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
                transition: color .15s ease-in-out, background-color .15s ease-in-out, border-color .15s ease-in-out, box-shadow .15s ease-in-out;
            }

            .btn-custom:hover {
                color: #fff;
                background-color: #0056b3;
                border-color: #004c99;
            }

            .btn-custom:focus,
            .btn-custom.focus {
                outline: 0;
                box-shadow: 0 0 0 .2rem rgba(38, 143, 255, .5);
            }
        </style>

    </head>

    <body>
        <form id="form1" runat="server">
            <div class="sidebar">
                <div class="sidebar-brand">
                    <asp:ImageButton ID="Homebutton" runat="server" Height="108px" ImageUrl="~/logo.png" Width="110px"
                        OnClick="Homebutton_Click" />

                </div>

                <div class="sidebar-brand">
                    <ul>
                        <li>
                            <span class="las la-igloo">
                                <asp:LinkButton ID="LinkButton1" CssClass="btn-custom" runat="server"
                                    OnClick="LinkButton1_Click1" Height="37px" Width="216px">Course Registration
                                </asp:LinkButton>
                            </span>

                        </li>
                        <li style="height: 61px; width: 304px; margin-top: 28px;">
                            <asp:LinkButton ID="LinkButton2" CssClass="btn-custom" runat="server"
                                OnClick="LinkButton2_Click" Height="35px" Width="213px">Marks</asp:LinkButton>

                        </li>
                        <li style="height: 47px; width: 306px">
                            <asp:LinkButton ID="LinkButton3" CssClass="btn-custom" runat="server"
                                OnClick="LinkButton3_Click" Height="34px" Width="210px">Feedback </asp:LinkButton>
                        </li>
                        <li style="height: 49px; width: 305px">
                            <asp:LinkButton ID="LinkButton4" CssClass="btn-custom" runat="server"
                                OnClick="LinkButton4_Click" Height="33px" Width="208px">Attendance </asp:LinkButton>
                        </li>
                        <li style="height: 51px; width: 305px">
                            <asp:LinkButton ID="LinkButton5" CssClass="btn-custom" runat="server"
                                OnClick="LinkButton5_Click" Height="32px" Width="205px">Transcript </asp:LinkButton>
                        </li>
                        <li style="height: 50px">
                            <asp:LinkButton ID="LinkButton6" CssClass="btn-custom" runat="server"
                                OnClick="LinkButton6_Click" Height="31px" Width="204px">LinkButton </asp:LinkButton>
                        </li>
                        <li style="height: 39px; width: 298px">
                            <label for="">
                                <span class="las la-bars">
                                    <asp:LinkButton ID="Logout" CssClass="btn-custom" runat="server"
                                        OnClick="LinkButton7_Click" Height="34px" Width="203px">Logout </asp:LinkButton>
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
                    <h2>Academic Information<asp:Table ID="Table1" CssClass="table-dark-header custom-table"
                            runat="server" Height="18px" Width="548px" style="margin-top: 15px">
                            <asp:TableRow>
                                <asp:TableCell>Roll Number</asp:TableCell>

                            </asp:TableRow>
                            <asp:TableRow >
                                <asp:TableCell>Program</asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </h2>
                     <h2>Student Bio-data<asp:Table ID="Table2" CssClass="table-dark-header custom-table"
                            runat="server" Height="18px" Width="548px" style="margin-top: 15px">
                            <asp:TableRow>
                                <asp:TableCell>Name: </asp:TableCell>

                            </asp:TableRow>
                            <asp:TableRow >
                                <asp:TableCell>Address</asp:TableCell>

                            </asp:TableRow>
                            <asp:TableRow >
                                <asp:TableCell>CNIC</asp:TableCell>

                            </asp:TableRow>
                            <asp:TableRow >
                                <asp:TableCell>Blood Group</asp:TableCell>
                            </asp:TableRow>
                             <asp:TableRow >
                                <asp:TableCell>Phone-No</asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </h2>


                    <!--NEED TO CREATE THE GRAPH OVERHERE-->
                        <h2>CGPA<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FLEXConnectionString2 %>" ProviderName="<%$ ConnectionStrings:FLEXConnectionString2.ProviderName %>" SelectCommand="SELECT [USERID], [PROG_NAME], [STREET_NO], [LOC_AREA], [REG_NUM], [CNIC] FROM [STUDENTS]"></asp:SqlDataSource>
                            <asp:Table ID="Table3" CssClass="table-dark-header custom-table"
                            runat="server" Height="16px" Width="548px" style="margin-top: 15px">
                            
                        </asp:Table>
                    </h2>

                 

                

                </main>

            </div>


        </form>
    </body>

    </html>