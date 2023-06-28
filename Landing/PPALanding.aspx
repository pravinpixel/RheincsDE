<%@ Page Title="PPA" Language="C#" MasterPageFile="~/RheincsLanding.Master" AutoEventWireup="true" CodeBehind="PPALanding.aspx.cs" Inherits="RheinBrucke.Landing.PPALanding" %>

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
    <script type="text/javascript">
        /* <![CDATA[ */
        var google_conversion_id = 955726328;
        var google_conversion_language = "en";
        var google_conversion_format = "3";
        var google_conversion_color = "ffffff";
        var google_conversion_label = "V2P3CLXol28Q-PPcxwM";
        var google_remarketing_only = false;
        /* ]]> */
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
                <li><a href="<%=rootpath%>" class="redColor">Home <span>» </span></a></li>
                <li><a href="#" class="redColor">Solutions<span> » </span></a></li>
                <li><a href="#" class="redColor">Our Solutions<span> » </span></a></li>
                <li><a href="#" class="redColor">PPA</a></li>
            </ul>
        </div>
        <!--Eof Breadcrumb row-->
        <!-- Slider Starts here-->
        <div class="row">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
             <%--   <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>


                </ol>--%>
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="../../../Assets/images/PPA-banner.jpg" alt="PPA-banner" class="img-responsive" /><div class="container">
                            <div class="carousel-caption rhein-caption-text">
                                <div class="rhein-banner-heading-black-bg pull-right"><span class="rhein-banner-heading-black"><b>RheinBrücke’s Power Plant Analytics</b><br />
                                    Helps CFO’s, Commercial Managers & Field Officers to maximize ROI of Power plant by improving operational efficiencies using predictive analytics </span></div>
                            </div>
                        </div>
                    </div>
                <%--    <div class="item">
                        <img src="../../../Assets/LandingRheincs/Images/hcm-2.jpg" alt="Home-Banner" class="img-responsive" /><div class="container">
                            <div class="carousel-caption rhein-caption-text">
                                <div class="rhein-banner-heading-black-bg pull-right"><span class="rhein-banner-heading-black"><b>RheinBrücke’s Power Plant Analytics covers</b><br />
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
    <div class="container">
        <!--Overview and form div-->
        <div class="row">
            <!--overview-->
            <div class="clearfix">&nbsp;</div>
            <div class="col-md-12 contentwithpadding">
                <h3 class="redColor">OVERVIEW OF PPA</h3>
                <div class="mainContent-normal contentdiv text-justify">
                    PPA is a Power Plant Analytics tool to address the unique needs of power Plant industry. Most of the ERP suites available in the market do not cater to many of the special needs of a power Plant. The PPA solution includes managing power purchase agreements, budgeting and forecasting, scheduling power generation, revenue calculations, billing along with different analytical dashboards such as Daily, monthly reports, reconciliations and trends. It enables the decision makers to foresee potential opportunities & threats, and formulate strategies to deal with them proactively.
                </div>
                <h3 class="redColor">FEATURES OF PPA</h3>
            </div>

        </div>
        <!--Features-->
        <div class="row paddingGreycontainer bgcol">
            <div class="row col-md-12 padding">
                <div class="col-md-3">
                    <div class="redBullets-epicor-inner"></div>

                    <p class="bulletContent-epicor-inner-epc">
                        Holistic view of operational, financial, commercial and Market, shipping data at ease.
                    </p>
                </div>

                <div class="col-md-3">
                    <div class="redBullets-epicor-inner"></div>

                    <p class="bulletContent-epicor-inner-epc">
                        Gain deep insights about the plant operations, market profitability of each PPA.
                    </p>
                </div>



                <div class="col-md-3">
                    <div class="redBullets-epicor-inner"></div>
                    <p class="bulletContent-epicor-inner-epc">
                        Better understanding of operational trends, patterns, root cause.
                    </p>
                </div>

                <div class="col-md-3">
                    <div class="redBullets-epicor-inner"></div>
                    <p class="bulletContent-epicor-inner-epc">
                        Get instant and well-evaluated answers to key questions and take informed decisions, at a click.
                    </p>
                </div>

            </div>
              <div class="row col-md-12 padding">
                <div class="col-md-3">
                    <div class="redBullets-epicor-inner"></div>

                    <p class="bulletContent-epicor-inner-epc">
                        Monthly/ yearly reconciliation of revenue and material inventory at a click of the button.
                    </p>
                </div>

                <div class="col-md-3">
                    <div class="redBullets-epicor-inner"></div>

                    <p class="bulletContent-epicor-inner-epc">
                        Improve collaboration by allowing user to access relevant business data in real time.
                    </p>
                </div>



                <div class="col-md-3">
                    <div class="redBullets-epicor-inner"></div>
                    <p class="bulletContent-epicor-inner-epc">
                        Flexibility to create own reports with self- service tools.
                    </p>
                </div>

                <div class="col-md-3">
                    <div class="redBullets-epicor-inner"></div>
                    <p class="bulletContent-epicor-inner-epc">
                        Perform Cost-Profitability analysis at Division / Organization Unit / Cost Centre levels; analyze and forecast cash flows; view the status of Working each PPA.
                    </p>
                </div>

            </div>
            <div class="row col-md-12 padding">
                <div class="col-md-3">
                    <div class="redBullets-epicor-inner"></div>

                    <p class="bulletContent-epicor-inner-epc">
                        Get Speedy and precise insights about power plant operation to aid instant decision making.
                    </p>
                </div>

                <div class="col-md-3">
                    <div class="redBullets-epicor-inner"></div>

                    <p class="bulletContent-epicor-inner-epc">
                        Instant Alerts and Notification system.
                    </p>
                </div>



                <div class="col-md-3">
                    <div class="redBullets-epicor-inner"></div>
                    <p class="bulletContent-epicor-inner-epc">
                        User defined access based on authentication.
                    </p>
                </div>
            </div>
            <div class="clearfix">&nbsp;</div>

        </div>
        <!--eof overview and form div-->
    </div>
          <div class="clearfix">&nbsp;</div>
    <div class="col-md-12 contentwithpadding">
                <h3 class="redColor">MODULES OF PPA</h3>
        </div>
    <div class="clearfix"></div>
    <div class="container">
        <div class="row paddingGreycontainer bgcol">

            <div class="row col-md-12 padding">
                <div class="col-md-4">
                    <div class="redBullets-manufacturing"><i class="fa fa-pie-chart"></i></div>
                    <div class="redColor bulletContent-manufacturing-title">
                        <b>PPA Management </b>
                    </div>
                    <ul class="bulletContent-manufacturing">
                        <li style="list-style-type: none;" class="redColor">RheinBruke’s Power plant analytics solution simplifies the user to</li>
                    </ul>
                    <ul class="bulletContent-manufacturing marg-top"><li style="list-style-type: disc;">Create and Manage the power purchase agreement details.</li><li style="list-style-type: disc;">Update the tariff and transmission charges on regular basis for revenue calculation.</li></ul>

                </div>
                <div class="col-md-4">
                    <div class="redBullets-manufacturing"><i class="fa fa-line-chart"></i></div>
                    <div class="redColor bulletContent-manufacturing-title">
                        <b>Budget and Forecast</b>
                    </div>
                    <ul class="bulletContent-manufacturing">
                        <li style="list-style-type: none;" class="redColor">PPA provides monthly budget and forecast value for a quick comparison against daily actuals.</li>
                    </ul>

                </div>
                <div class="col-md-4">
                    <div class="redBullets-manufacturing"><i class="fa fa-bar-chart"></i></div>
                    <div class="redColor bulletContent-manufacturing-title">
                        <b>Power Generation Scheduling</b>
                    </div>
                    <ul class="bulletContent-manufacturing">
                        <li style="list-style-type: none;" class="redColor">Scheduling is a key element in managing the power plant operations. Our solution provides.</li>
                    </ul>
                     <ul class="bulletContent-manufacturing marg-top">
                         <li style="list-style-type: disc;">Advance scheduling on daily basis.</li>
                         <li style="list-style-type: disc;">Manage multiple revisions of scheduling.</li>
                         <li style="list-style-type: disc;">Store the schedule data in different versions.</li>
                         <li style="list-style-type: disc;">Manage schedule confirmation document for each PPA for each schedules.</li>
                     </ul>
                </div>
            </div>
            <div class="row col-md-12 padding">
                <div class="col-md-4">
                    <div class="redBullets-manufacturing"><i class="fa fa-money"></i></div>
                    <div class="redColor bulletContent-manufacturing-title">
                        <b>Revenues</b>
                    </div>
                    <ul class="bulletContent-manufacturing">
                        <li style="list-style-type: none;" class="redColor">Our solution is packed with functionalities that enable the user to</li>
                    </ul>
                    <ul class="bulletContent-manufacturing marg-top">
                         <li style="list-style-type: disc;">Calculate revenue and transmission charges for each PPA based on contract delivery point, based on term period (Long/ Medium/ Short).</li>
                         <li style="list-style-type: disc;">Calculate plant trip transmission charges based on schedule revision.</li>
                         
                     </ul>
                </div>
                <div class="col-md-4">
                    <div class="redBullets-manufacturing"><i class="fa fa-file-text"></i></div>
                    <div class="redColor bulletContent-manufacturing-title">
                        <b>Billing</b>
                    </div>
                    <ul class="bulletContent-manufacturing">
                        <li style="list-style-type: none;" class="redColor">With RheinBrücke Power plant solution, billing becomes simplified for business users to</li>
                    </ul>
                    <ul class="bulletContent-manufacturing marg-top">
                         <li style="list-style-type: disc;">Generate bill for each PPA based on the bill type -Energy Bill / Open access, and also based on time line.</li>
                         <li style="list-style-type: disc;">Maintain Multiple versions of bill generation.</li>
                         <li style="list-style-type: disc;">View and download the generated bill in excel.</li>
                     </ul>
                </div>
                
            </div>
          
            <div class="clearfix">&nbsp;</div>
            <%--<div class="boldBlackheading padding">
                        <p><b>To know more download our Brochure by submitting the above form</b></p>
                    </div>--%>
        </div>
    </div>

    <div class="container contentwithpadding">
        <div class="wrappernewbullet main-container">
            <h3 class="redColor">BENEFITS OF PPA</h3>
            <div class="col-md-12">
                <ul>
                    <li>
                        <div class="redBullets"></div>
                        <p class="bulletContent"><b>CCO/CFO</b></p>
                        <p>Power plant analytics solution provides decision making inputs to the CCO (Chief Commercial Officer) and the CFO not only historical trends & reports but also gives them the capability to do What-If analysis and profits/loss based on power purchase agreement tariffs and penalties, plant operational metrics and coal usage & calorific values etc. Additionally, scenarios such as partial plant outage, coal ment delays can be simulated to evaluate the impact on commercial and operational effectiveness.</p>
                    </li>
                </ul>
            </div>
            <div class="col-md-12">
                <ul>
                    <li>
                        <div class="redBullets"></div>
                        <p class="bulletContent"><b>Field Officers</b></p>
                        <p class="bulletContent">Power plant analytics Business Intelligence solutions allow the field officers to act based on real time data using smartphones with a hybrid application which includes alerts and notifications about the power plant status. This provides timely input to the line of business applications and allows the field officers to perform day to day preventive maintenance within the power plant.</p>
                    </li>
                </ul>
            </div>
            <div class="col-md-12">
                <ul>
                    <li>
                        <div class="redBullets"></div>
                        <p class="bulletContent"><b>Power Users ( Finance / Commercial / Procurement team )</b></p>
                        <p class="bulletContent">Along with the standard BI reports and BI dashboards for the decision makers, the system exposes the data warehouse to power users to create reports using Microsoft Power Pivot. This enables the power user to create the additional reports and analyse various scenarios without dependency on IT developers.</p>
                    </li>
                </ul>
            </div>

        </div>
        <h3 class="redColor">TESTIMONIALS</h3>
        <div class="col-md-12">
            <!--Massimiliano customer reference -->
            <div class="col-md-12 marg-10">
                <%-- <div class="col-md-1">
                                <img class="testimonial-img1 img-circle1 ld-mag2" src="/Assets/images/Testimonial/Milani.png" alt="Testimonial by Milani" style="margin-right: 10px; width: 80px; height: 80px;" />
                            </div>--%>
                <div class="col-md-10" style="padding-left: 0px;">
                    <div class="deco-header2">
                        <p class="redBottom1"><span class="bgcol1">Rajesh Zoldeo |</span> <span class="redColor">Chief Commercial Officer & TPCIL & Sembcorp Gayatri Power project Ltd</span></p>
                    </div>
                </div>
                <div class="row col-md-12" style="padding-top: 7px;">
                    <p class="ldr-marg text-justify">We have been working closely with RheinBrücke to roll out our power-plant analytics solution. We were able to very quickly implement this solution that gives us holistic visibility of the plant performance. Inputs are aggregated form the plant as well as from our ERP to give us a high degree of visibility on overall plant performance. The solution is very intuitive, providing very high ease of use, in addition to being very cost effective. Our business users needed minimal training to use this solution. I am very happy with the proactive approach and work done by Team RheinBrücke and look forward to their ongoing support.</p>
                </div>
            </div>
            <!--EOF Massimiliano customer reference -->

        </div>
    </div>
    <!-- Content Ends Here-->
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterScript" runat="server">
</asp:Content>
