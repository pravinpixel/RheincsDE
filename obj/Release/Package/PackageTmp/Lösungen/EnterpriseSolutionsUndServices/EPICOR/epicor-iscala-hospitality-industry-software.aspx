<%@ Page Title="" Language="C#" MasterPageFile="~/Rheincs.Master" AutoEventWireup="true" CodeBehind="epicor-iscala-hospitality-industry-software.aspx.cs" Inherits="RheinBrucke.Lösungen.EnterpriseSolutionsUndServices.EPICOR.epicor_iscala_hospitality_industry_software" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headerPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .btn-primary.active, .btn-primary:active, .open > .dropdown-toggle.btn-primary {
            color: #7b1314 !important;
            background-color: #fff !important;
            border-color: #DDDDDD !important;
        }

        h2 {
            font-size: 27px;
        }

        .write-to-us-input {
            font-size: 12px;
        }

        .mainContent-normal-manufacturing {
            font-size: 17px;
            line-height: 1.5em;
            color: #2f2f2f;
        }

        .redBullets-manufacturing > i {
            font-size: 24px;
            height: 64px;
            line-height: 64px;
            text-align: center;
            width: 64px;
            border-radius: 100%;
            color: #7B1315;
            box-shadow: inset 0 0 0 1px #d7d7d7;
            -webkit-box-shadow: inset 0 0 0 1px #d7d7d7;
            transition: background-color 400ms,background-color 400ms;
            position: absolute;
            top: .5em;
            left: 0;
        }

            .redBullets-manufacturing > i:after {
                content: "";
                position: absolute;
                width: 20px;
                height: 20px;
                top: 50%;
                margin-top: -10px;
                right: -10px;
                border: 4px solid #fff;
                border-radius: 20px;
                background: #7B1315;
            }

            .redBullets-manufacturing > i:hover {
                background-color: #7B1315;
                box-shadow: inset 0 0 0 1px #d7d7d7;
                -webkit-box-shadow: inset 0 0 0 1px #d7d7d7;
                transition: background-color 400ms,background-color 400ms;
                border-radius: 100%;
                color: #fff;
            }

        .bulletContent-manufacturing {
            margin-left: 60px;
            font-size: 14px;
        }

        .bulletContent-manufacturing-title {
            margin-left: 68px;
            margin-top: 13px;
            font-size: 16px;
            color: #2f2f2f !important;
        }
           .bulletContent-epicor-inner-epc {
    font-size: 16px;
    color: #2f2f2f;
    line-height: 1.2em !important;
}
           .marg-top
           {
               margin-top:-20px
           }
    </style>
    <!-- Google Code for HCM &amp; Manufacturing Big 3 Conversion Page -->
<!-- Global Site Tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-61074754-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments)};
  gtag('js', new Date());

  gtag('config', 'UA-61074754-1');
</script>
    <script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
    </script>
    <noscript>
<div style="display:inline;">
<img height="1" width="1" style="border-style:none;" alt="" src="//www.googleadservices.com/pagead/conversion/955726328/?label=V2P3CLXol28Q-PPcxwM&amp;guid=ON&amp;script=0"/>
</div>
</noscript>
    <!-- Content Starts Here-->
    <div class="container" id="container-top">
        <!--Breadcrumb row-->
        <div class="row">
            <ul class="breadcrumb bread hidden-xs hidden-sm">
                <li><a href="<%=rootpath %>" class="redColor" >Home <span>» </span></a></li>
                <li><a href="#" class="redColor">Lösungen<span> » </span></a></li>
                <li><a href="#" class="redColor">Enterprise Solutions (ERP) &amp; Services<span> » </span></a></li>
                <li><a href="#" class="redColor">RheinBrücke EPICOR ERP Implementation Services<span> » </span></a></li>
                <li><a href="#" class="redColor">Epicor iScala For Hospitality</a></li>
            </ul>
        </div>
        <!--Eof Breadcrumb row-->
        <!-- Slider Starts here-->
        <div class="row">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <%--<ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                </ol>--%>
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="../../../Assets/images/hospitalitybanner.jpg" alt="iscala-Banner" class="img-responsive" /><div class="container">
                            <div class="carousel-caption rhein-caption-text">
                                <div class="rhein-banner-heading-black-bg pull-right"><span class="rhein-banner-heading-black"><b>ERP for Hotels and Restaurants</b><br />
