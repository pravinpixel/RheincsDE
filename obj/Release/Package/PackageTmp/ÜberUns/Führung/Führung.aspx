<%@ Page Title="Führung | RheinBrücke IT Consulting" Language="C#" MasterPageFile="~/Rheincs.Master" AutoEventWireup="true" CodeBehind="Führung.aspx.cs" Inherits="RheinBrucke.ÜberUns.Führung.Führung" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headerPlaceHolder" runat="server">
    <meta name="keywords" content="Leadership management ERP Consulting Enterprise IT services technology consulting services solutions " />
    <meta name="Description" content="RheinBrücke believes that the technical expertise and passion of our leadership team enables your organization to achieve tangible goals by leveraging an optimized IT landscape. Our leadership has extensive experience in IT Application Development, Support and Maintenance, SAP, Epicor and Microsoft SharePoint" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .leadership-paddng
        {
            padding-left:52px !important;
        }
    </style>
  <div class="container" id="container-top">
        <!-- breadcrumb-->
        <%--<div class="row">--%>
            <ul class="breadcrumb bread hidden-xs hidden-sm">
                <li><a href="<%=rootpath %>" class="redColor">Home <span>» </span></a></li>
                <li><a href="#" class="redColor">Über Uns<span> » </span></a></li>
                <li><a href="#" class="redColor">Führung</a></li>
            </ul>
        <!-- eof breadcrumb-->
        <!--banner-->
        <div class="row">
            <div class="bg-img2 img-responsive">
                <h1 class="rhein-banner-heading-h2 inner-banner-text1 img-bottom">RheinBrücke</h1>
                <p class="rhein-banner-heading-p inner-banner-text1 ">Mit dem technischen Know-how und der Leidenschaft unseres Leadership-Teams erzielen Sie messbaren Fortschritt für Ihr Unternehmen.</p>
            </div>
        </div>
        <!--eof banner-->
        <!-- First row-->


        <div class="row main-container marg20">
            <h5 class="deco-header">
                <span class="redBottom redColor">AUFSICHTSRAT</span></h5>
            <div class="marg20"></div>
          
                <div class="col-md-6"  style="z-index: 0">
                      <a href="../../../ÜberUns/Führung/JoergPirron">
                    <div class="border-leadership1">
                        <div class="col-md-12 nopadding">
                            <div class="small-red-circle1">
                            </div>
                            <div class="col-md-12 padding-top-10">
                                <div class="col-md-3">
                                    <img src="../../Assets/images/JoergPirron.jpg" alt="Joerg Pirron Advisory Board Member of RheinBrücke" />
                                </div>
                                <div class="col-md-9 leadership-paddng">
                                    <p class="padding-bottom"><span class="span9">Dr.Joerg Pirron</span></p>
                                    <p class="leadmargin"><span class="leadtext-bold"><b>Board Member</b></span></p>

                                </div>

                                <div class="pull-right">
                                    <div class="nav-icon1 bott">
                                        <i class="fa fa-angle-double-right" style="color: #ffffff; font-size: 30px; padding-left: 15px"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    </a>
                </div>

                <div class="col-md-6"  style="z-index: 0">
                      <a href="../../../ÜberUns/Führung/Kenneth-Taormina">
                    <div class="border-leadership1">
                        <div class="col-md-12 nopadding">
                            <div class="small-red-circle1">
                            </div>
                            <div class="col-md-12 padding-top-10">
                                <div class="col-md-3">
                                    <img src="../../Assets/images/Ken-Taormina-115.jpg" alt="Kenneth Taormina Advisory Board Member of RheinBrücke" />
                                </div>
                                <div class="col-md-9 leadership-paddng">
                                    <p class="padding-bottom"><span class="span9">Kenneth Taormina</span></p>
                                    <p class="leadmargin"><span class="leadtext-bold"><b>Board Member</b></span></p>

                                </div>

                                <div class="pull-right">
                                    <div class="nav-icon1 bott">
                                        <i class="fa fa-angle-double-right" style="color: #ffffff; font-size: 30px; padding-left: 15px"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    </a>
                </div>
            <div class="clearfix">&nbsp;</div>

        </div>
                    <div class="row main-container marg20">
            <div class="col-md-6"  style="z-index: 0">
                      <a href="../../../ÜberUns/Führung/Carlos-A-Alvarenga">
                    <div class="border-leadership1">
                        <div class="col-md-12 nopadding">
                            <div class="small-red-circle1">
                            </div>
                            <div class="col-md-12 padding-top-10">
                                <div class="col-md-3">
                                    <img src="../../Assets/images/carlos-small.jpg" alt="CARLOS A. ALVARENGA" />
                                </div>
                                <div class="col-md-9 leadership-paddng">
                                    <p class="padding-bottom"><span class="span9">Carlos A. Alvarenga</span></p>
                                    <p class="leadmargin"><span class="leadtext-bold"><b>Board Member </b></span></p>

                                </div>

                                <div class="pull-right">
                                    <div class="nav-icon1 bott" style="bottom:0px !important">
                                        <i class="fa fa-angle-double-right" style="color: #ffffff; font-size: 30px; padding-left: 15px"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    </a>
                </div>
                </div>
        <!-- eof Fisrt row-->
        
    </div> 
</asp:Content>
