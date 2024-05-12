<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sections.aspx.cs" Inherits="Academic_sections" %>
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
        .auto-style1 {
          height: 71px;
          width: 306px;
      }
      .auto-style2 {
          height: 73px;
          width: 305px;
      }



      /*FORM */
      .form-container {
    width: 400px;
    margin: 0 auto;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
}

.form-row {
    margin-bottom: 10px;
}

.input-text {
    width: 100%;
    padding: 5px;
    border: 1px solid #888;
    border-radius: 10px;
    box-sizing: border-box;
}

.submit-button {
    background-color: #007bff;
    color: white;
    padding: 10px;
    border: none;
    border-radius: 20px;
    cursor: pointer;
    transition: 0.3s;
    outline: none;
}

.submit-button:hover {
    background-color: #0056b3;
}
        .auto-style3 {
          margin-left: 87px;
      }
        .auto-style4 {
          width: 958px;
          margin: 0 228px 0 92px;
          padding: 20px;
          border-radius: 10px;
          box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
          height: 219px;
      }
      .auto-style5 {
          width: 400px;
          margin: 0 auto;
          padding: 20px;
          border-radius: 10px;
          box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
          height: 363px;
      }
        </style>







</head>

        
    <body>
        <form id="form1" runat="server">
            
            <div class="sidebar">
                <div class="sidebar-brand">
                    <asp:ImageButton ID="Homebutton" runat="server" Height="108px" ImageUrl="~/logo.png"
                        Width="110px" OnClick="Homebutton_Click" />

                </div>

                <div class="sidebar-brand">
                    <ul>
                        <li>
                            <span class="las la-igloo">
                   <asp:LinkButton ID="LinkButton1" CssClass="btn-custom" runat="server" OnClick="LinkButton1_Click1" Height="51px" Width="248px">Courses</asp:LinkButton>
                            </span>

                        </li>
                        <li style="height: 61px; width: 304px; margin-top: 28px;">
                            <asp:LinkButton ID="LinkButton2" CssClass="btn-custom" runat="server" OnClick="LinkButton2_Click" Height="46px" Width="247px">Sections</asp:LinkButton>

                        </li>
                        <li class="auto-style1">
                            <asp:LinkButton ID="LinkButton3"  CssClass="btn-custom" runat="server" OnClick="LinkButton3_Click" Height="53px" Width="248px">Faculty                         </asp:LinkButton>
                        </li>
                        <li class="auto-style2">
                            <asp:LinkButton ID="LinkButton4"  CssClass="btn-custom" runat="server" OnClick="LinkButton4_Click" Height="56px" Width="243px">Student Registration                     </asp:LinkButton>
                        </li>
                        <li>
                            <label for="">
                                <span class="las la-bars">
                                    <asp:LinkButton ID="Logout"  CssClass="btn-custom" runat="server" OnClick="LinkButton5_Click" Height="46px" Width="242px">Logout
                                    </asp:LinkButton>
                                </span>
                            </label>
                        </li>
                    </ul>
                    <p>
                        &nbsp;</p>
                </div>



            </div>

            <div class="main-content">
                <header>

                </header>
                    <h1>
                        <label for="">
                            Sections</label></h1>
     <div class="auto-style5">
    <div class="form-row">
        <asp:Label ID="Label1" runat="server" Text="Section ID"></asp:Label>
        <input id="Text1" class="input-text" type="text" />
    </div>
    <div class="form-row">
        <asp:Label ID="Label2" runat="server" Text="Section Number"></asp:Label>
        <input id="Text2" class="input-text" type="text" />
    </div>
    <div class="form-row">
        <asp:Label ID="Label6" runat="server" Text="Capacity"></asp:Label>
        &nbsp;<input id="Text4" class="input-text" type="text" />
    </div>
    <div class="form-row">
        <asp:Label ID="Label5" runat="server" Text="Faculty ID"></asp:Label>
        <input id="Text5" class="input-text" type="text" />
    </div>
    <div class="form-row">
        <asp:Button ID="Button1" class="submit-button" runat="server" Text="Submit" />
    </div>