Increase your profits leveraging our state of art hospitality solutions
</span></div>
                            </div>
                        </div>
                    </div>
                  <%--  <div class="item">
                        <img src="../../../Assets/LandingRheincs/Images/hcm-2.jpg" alt="Home-Banner" class="img-responsive" /><div class="container">
                            <div class="carousel-caption rhein-caption-text">
                                <div class="rhein-manufacturing-banner-heading-black-bg"><span class="rhein-banner-heading-black"><b>RheinBrücke’s Power Plant Analytics covers</b><br />
                                   Manage PPA - Budget and Forecast - Power Generation Scheduling  Revenue calculation - Billing  </span></div>
                            </div>
                            </div>
                        </div>--%>
                   

                </div>
                <%-- <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"><span aria-hidden="true"></span><span class="sr-only">Previous</span></a><a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"><span aria-hidden="true"></span><span class="sr-only">Next</span></a>--%>
            </div>
        </div>
    </div>
    <!-- Slider Ends here-->
    <div class="container rheincs-container">
        <!--Overview and form div-->
        <div class="row">
            <!--overview-->
            <div class="clearfix">&nbsp;</div>
            <div class="col-md-12 contentwithpadding">
                <h3 class="redColor">OVERVIEW OF EPICOR iScala FOR HOSPITALITY</h3>
                <div class="mainContent-normal contentdiv text-justify">
                    Travel and tourism keeps growing and innovating every year. In such competitive times, you need opportunities to decrease costs, improve profits, grow your business and provide stellar guest experience. 
We are aware of the challenges that the hospitality industry faces. RheinBrücke Epicor iScala solution is an ERP for hospitality industry that can deliver globally innovative solutions that can streamline your operations whether your organization is a hotel, resort, casino or a government lodging agency.

                </div>
                          <div class="clearfix">&nbsp;</div>
                <h3 class="redColor">FEATURES OF EPICOR iScala FOR HOSPITALITY</h3>
            </div>
        </div>
        <!--Features-->
<div class="mainContent-normal contentdiv text-justify">
To make better decisions and drive more revenue, you need to connect your hospitality-specific strategy and plans to your front- and back-office systems. Your hotel needs a software that touches every aspect of your business, whether it is your finance team, human resources, sales, reservations, banks, material management etc.   With iScala you can reduce the need for costly and error-prone processes to decipher, recompile, or re-key critical business data. Using pre-built configurable interfaces and templates that deliver quick integration to POS, PMS, and labor systems, you can synchronize information about cash, sales, recipes, city ledger, labor, and menu mix—delivering you a more accurate and timely view of the business whenever you need it. 
        </div>
            <div class="clearfix">&nbsp;</div>
        <!--eof overview and form div-->
    </div>
    <div class="col-md-12 contentwithpadding rheincs-container">
                <h3 class="redColor">MODULES OF EPICOR iScala FOR HOSPITALITY</h3>
        </div>
    <div class="clearfix"></div>
         <div class="paddingGreycontainer bgcol"> 
            <div class="row col-md-12 padding">
                <div class="col-md-4">
                    <ul>
                        <li>
                     <div class="redBullets"></div>
                    <p class="bulletContent redColor">
                      <b>Financial Suite</b></p>
                      <p class="bulletContent">Epicor iScala delivers financial and accounting capabilities that you can easily tailor to your specific business. Epicor iScala financial management capabilities include sophisticated localized tax structures, multi-language, multicurrency, and multi-company functionality.</p>
                        </li>
                     </ul>       
                  </div>
                <div class="col-md-4">
                    <ul>
                        <li>
                     <div class="redBullets"></div>
                    <p class="bulletContent redColor">
                      <b>Supply Chain Management Suite</b></p>
                      <p class="bulletContent">Streamline the entire process from requisitioning through purchasing and receiving to payment— saving you time and maximizing internal efficiency. The iScala solution supports the entire requisition management lifecycle and helps to quickly identify delivery or invoicing errors.</p>
                        </li>
                     </ul>       
                  </div>
                <div class="col-md-4">
                    <ul>
                        <li>
                     <div class="redBullets"></div>
                    <p class="bulletContent redColor">
                      <b>Human Capital Management suite</b></p>
                      <p class="bulletContent">Effectively manage the entire lifecycle of their employees leveraging Epicor HCM that can be integrated with iScala. HR personnel of the hospitality industry can easily process payroll using iScala payroll.</p>
                        </li>
                     </ul>       
                  </div>
            </div>
            <div class="row col-md-12 padding">
                <div class="col-md-4">
                    <ul>
                        <li>
                     <div class="redBullets"></div>
                    <p class="bulletContent redColor">
                      <b>Service suite</b></p>
                      <p class="bulletContent">The iScala Service Suite for hospitality helps to ensure that you understand, in real-time, which contracts apply to which customers, which products have been returned, and whether those products correspond to a maintenance agreement or are covered by warranty support.</p>
                        </li>
                     </ul>       
                  </div>
                <div class="col-md-4">
                    <ul>
                        <li>
                     <div class="redBullets"></div>
                    <p class="bulletContent redColor">
                      <b>Integration</b></p>
                      <p class="bulletContent">Epicor iScala uses service connect to integrate with PMS, POS, banks and other third party systems. This allows your management teams to stay on top of what is happening by consolidating information.</p>
                        </li>
                     </ul>       
                  </div>
            </div>
          
            <div class="clearfix">&nbsp;</div>
            <%--<div class="boldBlackheading padding">
                        <p><b>To know more download our Brochure by submitting the above form</b></p>
                    </div>--%>
        </div>

    <div class="container contentwithpadding rheincs-container">
        <div class="wrappernewbullet">
            <div class="clearfix">&nbsp;</div>
            <h3 class="redColor">BENEFITS OF EPICOR iScala FOR HOSPITALITY</h3>
            <div class="mainContent-normal contentdiv text-justify">
