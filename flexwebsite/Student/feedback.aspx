<%@ Page Language="C#" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="_Default" %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <title>Feedback Form</title>
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
                border-radius: 10px;
                box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
            }

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

            .auto-style1 {
                width: 530px;
            }

            .auto-style2 {
                width: 530px;
                height: 85px;
            }

            .auto-style3 {
                height: 85px;
            }

            .auto-style4 {
                width: 100%;
                height: 261px;
                margin-top: 26px;
            }

            .auto-style6 {
                width: 141px;
            }

            .auto-style7 {
                height: 85px;
                width: 141px;
            }

            .auto-style8 {
                left: 343px;
                right: 843px;
                top: 0;
                width: 423px;
                height: 58px;
            }

            .auto-style9 {
                height: 52px;
                margin-top: 23px;
            }

            .auto-style11 {
                height: 41px;
                margin-top: 97px;
            }

            .auto-style12 {
                height: 73px;
                margin-top: 33px;
            }

            .auto-style13 {
                width: 530px;
                height: 44px;
            }

            .auto-style14 {
                height: 44px;
            }

            .auto-style15 {
                width: 530px;
                height: 56px;
            }

            .auto-style16 {
                height: 56px;
            }

            .auto-style17 {
                width: 530px;
                height: 52px;
            }

            .auto-style18 {
                height: 52px;
            }

            .auto-style19 {
                width: 530px;
                height: 35px;
            }

            .auto-style20 {
                height: 35px;
            }

            .auto-style21 {
                width: 530px;
                height: 36px;
            }

            .auto-style22 {
                height: 36px;
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
            }



            .auto-style23 {
                height: 45px;
            }

            .auto-style24 {
                height: 42px;
            }

            .auto-style25 {
                height: 39px;
            }

            .auto-style26 {
                height: 41px;
            }

            .auto-style27 {
                height: 57px;
            }

            .auto-style28 {
                height: 61px;
            }

            .auto-style29 {
                height: 59px;
            }

            /*button*/
            .cute-button {
                /* Customize the colors */
                background-color: #88BEEF;
                color: #ffffff;

                /* Add padding and margin */
                padding: 10px 20px;
                margin: 10px;

                /* Apply rounded borders */
                border-radius: 10px;

                /* Add box shadow for a raised effect */
                box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.2);

                /* Add transitions for hover effect */
                transition: background-color 0.3s ease-in-out;
            }

            /* Style on hover */
            .cute-button:hover {
                background-color: #ff9900;
                cursor: pointer;
            }

            .auto-style30 {
                /* Customize the colors */
                background-color: #88BEEF;
                color: #ffffff;
                /* Add padding and margin */
                ;
                padding: 10px 20px;
                margin: 5px 10px 10px 1145px;

                /* Apply rounded borders */
                border-radius: 10px;
                /* Add box shadow for a raised effect */
                ;
                box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.2);
                /* Add transitions for hover effect */
                ;
                transition: background-color 0.3s ease-in-out;
            }

            .auto-style32 {
                margin-left: 413px;
            }

            .auto-style33 {
                margin-left: 414px;
            }
        </style>
    </head>

    <body>
        <form id="form1" runat="server">
            <div class="sidebar">
                <div class="sidebar-brand">
                    <asp:ImageButton ID="Homebutton" runat="server" Height="108px" ImageUrl="~/logo.png" Width="110px"
                        OnClick="Homebutton_Click1" />

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
                <header class="auto-style8">
                    <h1 style="width: 405px">
                        FeedBack Form<label for="">
                        </label>
                    </h1>

                </header>
                <div>
                    <h3 class="auto-style11">Select the course that you want to give feedback</h3>
                </div>
                <div class="auto-style12">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                        DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="OFFERED_COURSE_CODE" HeaderText="OFFERED_COURSE_CODE"
                                SortExpression="OFFERED_COURSE_CODE" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button ID="Button1" runat="server" Text="Select"
                                        CommandArgument='<%# Eval("OFFERED_COURSE_CODE") + "," + Eval("FACULTY_ID") %>'
                                        OnClick="buttonSelect_Click" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                        ConnectionString="Data Source=DESKTOP-6CIDPD7\SQLEXPRESS02;Initial Catalog=FLEX;Integrated Security=True;"
                        SelectCommand="SELECT SECTIONS.OFFERED_COURSE_CODE, SECTIONS.FACULTY_ID FROM STUDENTS INNER JOIN REGISTRATION ON STUDENTS.REG_NUM = REGISTRATION.REG_NUM INNER JOIN SECTIONS ON REGISTRATION.SECTION_ID = SECTIONS.SECTION_ID WHERE STUDENTS.REG_NUM = @REG_NUM">
                        <SelectParameters>
                            <asp:SessionParameter Name="REG_NUM" SessionField="REG_NUM" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>

                <main>
                    <!--TABLE 1-->
                    <section id="section1">
                        <!-- table 1 -->
                        <div>
                            <h3 class="auto-style9">Appearance and Personal Presentation</h3>
                            <table class="auto-style4 custom-table">
                                <tr>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td class="auto-style6">
                                        <center> 1</center>
                                    </td>
                                    <td class="auto-style6">
                                        <center> 2</center>
                                    </td>
                                    <td class="auto-style6">
                                        <center> 3</center>
                                    </td>
                                    <td class="auto-style6">
                                        <center> 4</center>
                                    </td>
                                    <td class="auto-style6">
                                        <center> 5</center>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">Teacher attends class in a well presentable manner</td>
                                    <td class="auto-style7">
                                        &nbsp;
                                        <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True"
                                            OnCheckedChanged="RadioButton1_CheckedChanged1" />
                                    </td>
                                    <td class="auto-style3">
                                        &nbsp;
                                        <asp:RadioButton ID="RadioButton2" runat="server"
                                            OnCheckedChanged="RadioButton2_CheckedChanged" />
                                    </td>
                                    <td class="auto-style3">
                                        &nbsp;
                                        <asp:RadioButton ID="RadioButton3" runat="server" />
                                    </td>
                                    <td class="auto-style3">
                                        &nbsp;
                                        <asp:RadioButton ID="RadioButton4" runat="server" />
                                    </td>
                                    <td class="auto-style3">
                                        &nbsp;
                                        <asp:RadioButton ID="RadioButton5" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Teacher Shows enthusiasm when teaching in class</td>
                                    <td class="auto-style6">
                                        &nbsp;
                                        <asp:RadioButton ID="RadioButton6" runat="server" />
                                    </td>
                                    <td>
                                        &nbsp;
                                        <asp:RadioButton ID="RadioButton7" runat="server" />
                                    </td>
                                    <td>

                                        <asp:RadioButton ID="RadioButton8" runat="server" />
                                        &nbsp;
                                    </td>
                                    <td>

                                        <asp:RadioButton ID="RadioButton9" runat="server" />
                                        &nbsp;
                                    </td>
                                    <td>

                                        <asp:RadioButton ID="RadioButton10" runat="server" />
                                        &nbsp;
                                    </td>
                                </tr>

                                <tr>
                                    <td>

                                        Teacher shows initiative and flexibility in teaching</td>
                                    <td class="auto-style6">

                                        <asp:RadioButton ID="RadioButton11" runat="server" />
                                        &nbsp;
                                    </td>
                                    <td>

                                        <asp:RadioButton ID="RadioButton12" runat="server" />
                                        &nbsp;
                                    </td>
                                    <td>

                                        <asp:RadioButton ID="RadioButton13" runat="server" />
                                        &nbsp;
                                    </td>
                                    <td>

                                        <asp:RadioButton ID="RadioButton14" runat="server" />
                                        &nbsp;
                                    </td>
                                    <td>

                                        <asp:RadioButton ID="RadioButton15" runat="server" />
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td>

                                        Teacher is well articulated and shows full knowledge of the subject in teaching
                                    </td>
                                    <td class="auto-style6">

                                        <asp:RadioButton ID="RadioButton16" runat="server" />
                                        &nbsp;
                                    </td>
                                    <td>

                                        <asp:RadioButton ID="RadioButton17" runat="server" />
                                        &nbsp;
                                    </td>
                                    <td>

                                        <asp:RadioButton ID="RadioButton18" runat="server" />
                                        &nbsp;
                                    </td>
                                    <td>

                                        <asp:RadioButton ID="RadioButton19" runat="server" />
                                        &nbsp;
                                    </td>
                                    <td>

                                        <asp:RadioButton ID="RadioButton20" runat="server" />
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td>

                                        Teacher speaks loud and clear enough to be heard by the whole class</td>
                                    <td class="auto-style6">

                                        <asp:RadioButton ID="RadioButton21" runat="server" />
                                        &nbsp;
                                    </td>
                                    <td>

                                        <asp:RadioButton ID="RadioButton22" runat="server" />
                                        &nbsp;
                                    </td>
                                    <td>

                                        <asp:RadioButton ID="RadioButton23" runat="server" />
                                        &nbsp;
                                    </td>
                                    <td>

                                        <asp:RadioButton ID="RadioButton24" runat="server" />
                                        &nbsp;
                                    </td>
                                    <td>

                                        <asp:RadioButton ID="RadioButton25" runat="server" />
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>

                        </div>
                    </section>

                    <!--putting the space between the tables-->
                    <div style="margin-top: 40px;"></div> <!-- Add spacing here -->

                    <!--TABLE 2-->
                    <section id="section2">
                        <!-- table 2 -->
                        <div>
                            <div>
                                <h3 class="auto-style9">Professional Practices</h3>
                            </div>
                            <table class="auto-style4 custom-table">
                                <tr>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td class="auto-style6">
                                        <center> 1</center>
                                    </td>
                                    <td class="auto-style6">
                                        <center> 2</center>
                                    </td>
                                    <td class="auto-style6">
                                        <center> 3</center>
                                    </td>
                                    <td class="auto-style6">
                                        <center> 4</center>
                                    </td>
                                    <td class="auto-style6">
                                        <center> 5</center>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style13">
                                        Teacher shows professionalism in class</td>
                                    <td class="auto-style14">
                                        <asp:RadioButton ID="RadioButton26" runat="server" />
                                        &nbsp;
                                    </td>
                                    <td class="auto-style14">
                                        <asp:RadioButton ID="RadioButton27" runat="server" />
                                        &nbsp;
                                    </td>
                                    <td class="auto-style14">
                                        <asp:RadioButton ID="RadioButton28" runat="server" />
                                        &nbsp;
                                    </td>
                                    <td class="auto-style14">
                                        <asp:RadioButton ID="RadioButton29" runat="server" />
                                        &nbsp;
                                    </td>
                                    <td class="auto-style14">
                                        <asp:RadioButton ID="RadioButton30" runat="server" />
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style15">
                                        Teacher shows commitment to teaching the class</td>
                                    <td class="auto-style16">
                                        <asp:RadioButton ID="RadioButton31" runat="server" />
                                        &nbsp;
                                    </td>
                                    <td class="auto-style16">
                                        <asp:RadioButton ID="RadioButton32" runat="server" />
                                        &nbsp;
                                    </td>
                                    <td class="auto-style16">
                                        <asp:RadioButton ID="RadioButton33" runat="server" />
                                        &nbsp;
                                    </td>
                                    <td class="auto-style16">
                                        <asp:RadioButton ID="RadioButton34" runat="server" />
                                        &nbsp;
                                    </td>
                                    <td class="auto-style16">
                                        <asp:RadioButton ID="RadioButton35" runat="server" />
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style17">
                                        Teacher encourages students to engage in class discussions and ask questions
                                    </td>
                                    <td class="auto-style18">
                                        <asp:RadioButton ID="RadioButton36" runat="server" />
                                        &nbsp;
                                    </td>
                                    <td class="auto-style18">
                                        <asp:RadioButton ID="RadioButton37" runat="server" />
                                        &nbsp;
                                    </td>
                                    <td class="auto-style18">
                                        <asp:RadioButton ID="RadioButton38" runat="server" />
                                        &nbsp;
                                    </td>
                                    <td class="auto-style18">
                                        <asp:RadioButton ID="RadioButton39" runat="server" />
                                        &nbsp;
                                    </td>
                                    <td class="auto-style18">
                                        <asp:RadioButton ID="RadioButton40" runat="server" />
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style13">
                                        Teacher handles criticisms and suggestions professionally</td>
                                    <td class="auto-style14">
                                        <asp:RadioButton ID="RadioButton41" runat="server" />
                                        &nbsp;
                                    </td>
                                    <td class="auto-style14">
                                        <asp:RadioButton ID="RadioButton42" runat="server" />
                                        &nbsp;
                                    </td>
                                    <td class="auto-style14">
                                        <asp:RadioButton ID="RadioButton43" runat="server" />
                                        &nbsp;
                                    </td>
                                    <td class="auto-style14">
                                        <asp:RadioButton ID="RadioButton44" runat="server" />
                                        &nbsp;
                                    </td>
                                    <td class="auto-style14">
                                        <asp:RadioButton ID="RadioButton45" runat="server" />
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style19">
                                        Teacher comes to class on time</td>
                                    <td class="auto-style20">
                                        <asp:RadioButton ID="RadioButton46" runat="server" />
                                        &nbsp;
                                    </td>
                                    <td class="auto-style20">
                                        <asp:RadioButton ID="RadioButton47" runat="server" />
                                        &nbsp;
                                    </td>
                                    <td class="auto-style20">
                                        <asp:RadioButton ID="RadioButton48" runat="server" />
                                        &nbsp;
                                    </td>
                                    <td class="auto-style20">
                                        <asp:RadioButton ID="RadioButton49" runat="server" />
                                        &nbsp;
                                    </td>
                                    <td class="auto-style20">
                                        <asp:RadioButton ID="RadioButton50" runat="server" />
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style21">
                                        Teacher ends class on time</td>
                                    <td class="auto-style22">
                                        <asp:RadioButton ID="RadioButton51" runat="server" />
                                        &nbsp;
                                    </td>
                                    <td class="auto-style22">
                                        <asp:RadioButton ID="RadioButton52" runat="server" />
                                        &nbsp;
                                    </td>
                                    <td class="auto-style22">
                                        <asp:RadioButton ID="RadioButton53" runat="server" />
                                        &nbsp;
                                    </td>
                                    <td class="auto-style22">
                                        <asp:RadioButton ID="RadioButton54" runat="server" />
                                        &nbsp;
                                    </td>
                                    <td class="auto-style22">
                                        <asp:RadioButton ID="RadioButton55" runat="server" />
                                        &nbsp;
                                    </td>
                                </tr>

                            </table>
                        </div>
                    </section>


                    <!--putting the space between the tables-->
                    <div style="margin-top: 60px;"></div> <!-- Add spacing here -->


                    <!--TABLE 3-->
                    <section id="section3">
                        <!--Heading-->
                        <div>
                            <div>
                                <h3 class="auto-style9">Teaching Methods</h3>
                            </div>



                        </div>
                        <table class="auto-style4 custom-table">
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td class="auto-style6">
                                    <center> 1</center>
                                </td>
                                <td class="auto-style6">
                                    <center> 2</center>
                                </td>
                                <td class="auto-style6">
                                    <center> 3</center>
                                </td>
                                <td class="auto-style6">
                                    <center> 4</center>
                                </td>
                                <td class="auto-style6">
                                    <center> 5</center>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style23">
                                    Teacher shows well rounded knowledge over the subject matter</td>
                                <td class="auto-style23">
                                    <asp:RadioButton ID="RadioButton56" runat="server" />
                                    &nbsp;
                                </td>
                                <td class="auto-style23">
                                    <asp:RadioButton ID="RadioButton57" runat="server" />
                                    &nbsp;
                                </td>
                                <td class="auto-style23">
                                    <asp:RadioButton ID="RadioButton58" runat="server" />
                                    &nbsp;
                                </td>
                                <td class="auto-style23">
                                    <asp:RadioButton ID="RadioButton59" runat="server" />
                                    &nbsp;
                                </td>
                                <td class="auto-style23">
                                    <asp:RadioButton ID="RadioButton60" runat="server" />
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style24">Teacher has organized the lesson conducive for easy
                                    understanding of students</td>
                                <td class="auto-style24">
                                    <asp:RadioButton ID="RadioButton61" runat="server" />
                                    &nbsp;
                                </td>
                                <td class="auto-style24">
                                    <asp:RadioButton ID="RadioButton62" runat="server" />
                                    &nbsp;
                                </td>
                                <td class="auto-style24">
                                    <asp:RadioButton ID="RadioButton63" runat="server" />
                                    &nbsp;
                                </td>
                                <td class="auto-style24">
                                    <asp:RadioButton ID="RadioButton64" runat="server" />
                                    &nbsp;
                                </td>
                                <td class="auto-style24">
                                    <asp:RadioButton ID="RadioButton65" runat="server" />
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style14">Teacher shows dynamism and enthusiasm</td>
                                <td class="auto-style14">
                                    <asp:RadioButton ID="RadioButton66" runat="server" />
                                    &nbsp;
                                </td>
                                <td class="auto-style14">
                                    <asp:RadioButton ID="RadioButton67" runat="server" />
                                    &nbsp;
                                </td>
                                <td class="auto-style14">
                                    <asp:RadioButton ID="RadioButton68" runat="server" />
                                    &nbsp;
                                </td>
                                <td class="auto-style14">
                                    <asp:RadioButton ID="RadioButton69" runat="server" />
                                    &nbsp;
                                </td>
                                <td class="auto-style14">
                                    <asp:RadioButton ID="RadioButton70" runat="server" />
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style25">Teacher stimulates the critical thinking of students</td>
                                <td class="auto-style25">
                                    <asp:RadioButton ID="RadioButton71" runat="server" />
                                    &nbsp;
                                </td>
                                <td class="auto-style25">
                                    <asp:RadioButton ID="RadioButton72" runat="server" />
                                    &nbsp;
                                </td>
                                <td class="auto-style25">
                                    <asp:RadioButton ID="RadioButton73" runat="server" />
                                    &nbsp;
                                </td>
                                <td class="auto-style25">
                                    <asp:RadioButton ID="RadioButton74" runat="server" />
                                    &nbsp;
                                </td>
                                <td class="auto-style25">
                                    <asp:RadioButton ID="RadioButton75" runat="server" />
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style24">Teacher handles the class environment conducive for learning
                                </td>
                                <td class="auto-style24">
                                    <asp:RadioButton ID="RadioButton76" runat="server" />
                                    &nbsp;
                                </td>
                                <td class="auto-style24">
                                    <asp:RadioButton ID="RadioButton77" runat="server" />
                                    &nbsp;
                                </td>
                                <td class="auto-style24">
                                    <asp:RadioButton ID="RadioButton78" runat="server" />
                                    &nbsp;
                                </td>
                                <td class="auto-style24">
                                    <asp:RadioButton ID="RadioButton79" runat="server" />
                                    &nbsp;
                                </td>
                                <td class="auto-style24">
                                    <asp:RadioButton ID="RadioButton80" runat="server" />
                                    &nbsp;
                                </td>
                            </tr>

                        </table>

                    </section>

                    <!--putting the space between the tables-->
                    <div style="margin-top: 60px;"></div>


                    <!--TABLE 4-->
                    <section id="section4">
                        <!--Heading-->
                        <div>
                            <div>
                                <h3 class="auto-style9"> Disposition Towards Students</h3>
                            </div>

                            <table class="auto-style4 custom-table">
                                <tr>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td class="auto-style6">
                                        <center> 1</center>
                                    </td>
                                    <td class="auto-style6">
                                        <center> 2</center>
                                    </td>
                                    <td class="auto-style6">
                                        <center> 3</center>
                                    </td>
                                    <td class="auto-style6">
                                        <center> 4</center>
                                    </td>
                                    <td class="auto-style6">
                                        <center> 5</center>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style26">Teacher believes that students can learn from the class
                                    </td>
                                    <td class="auto-style26">
                                        <asp:RadioButton ID="RadioButton81" runat="server" />
                                    </td>
                                    <td class="auto-style26">
                                        <asp:RadioButton ID="RadioButton82" runat="server" />
                                    </td>
                                    <td class="auto-style26">
                                        <asp:RadioButton ID="RadioButton83" runat="server" />
                                    </td>
                                    <td class="auto-style26">
                                        <asp:RadioButton ID="RadioButton84" runat="server" />
                                    </td>
                                    <td class="auto-style26">
                                        <asp:RadioButton ID="RadioButton85" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style27">Teacher shows equal respect to various cultural
                                        backgrounds, individuals, religion, and race</td>
                                    <td class="auto-style27">
                                        <asp:RadioButton ID="RadioButton86" runat="server" />
                                    </td>
                                    <td class="auto-style27">
                                        <asp:RadioButton ID="RadioButton87" runat="server" />
                                    </td>
                                    <td class="auto-style27">
                                        <asp:RadioButton ID="RadioButton88" runat="server" />
                                    </td>
                                    <td class="auto-style27">
                                        <asp:RadioButton ID="RadioButton89" runat="server" />
                                    </td>
                                    <td class="auto-style27">
                                        <asp:RadioButton ID="RadioButton90" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style28">Teacher finds the students strengths as basis for growth
                                        and weaknesses for opportunities for improvement</td>
                                    <td class="auto-style28">
                                        <asp:RadioButton ID="RadioButton91" runat="server" />
                                    </td>
                                    <td class="auto-style28">
                                        <asp:RadioButton ID="RadioButton92" runat="server" />
                                    </td>
                                    <td class="auto-style28">
                                        <asp:RadioButton ID="RadioButton93" runat="server" />
                                    </td>
                                    <td class="auto-style28">
                                        <asp:RadioButton ID="RadioButton94" runat="server" />
                                    </td>
                                    <td class="auto-style28">
                                        <asp:RadioButton ID="RadioButton95" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style29">Teacher understands the weakness of a student and helps in
                                        the student's improvement</td>
                                    <td class="auto-style29">
                                        <asp:RadioButton ID="RadioButton96" runat="server" />
                                    </td>
                                    <td class="auto-style29">
                                        <asp:RadioButton ID="RadioButton97" runat="server" />
                                    </td>
                                    <td class="auto-style29">
                                        <asp:RadioButton ID="RadioButton98" runat="server" />
                                    </td>
                                    <td class="auto-style29">
                                        <asp:RadioButton ID="RadioButton99" runat="server" />
                                    </td>
                                    <td class="auto-style29">
                                        <asp:RadioButton ID="RadioButton100" runat="server" />
                                    </td>
                                </tr>


                            </table>
                        </div>
                    </section>


                </main>


            </div>
            <div style="margin-top: 40px;"></div> <!-- Add spacing here -->
            <!--Comment-->
            <section class="section4">
                <h3 class="auto-style32">Any Comments?</h3>
                <div>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style33" Height="98px"
                        OnTextChanged="TextBox1_TextChanged" Width="381px"></asp:TextBox>

                </div>
            </section>


            <div>
                <p>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style30" Height="50px"
                        OnClick="Button1_Click" Text="Submit" Width="243px" />
                </p>
            </div>



        </form>
    </body>

    </html>