</div>


                <div class="auto-style4">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style3" DataKeyNames="SECTION_ID" DataSourceID="SqlDataSource1" Height="188px" Width="572px">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="SECTION_ID" HeaderText="SECTION_ID" ReadOnly="True" SortExpression="SECTION_ID" />
                        <asp:BoundField DataField="CAPACITY" HeaderText="CAPACITY" SortExpression="CAPACITY" />
                        <asp:BoundField DataField="SECTION_NUM" HeaderText="SECTION_NUM" SortExpression="SECTION_NUM" />
                        <asp:BoundField DataField="OFFERED_COURSE_CODE" HeaderText="OFFERED_COURSE_CODE" SortExpression="OFFERED_COURSE_CODE" />
                        <asp:BoundField DataField="FACULTY_ID" HeaderText="FACULTY_ID" SortExpression="FACULTY_ID" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="Data Source=DESKTOP-6CIDPD7\SQLEXPRESS02;Initial Catalog=FLEX;Integrated Security=True;" DeleteCommand="DELETE FROM [SECTIONS] WHERE [SECTION_ID] = @original_SECTION_ID AND [CAPACITY] = @original_CAPACITY AND [SECTION_NUM] = @original_SECTION_NUM AND [OFFERED_COURSE_CODE] = @original_OFFERED_COURSE_CODE AND [FACULTY_ID] = @original_FACULTY_ID" InsertCommand="INSERT INTO [SECTIONS] ([SECTION_ID], [CAPACITY], [SECTION_NUM], [OFFERED_COURSE_CODE], [FACULTY_ID]) VALUES (@SECTION_ID, @CAPACITY, @SECTION_NUM, @OFFERED_COURSE_CODE, @FACULTY_ID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [SECTIONS]" UpdateCommand="UPDATE [SECTIONS] SET [CAPACITY] = @CAPACITY, [SECTION_NUM] = @SECTION_NUM, [OFFERED_COURSE_CODE] = @OFFERED_COURSE_CODE, [FACULTY_ID] = @FACULTY_ID WHERE [SECTION_ID] = @original_SECTION_ID AND [CAPACITY] = @original_CAPACITY AND [SECTION_NUM] = @original_SECTION_NUM AND [OFFERED_COURSE_CODE] = @original_OFFERED_COURSE_CODE AND [FACULTY_ID] = @original_FACULTY_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="original_SECTION_ID" Type="Int32" />
                        <asp:Parameter Name="original_CAPACITY" Type="Int32" />
                        <asp:Parameter Name="original_SECTION_NUM" Type="Int32" />
                        <asp:Parameter Name="original_OFFERED_COURSE_CODE" Type="String" />
                        <asp:Parameter Name="original_FACULTY_ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="SECTION_ID" Type="Int32" />
                        <asp:Parameter Name="CAPACITY" Type="Int32" />
                        <asp:Parameter Name="SECTION_NUM" Type="Int32" />
                        <asp:Parameter Name="OFFERED_COURSE_CODE" Type="String" />
                        <asp:Parameter Name="FACULTY_ID" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="CAPACITY" Type="Int32" />
                        <asp:Parameter Name="SECTION_NUM" Type="Int32" />
                        <asp:Parameter Name="OFFERED_COURSE_CODE" Type="String" />
                        <asp:Parameter Name="FACULTY_ID" Type="Int32" />
                        <asp:Parameter Name="original_SECTION_ID" Type="Int32" />
                        <asp:Parameter Name="original_CAPACITY" Type="Int32" />
                        <asp:Parameter Name="original_SECTION_NUM" Type="Int32" />
                        <asp:Parameter Name="original_OFFERED_COURSE_CODE" Type="String" />
                        <asp:Parameter Name="original_FACULTY_ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                </div>
                
                </div>
    </form>
</body>
</html>