Whether your hotel is big or small, you need to have a solution that gives you the advantage to cut costs, maximize your profits, enable your business to grow and make your customers come back for more. Seize the opportunities of our holistic hospitality solution that will help you to manage your online reputation and guest experience. Integration with HCM and payroll helps your employees to improve their guest service and enhance your bottom line. Here are the benefits of this integrated solution that covers all your back and front office needs:
                <div class="clearfix">&nbsp;</div>

        </div>
            </div>
        <div class="col-md-6">

            <div class="col-md-12">
                <ul>
                    <li>
                        <div class="redBullets"></div>
                        <p class="bulletContent">Enhance guest experience by knowing your customers better</p>
                    </li>
                </ul>
            </div>
            <div class="col-md-12">
                <ul>
                    <li>
                        <div class="redBullets"></div>
                        <p class="bulletContent">Streamline and standardize back-office processes</p>
                    </li>
                </ul>
            </div>
        <div class="col-md-12">
                <ul>
                    <li>
                        <div class="redBullets"></div>
                        <p class="bulletContent">Accurate hotel and restaurant revenue management </p>
                    </li>
                </ul>
            </div>
        <div class="col-md-12">
                <ul>
                    <li>
                        <div class="redBullets"></div>
                        <p class="bulletContent">Manage costs and drive bottom line profits</p>
                    </li>
                </ul>
            </div>
        <div class="col-md-12">
                <ul>
                    <li>
                        <div class="redBullets"></div>
                        <p class="bulletContent">Capture and manage key finance information</p>
                    </li>
                </ul>
            </div>
        </div>
        <div class="col-md-6">
        <div class="col-md-12">
                <ul>
                    <li>
                        <div class="redBullets"></div>
                        <p class="bulletContent">Simplify operations and reduce overheads</p>
                    </li>
                </ul>
            </div>
        <div class="col-md-12">
                <ul>
                    <li>
                        <div class="redBullets"></div>
                        <p class="bulletContent">Integrate front and back office systems</p>
                    </li>
                </ul>
            </div>
        <div class="col-md-12">
                <ul>
                    <li>
                        <div class="redBullets"></div>
                        <p class="bulletContent">Analyze financial reports in real-time</p>
                    </li>
                </ul>
            </div>
        <div class="col-md-12">
                <ul>
                    <li>
                        <div class="redBullets"></div>
                        <p class="bulletContent">Eliminate duplicate processes</p>
                    </li>
                </ul>
            </div>
        <div class="col-md-12">
                <ul>
                    <li>
                        <div class="redBullets"></div>
                        <p class="bulletContent">Operate in nearly paperless environments</p>
                    </li>
                </ul>
            </div>
</div>
        </div>
    <!-- Content Ends Here-->
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterScript" runat="server">
</asp:Content>
