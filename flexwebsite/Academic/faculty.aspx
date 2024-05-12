<%@ Page Language="C#" AutoEventWireup="true" CodeFile="faculty.aspx.cs" Inherits="Academic_faculty" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

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
          height: 71px;
          width: 306px;
      }
      .auto-style2 {
          height: 73px;
          width: 305px;
      }
        .auto-style3 {
          height: 184px;
          colour: #0C5AA0;
          width: 339px;
          margin-bottom: 12px;
      }
                    


      <!--BUTTONS-->
            #input[type="text"] {
            border: 1px solid #888;
            border-radius: 10px;
            padding: 5px;
            margin-bottom: 10px;
            width: 90%;
            box-sizing: border-box;
        }

        /* Styling for the button */
        #Button1 {
            background-color: #007bff;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 20px;
            cursor: pointer;
            transition: 0.3s;
            outline: none;
        }

        /* Hover effect for the button */
        #Button1:hover {
            background-color: #0056b3;
        }
        .auto-style14 {
          margin-left: 345px;
          height: 710px;
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
        .auto-style16 {
          height: 169px;
      }
        .auto-style17 {
          width: 545px;
          margin: 0 auto;
          padding: 20px;
          border-radius: 10px;
          box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
      }
         .grid-view {
                width: 400px;
                margin: 0 auto;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
            }

            .grid-view th,
            .grid-view td {
                padding: 5px;
                border: 1px solid #888;
                border-radius: 10px;
                box-sizing: border-box;
            }
            .auto-style17 {
                width: 658px;
                margin: 0 auto;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
            }
        .auto-style18 {
          width: 345px;
          position: fixed;
          left: 0;
          top: -1px;
          height: 100%;
          background: #88BEEF;
      }
        </style>



    


</head>

        
    <body>
        <form id="form1" runat="server">
            <div class="auto-style18">
                <div class="auto-style3">
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

            <div class="auto-style14">
                <header>

                </header>
                    <h1 class="auto-style16">
                        <label for="">
                           Faculty Management
                        </label>
                    </h1>
       <div class="form-container">
    <div class="form-row">
                    <asp:Label ID="Label1" runat="server" Text="Faculty ID"></asp:Label>
                    <asp:TextBox ID="Text1" runat="server" CssClass="input-text" OnTextChanged="Text1_TextChanged"></asp:TextBox>
                </div>
                   <div class="form-row">
                    <asp:Label ID="Label3" runat="server" Text="UserID"></asp:Label>
                    <asp:TextBox ID="Text8" runat="server" CssClass="input-text" OnTextChanged="Text1_TextChanged"></asp:TextBox>
                </div>
                 <div class="form-row">
                    <asp:Label ID="Label5" runat="server" Text="UserName"></asp:Label>
                    <asp:TextBox ID="Text6" runat="server" CssClass="input-text" OnTextChanged="Text1_TextChanged"></asp:TextBox>
                </div>
                 <div class="form-row">
                    <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox ID="Text7" runat="server" CssClass="input-text" OnTextChanged="Text1_TextChanged"></asp:TextBox>
                </div>
                <div class="form-row">
                    <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
                    <asp:TextBox ID="Text2" runat="server" CssClass="input-text" OnTextChanged="Text2_TextChanged"></asp:TextBox>
                </div>
                <div class="form-row">
                    <label for="creditNumber">Last Name</label>
                    <asp:TextBox ID="Text4" runat="server" CssClass="input-text" OnTextChanged="Text4_TextChanged"></asp:TextBox>
                    <br />
                </div>
            <div class="form-row">
                    <label for="creditNumber">Course ID</label>
                    <asp:TextBox ID="Text5" runat="server" CssClass="input-text" OnTextChanged="Text5_TextChanged"></asp:TextBox>
                    <br />
                </div>
    <div class="form-row">
        <asp:Button ID="Button1" class="submit-button" runat="server" Text="Submit" OnClick="Button1_Click" />
    </div>
</div>
                <br />
                <br />
                   <div class="auto-style17">



                       <!-- ERROR NEEDS TO BE FIXED-->
                        <!-- Cant connect to the database-->
                       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="FACULTY_ID" DataSourceID="SqlDataSource1">
                           <Columns>
                               <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                               <asp:BoundField DataField="USERID" HeaderText="USERID" SortExpression="USERID" />
                               <asp:BoundField DataField="FACULTY_ID" HeaderText="FACULTY_ID" ReadOnly="True" SortExpression="FACULTY_ID" />
                               <asp:BoundField DataField="F_NAME" HeaderText="F_NAME" SortExpression="F_NAME" />
                               <asp:BoundField DataField="L_NAME" HeaderText="L_NAME" SortExpression="L_NAME" />
                               <asp:BoundField DataField="FACULTY_NAME" HeaderText="FACULTY_NAME" ReadOnly="True" SortExpression="FACULTY_NAME" />
                           </Columns>
                       </asp:GridView>
                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="Data Source=DESKTOP-6CIDPD7\SQLEXPRESS02;Initial Catalog=FLEX;Integrated Security=True;" DeleteCommand="DELETE FROM [FACULTY] WHERE [FACULTY_ID] = @original_FACULTY_ID AND (([USERID] = @original_USERID) OR ([USERID] IS NULL AND @original_USERID IS NULL)) AND [F_NAME] = @original_F_NAME AND (([L_NAME] = @original_L_NAME) OR ([L_NAME] IS NULL AND @original_L_NAME IS NULL)) AND [FACULTY_NAME] = @original_FACULTY_NAME" InsertCommand="INSERT INTO [FACULTY] ([USERID], [FACULTY_ID], [F_NAME], [L_NAME], [FACULTY_NAME]) VALUES (@USERID, @FACULTY_ID, @F_NAME, @L_NAME, @FACULTY_NAME)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [FACULTY]" UpdateCommand="UPDATE [FACULTY] SET [USERID] = @USERID, [F_NAME] = @F_NAME, [L_NAME] = @L_NAME, [FACULTY_NAME] = @FACULTY_NAME WHERE [FACULTY_ID] = @original_FACULTY_ID AND (([USERID] = @original_USERID) OR ([USERID] IS NULL AND @original_USERID IS NULL)) AND [F_NAME] = @original_F_NAME AND (([L_NAME] = @original_L_NAME) OR ([L_NAME] IS NULL AND @original_L_NAME IS NULL)) AND [FACULTY_NAME] = @original_FACULTY_NAME">
                           <DeleteParameters>
                               <asp:Parameter Name="original_FACULTY_ID" Type="Int32" />
                               <asp:Parameter Name="original_USERID" Type="Int32" />
                               <asp:Parameter Name="original_F_NAME" Type="String" />
                               <asp:Parameter Name="original_L_NAME" Type="String" />
                               <asp:Parameter Name="original_FACULTY_NAME" Type="String" />
                           </DeleteParameters>
                           <InsertParameters>
                               <asp:Parameter Name="USERID" Type="Int32" />
                               <asp:Parameter Name="FACULTY_ID" Type="Int32" />
                               <asp:Parameter Name="F_NAME" Type="String" />
                               <asp:Parameter Name="L_NAME" Type="String" />
                               <asp:Parameter Name="FACULTY_NAME" Type="String" />
                           </InsertParameters>
                           <UpdateParameters>
                               <asp:Parameter Name="USERID" Type="Int32" />
                               <asp:Parameter Name="F_NAME" Type="String" />
                               <asp:Parameter Name="L_NAME" Type="String" />
                               <asp:Parameter Name="FACULTY_NAME" Type="String" />
                               <asp:Parameter Name="original_FACULTY_ID" Type="Int32" />
                               <asp:Parameter Name="original_USERID" Type="Int32" />
                               <asp:Parameter Name="original_F_NAME" Type="String" />
                               <asp:Parameter Name="original_L_NAME" Type="String" />
                               <asp:Parameter Name="original_FACULTY_NAME" Type="String" />
                           </UpdateParameters>
                       </asp:SqlDataSource>
                       </div>
                </form>
        
      </body>
</html>
