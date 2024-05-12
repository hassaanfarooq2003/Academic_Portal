<%@ Page Language="C#" AutoEventWireup="true" CodeFile="transcript.aspx.cs" Inherits="Student_transcript" %>

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
            .auto-style1 {
                margin-top: 161px;
            }
        </style>

    </head>

    <body>
        <form id="form1" runat="server">
            <div class="sidebar">
                <div class="sidebar-brand">
                    <asp:ImageButton ID="Homebutton" runat="server" Height="108px" ImageUrl="~/logo.png"
                        Width="110px" OnClick="Homebutton_Click1" />

                </div>

                  <div class="sidebar-brand">
                    <ul>
                        <li>
                            <span class="las la-igloo">
                                <asp:LinkButton ID="LinkButton1" CssClass="btn-custom" runat="server"
                                    OnClick="LinkButton1_Click1" Height="37px" Width="216px">Course Registration</asp:LinkButton>
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
                           Transcript
                        </label>
                    </h1>

                </header>
                <main>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style1" DataKeyNames="COURSE_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="261px" Width="631px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="COURSE_ID" HeaderText="COURSE_ID" ReadOnly="True" SortExpression="COURSE_ID" />
                            <asp:BoundField DataField="COURSE_CODE" HeaderText="COURSE_CODE" SortExpression="COURSE_CODE" />
                            <asp:BoundField DataField="COURSE_NAME" HeaderText="COURSE_NAME" SortExpression="COURSE_NAME" />
                            <asp:BoundField DataField="CRED_HRS" HeaderText="CRED_HRS" SortExpression="CRED_HRS" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FLEXConnectionString2 %>" SelectCommand="SELECT [COURSE_ID], [COURSE_CODE], [COURSE_NAME], [CRED_HRS] FROM [COURSES]"></asp:SqlDataSource>

                </main>

            </div>


        </form>
    </body>

    </html>
