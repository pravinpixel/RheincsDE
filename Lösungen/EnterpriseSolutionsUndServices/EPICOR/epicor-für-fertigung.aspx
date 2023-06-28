<%@ Page Title="Epicor für Fertigung| Epicor ERP | erp solutions für kmu| ERP-Implementierung|ERP Implementierungen für EMEA | ERP Implementierungen für Germany | RheinBrücke IT Consulting" Language="C#" MasterPageFile="~/RheincsLanding.Master" AutoEventWireup="true" CodeBehind="epicor-für-fertigung.aspx.cs" Inherits="RheinBrucke.Solutions.EnterpriseServicesAndSolutions.EPICOR.epicor_für_fertigung" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headerPlaceHolder" runat="server">
     <meta name="description" content="Epicor ERP-Software für die Fertigung ist eine spezialisierte Lösung für die Fertigungsindustrie. Klicken Sie hier, um mehr über die Fertigungs-ERP-Software von Epicor zu erfahren. RheinBrücke IT Consulting ist der größte Epicor Partner in EMEA für Epicor ERP Implementierungen "/>
<meta name="keywords" content="ERP für die Fertigung, enterprise resource planning, erp provider, erp companies, erp demo, erp small business, erp solutions for kmu,  erp online, erp selection, erp software companies, ERP system for small businesses, erp company, online erp system,  software erp, software for medium-sized companies ERP Implementierungen für Germany, Enterprise-Ressourcenplanung"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        
        .btn-primary.active, .btn-primary:active, .open > .dropdown-toggle.btn-primary
        {
    color: #7b1314 !important;
    background-color: #fff !important;
    border-color: #DDDDDD !important;
}
        h2 {
    font-size: 27px;
}
        .write-to-us-input
        {
            font-size:12px;
        }
        .mainContent-normal-manufacturing
        {
                font-size:17px;
                line-height: 1.5em;
                color: #2f2f2f;
        }
        .redBullets-manufacturing >i
        {
            
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
       .redBullets-manufacturing >i:after {
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
       .redBullets-manufacturing >i:hover
       {
           background-color:#7B1315;
          box-shadow: inset 0 0 0 1px #d7d7d7;
    -webkit-box-shadow: inset 0 0 0 1px #d7d7d7;
    transition: background-color 400ms,background-color 400ms;
           border-radius: 100%;
           color:#fff;
       }
        .bulletContent-manufacturing {
         margin-left: 60px;
         font-size:14px;
        }
        .bulletContent-manufacturing-title
        {
            margin-left: 60px;
            font-size:16px;
        }
        .bulletContent-manufacturing li:before {
            content: "\2713";
            color: #7b1317;
            padding-right: 10px;
        }
        .black-color
        {
            color:#2f2f2f!important;
        }
        .redBottom1
        {
            margin-left:5px;
        }
       @media (max-width: 1199px) and (min-width: 992px)
{
.redBottom1 {
    border-bottom: 2px solid transparent;
    padding-bottom: 1.001em;
    margin-bottom: -1px;
    border-color: #7b1315!important;
    font-weight: 400;
    font-size: 12px;
    font-family: sans-serif;
    color: #2f2f2f;
    padding-top: 14px;
    padding-left: 10px;
}
}
@media (max-width: 991px) and (min-width: 768px)
{
.redBottom1 {
    border-bottom: 2px solid transparent;
    padding-bottom: 1.001em;
    margin-bottom: -1px;
    border-color: #7b1315!important;
    font-weight: 400;
    font-size: 13px;
    font-family: sans-serif;
    color: #2f2f2f;
}
.deco-header2 {
    border-bottom: none;
    line-height: 16px;
    padding-left: 63px;
}
.marg-10 {
    margin-bottom: 40px;
}
}
@media (max-width: 767px) and (min-width: 640px)
{
.redBottom1 {
    border-bottom: 2px solid transparent;
    padding-bottom: 1.001em;
    margin-bottom: -1px;
    border-color: #7b1315!important;
    font-weight: 400;
    font-size: 13px;
    font-family: sans-serif;
    color: #2f2f2f;
}

.deco-header2 {
    border-bottom: none;
    line-height: 16px;
    padding-left: 63px;

}
.marg-10 {
    margin-bottom: 40px;
}
}
@media (max-width: 639px) and (min-width: 480px)
{
.redBottom1 {
    border-bottom: 2px solid transparent;
    padding-bottom: 1.001em;
    margin-bottom: -1px;
    border-color: #7b1315!important;
    font-weight: 400;
    font-size: 16px;
    font-family: sans-serif;
    color: #2f2f2f;
    padding-top: 24px;
}
.deco-header2 {
    border-bottom: 1px solid #eee;
    line-height: 18px;
}
.marg-10 {
    margin-bottom: 40px;
}
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
                <li><a href="<%=rootpath%>" class="redColor" >Home <span>» </span></a></li>
                <li><a href="#" class="redColor">Lösungen<span> » </span></a></li>
                <li><a href="#" class="redColor">Enterprise Solutions (ERP) &amp; Services<span> » </span></a></li>
                <li><a href="#" class="redColor">RheinBrücke EPICOR ERP Implementation Services<span> » </span></a></li>
                <li><a href="#" class="redColor">Epicor Für Fertigung</a></li>
            </ul>       
         </div>
         <!--Eof Breadcrumb row-->
         <!-- Slider Starts here-->
        <div class="row">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                    <li data-target="#myCarousel" data-slide-to="3"></li>
                     <li data-target="#myCarousel" data-slide-to="4"></li>
                    <li data-target="#myCarousel" data-slide-to="5"></li>
                    <li data-target="#myCarousel" data-slide-to="6"></li>

                </ol>
                <div class="carousel-inner" role="listbox">                  
                    <div class="item active">
                        <img src="../../../Assets/LandingRheincs/Images/banner1.jpg" alt="ERP-Lösungen für Hersteller bereit" class="img-responsive" /><div class="container">
                            <div class="carousel-caption rhein-caption-text">                                
                                <div class="rhein-banner-heading-black-bg pull-right"><span class="rhein-banner-heading-black">RheinBrücke stellt ERP-Lösungen für Hersteller bereit, mit denen diese den Bedürfnissen ihrer Stakeholder mit der für die sich ständig wandelnden Märkte von heute erforderlichen Flexibilität gerecht werden können</span></div>                               
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <img src="../../../Assets/LandingRheincs/Images/banner2.jpg" alt="EPICOR ERP" class="img-responsive" /><div class="container">
                            <div class="carousel-caption rhein-caption-text">                               
                                <div class="rhein-banner-heading-black-bg pull-right"><span class="rhein-banner-heading-black">Mit EPICOR ERP können Hersteller alle ihre Prozesse und Datenquellen integrieren, um erweiterte Funktionen wirksam zur Verbesserung aller Aspekte ihrer Betriebsabläufe einzusetzen.</span></div>                                
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <img src="../../../Assets/LandingRheincs/Images/banner3.jpg" alt="Home-Banner" class="img-responsive" /><div class="container">
                            <div class="carousel-caption rhein-caption-text">                               
                                <div class="rhein-banner-heading-black-bg pull-right"><span class="rhein-banner-heading-black">Epicor und RheinBrücke können Herstellern helfen, neue Standards der Unternehmensleistung zu erreichen, mit denen sie in ihrer Branche an vorderster Stelle stehen.</span></div>                                
                            </div>
                        </div>
                    </div>
                     <div class="item">
                        <img src="../../../Assets/LandingRheincs/Images/banner4.jpg" alt="Home-Banner" class="img-responsive" />
                         <div class="container">
                            <div class="carousel-caption rhein-caption-text">                              
                                <div class="rhein-banner-heading-black-bg pull-right"><span class="rhein-banner-heading-black">Wir spezialisieren uns auf Lösungen, die ideal für einen breiten Bereich an Sektoren sind und mit denen Sie Ihre Geschäftskunden im Hinblick auf effiziente Prozesse und bewährte Verfahren schulen und unterstützen können.</span></div>
                               </div>
                        </div>
                    </div>
                     <div class="item">
                       <img src="../../../Assets/LandingRheincs/Images/banner5.jpg" alt="Home-Banner" class="img-responsive" /><div class="container">
                            <div class="carousel-caption rhein-caption-text">                               
                                <div class="rhein-banner-heading-black-bg pull-right"><span class="rhein-banner-heading-black">Unsere Lösungen und Vorlagen bieten die erforderliche Flexibilität, um detailliert auf individuelle, unternehmensspezifische Bedingungen und Prozesse zu reagieren.</span></div>                                
                            </div>
                        </div>
                    </div>
                     <div class="item">
                        <img src="../../../Assets/LandingRheincs/Images/banner6.jpg" alt="Home-Banner" class="img-responsive" /><div class="container">
                            <div class="carousel-caption rhein-caption-text">                               
                                <div class="rhein-banner-heading-black-bg pull-right"><span class="rhein-banner-heading-black">Mit Epicor können Sie die schlanke Produktion optimieren und sich so auf die Hauptprioritäten konzentrieren, um zu intelligenteren Entscheidungen zu kommen und die Kundenzufriedenheit zu steigern.</span></div>                                
                            </div>
                        </div>
                    </div>
                     <div class="item">
                        <img src="../../../Assets/LandingRheincs/Images/banner7.jpg" alt="Home-Banner" class="img-responsive" /><div class="container">
                            <div class="carousel-caption rhein-caption-text">                               
                                <div class="rhein-banner-heading-black-bg pull-right"><span class="rhein-banner-heading-black">RheinBrücke ist davon überzeugt, dass eine erfolgreiche ERP-Anwendung ein entscheidender Faktor ist, da sie sich nahezu auf alle Aspekte ihrer Fertigungstätigkeit auswirkt. So helfen wir unseren Kunden, auf wettbewerbsintensiven Märkten erfolgreich zu sein.</span></div>                                
                            </div>
                        </div>
                    </div>
                </div>
                <%-- <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"><span aria-hidden="true"></span><span class="sr-only">Previous</span></a><a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"><span aria-hidden="true"></span><span class="sr-only">Next</span></a>--%>
            </div>
               </div>
        
     </div>     <!-- Slider Ends here-->  
    <div class="container rheincs-container">
    <!--Overview and form div-->
     <div class="row">
         <!--overview--><div class="clearfix">&nbsp;</div>
         <div class="col-md-12 contentwithpadding">
             <h3 class="redColor">Epicor für die Fertigungsindustrie - Überblick</h3>
             <div class="mainContent-normal contentdiv" style="text-align:justify">
                 Hersteller stehen unter ständigem Druck, hochwertige Produkte termingerecht produzieren zu müssen. Konjunkturschwankungen, Mangel an Fachkräften sowie Governance- und Compliance-Vorgaben erhöhen noch die Komplexität, mit der sich die Hersteller täglich auseinandersetzen müssen. Es ist keine leichte Aufgabe, Kosten zu senken, die Rentabilität zu steigern und dabei wettbewerbsfähig zu bleiben. Durch den wirkungsvollen Einsatz von EPICOR ermöglichen wir es unseren Kunden, diesen Anforderungen zu genügen, und setzen sie in die Lage, die zukünftigen Anforderungen der heutigen agilen Produktionsumgebungen zu antizipieren. Epicor ERP unterstützt den kompletten Fertigungsprozess sowie die Automatisierung aller Kernfunktionen des Unternehmens. Es ermöglicht die Integration einer ausgeprägten Qualitätskontrolllösung für die Produktion in jedem Stadium des Herstellungsprozesses; einschließlich Eingangskontrolle, während der Herstellung und bei dem Versand, komplett ab. Die Implementierung dieser Lösung kann Ihnen einen immensen Wettbewerbsvorteil verschaffen.
                 </div>
              <h3 class="redColor">Spezielle Lösungen</h3>
                    <div class="withIcons">                        
                        <div class="mainContent-normal-manufacturing">RheinBrücke ist der größte Epicor-Partner in der Region EMEAI und verfügt über mehr als 300 Personenjahre Erfahrung mit der Epicor ERP-Anwendung.</div>
                        <div class="mainContent-normal-manufacturing">Wir bieten auch ein spezifisches Lösungspaket an, das individuell auf den jeweiligen Standort und die folgenden fertigungsrelevanten Sektoren zugeschnitten ist:</div>
                    </div>
         </div>
         <!--eof overview-->
        <%-- <!--form-->
         <div class="col-md-6">
            
                <h5 class="deco-header">
                    <span class="redBottom">ENQUIRE NOW TO KNOW MORE</span></h5>
                <form id="form1" method="post">
                <input type="hidden" id="hdfRootUrl" value="<%=rootpath %>" runat="server"/>
                <div class="col-md-12 nopadding">                   
                    <div class="clearfix">&nbsp;</div>
                    <div class="col-md-12">
                        <input id="Username1" name="manufacturing-name" class="write-to-us-input required" placeholder="Name*" />
                    </div>
                    <div class="clearfix">&nbsp;</div>
                    <div class="col-md-12">
                        <input type="text" id="Email1" name="manufacturing-email" class="write-to-us-input required" placeholder="Email*" />
                    </div>
                    <div class="clearfix">&nbsp;</div>
                    <div class="col-md-12">
                        <input type="text" type="text" id="mobile1" name="manufacturing-mobile" class="write-to-us-input required" placeholder="Mobile Number*" />
                    </div>
                    <div class="clearfix">&nbsp;</div>                   
                    <div class="col-md-4 col-sm-4 col-xs-4 ">
                        <div class="textclass textclassmob">                        
                                 <span class="button-checkbox">
                                <button type="button" class="btn btn-sm" data-color="primary">Download Whitepaper</button>
                                <input type="checkbox" name="whitepaper" class="hidden" value="1" />                          
                            </span>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-4  ">
                        <div class="textclass textclassmob">
                            <span class="button-checkbox">
                                <button type="button" class="btn btn-sm btn-consult" data-color="primary">Download Brochure</button>
                                <input type="checkbox" name="consulting" class="hidden" value="1" />
                            </span>
                        </div>
                    </div>

                    <div class="col-md-4 col-sm-4 col-xs-4 ">
                        <div class="textclass textclassmob">
                            <span class="button-checkbox">
                                <button type="button" class="btn btn-sm" data-color="primary"> Request for Demo    </button>
                                <input type="checkbox" name="demo" class="hidden" value="1" />
                            </span>
                        </div>
                    </div>
                </div>
                
                <div class="clearfix">&nbsp;</div>
                <div class="col-md-12">
                     <span class="showErrorMsg" style="color: red"></span>
                    <span id="result" style="color: red"></span>
                    <span class="successmsg" style="color: green"></span>
                    <div class="submitclass" style="margin-top:10px"> <input type="submit" id="Submit1" name="submit" class="submit-button" value="Submit"  onclick="onFormSubmit()" /></div>
                </div>
            </form>
         </div>
          <!--eof form-->--%>
     </div>
    <!--eof overview and form div-->
    </div>     
                <div class="container">
                   
               <div class="clearfix">&nbsp;</div>
                <div class="row paddingGreycontainer bgcol">
                    <div class="row col-md-12 col-sm-12 padding sap-margin">
                        <div class="col-md-4">
                            <ul>
                                <li>
                                    <div class="redBullets-epicor-inner"></div>
                                    
                                    <p class="bulletContent-epicor-inner black-color">Automobilbau</p>
                                </li>
                            </ul>

                        </div>
                        <div class="col-md-4">
                            <ul>
                                <li>
                                    <div class="redBullets-epicor-inner"></div>
                                    
                                    <p class="bulletContent-epicor-inner black-color">Konstruktion und EPC </p>
                                </li>
                            </ul>

                        </div>
                       <div class="col-md-4">
                            <ul>
                                <li>
                                    <div class="redBullets-epicor-inner"></div>
                                    
                                    <p class="bulletContent-epicor-inner black-color">Diskrete Fertigung </p>
                                </li>
                            </ul>

                        </div>

                            

                    </div>
                     <div class="row col-md-12 col-sm-12 padding sap-margin">
                        <div class="col-md-4">
                            <ul>
                                <li>
                                    <div class="redBullets-epicor-inner"></div>
                                    
                                    <p class="bulletContent-epicor-inner black-color">Metallerzeugnisse</p>
                                </li>
                            </ul>

                        </div>
                        <div class="col-md-4">
                            <ul>
                                <li>
                                    <div class="redBullets-epicor-inner"></div>
                                    
                                    <p class="bulletContent-epicor-inner black-color">Industriemaschinen</p>
                                </li>
                            </ul>

                        </div>
                       <div class="col-md-4">
                            <ul>
                                <li>
                                    <div class="redBullets-epicor-inner"></div>
                                    
                                    <p class="bulletContent-epicor-inner black-color">Möbel und Einrichtungsgegenstände</p>
                                </li>
                            </ul>

                        </div>

                            

                    </div>
                   <%-- <div class="boldBlackheading padding">
                        <p><b>Capabilities of Epicor ERP for the manufacturing industry:</b></p>
                    </div>--%>

                   <%-- <div class="row col-md-12 padding">
                        <div class="col-md-4">                           
                                    <div class="redBullets-manufacturing"><i class="fa fa-truck"></i></div>
                            <div class="redColor bulletContent-manufacturing-title">
                                Supply Chain Management 
                                    </div>
                                   <ul class="bulletContent-manufacturing">
                                       <li>Inventory Management </li>
                                       <li>Warehouse Management </li>
                                       <li>Supplier Relationship Management </li>
                                       <li>Advanced Material Management </li>
                                </ul>
                               
                        </div>
                      <div class="col-md-4">                           
                                    <div class="redBullets-manufacturing"><i class="fa fa-industry"></i></div>
                            <div class="redColor bulletContent-manufacturing-title">
                                Production Management
                                    </div>
                                   <ul class="bulletContent-manufacturing">
                                       <li>Lean Production</li>
                                       <li>Manufacturing Execution System</li>
                                       <li>Advanced Quality Management</li>
                                       <li>Quality Assurance</li>
                                       <li>Enterprise Manufacturing Intelligence</li>
                                </ul>
                               
                        </div>
                        <div class="col-md-4">                           
                                    <div class="redBullets-manufacturing"><i class="fa fa-calendar"></i></div>
                            <div class="redColor bulletContent-manufacturing-title">
                                Planning and Scheduling
                                    </div>
                                   <ul class="bulletContent-manufacturing">
                                       <li>Forecasting and Master Production Scheduling</li>
                                       <li>Material Requirement Planning</li>
                                       <li>Scheduling and Resource Management</li>
                                       <li>Advanced Planning and Scheduling</li>
                                </ul>
                               
                        </div>
                    </div>
                    <div class="row col-md-12 padding">
                       <div class="col-md-4">                           
                                    <div class="redBullets-manufacturing"><i class="fa fa-line-chart"></i></div>
                            <div class="redColor bulletContent-manufacturing-title">
                               Project Management
                                    </div>
                                   <ul class="bulletContent-manufacturing">
                                       <li>Project Planning</li>
                                       <li>Resource Management</li>
                                       <li>Time Management</li>
                                       <li>Project Billing</li>
                                       <li>Mobile expense</li>
                                </ul>
                               
                        </div>
                        <div class="col-md-8">                           
                                    <div class="redBullets-manufacturing"><i class="fa fa-money"></i></div>
                            <div class="redColor bulletContent-manufacturing-title">
                               Financial Management
                                    </div>
                             <div class="col-md-5">
                                   <ul class="bulletContent-manufacturing">
                                       
                                       <li>General Ledger</li>
                                       <li>Accounts Payable and Receivable</li>
                                       <li>Credit and Collections</li>
                                       <li>Cash Management</li>
                                        <li>Fixed Asset Management</li>
                                          </ul>  </div>
                             <div class="col-md-6">
                                   <ul class="bulletContent-manufacturing">
                                      
                                       <li>Financial Planning</li>
                                       <li>Advanced Financial Reporting and Allocations</li>
                                       <li>Consolidations and Eliminations</li>
                                       <li>Tax Connect</li>
                                </ul>
                               </div>
                        </div>
                    </div>--%>
                     <div class="clearfix">&nbsp;</div>
                    <%--<div class="boldBlackheading padding">
                        <p><b>To know more download our Brochure by submitting the above form</b></p>
                    </div>--%>
                </div>
                      </div>
    
                <div class="container contentwithpadding rheincs-container">
                    <div class="wrappernewbullet">
                        <div class="clearfix">&nbsp;</div>
                    <h3 class="redColor">Vorteile von RheinBrücke</h3>
                    <p class="padd-bottom-10"><b>Mit unserer Epicor-Anwendung können Sie</b></p>
                    <div class="col-md-12">
                        <ul>
                            <li>
                                <div class="redBullets"></div>
                                <p class="bulletContent">Innovative Produkte und Dienstleistungen für neue und bestehende Märkte entwickeln</p>
                                   </li>
                        </ul>
                    </div>
                    <div class="col-md-12">
                        <ul>
                            <li>
                                <div class="redBullets"></div>
                                <p class="bulletContent">Operationelle Exzellenz mit optimierter Logistik und Fertigung erreichen</p>
                                 </li>
                        </ul>
                    </div>
                     <div class="col-md-12">
                        <ul>
                            <li>
                                <div class="redBullets"></div>
                                <p class="bulletContent">Die Geschäftsergebnisse mit präziseren internen Kontrollen und Einblicken verbessern </p>
                                 </li>
                        </ul>
                    </div>
                    <div class="col-md-12">
                        <ul>
                            <li>
                                <div class="redBullets"></div>
                                <p class="bulletContent">Zentrale, Niederlassungen und Partner in einem einzelnen Netzwerk verbinden</p> 
                                 </li>
                        </ul>
                    </div>
                         <div class="col-md-12">
                        <ul>
                            <li>
                                <div class="redBullets"></div>
                                <p class="bulletContent">Bei einem wachsendem KMU CRM, Supplier Relationship Management und BI-Funktionen hinzufügen</p> 
                                 </li>
                        </ul>
                    </div>
                <p class="padd-bottom-10">Wenden Sie sich an uns, wenn Sie startbereit sind oder auch einfach nur ein paar Fragen haben. Wir freuen uns, Ihnen bei Ihren Zielen und Herausforderungen in Sachen Fertigungssoftware zu helfen.</p>
         
            </div>
<h3 class="redColor">REFERENZEN</h3>
                    <div class="col-md-12">
                        <!--Massimiliano customer reference -->
                        <div class="col-md-4 marg-10">
                            <div class="col-md-2">
                                <img class="testimonial-img1 img-circle1 ld-mag2" src="/Assets/images/Testimonial/Milani.png" alt="Testimonial by Milani" style="margin-right: 10px; width: 80px; height: 80px;" />
                            </div>
                            <div class="col-md-10 ">
                                <div class="deco-header2">
                                    <p class="redBottom1"><span class="bgcol1">Massimiliano A. Milani |</span> <span class="redColor">Product &amp; Pricing Director Europe &amp; Africa at Federal Mogul Corporation Antwerp, Belgium </span></p>
                                </div>
                            </div>
                            <div class="row col-md-12 padd-top-20">
                                <p class="ldr-marg text-justify">„Vielen Dank für die andauernd gute Arbeit am ERP und Supply Chain Projekt. Ihre Beratung, technische, funktionale und Projektmanagement .........<a data-toggle="modal" data-target="#myModal-Massimiliano">&nbsp;&nbsp; View more</a></p>
                            </div>
                        </div>
                        <!--EOF Massimiliano customer reference -->
                        <!-- Rizwanulla customer reference -->
                        <div class="col-md-4 marg-10 height">
                            <div class="col-md-2">
                                <img class="testimonial-img1 img-circle1 ld-mag2" src="/Assets/images/Testimonial/Rizwanulla-Khan.png" alt="Testimonial by Rizwanulla Khan" style="margin-right: 10px; width: 80px; height: 80px;" />
                            </div>
                            <div class="col-md-10 ">
                                <div class="deco-header2">
                                    <p class="redBottom1 height" style="padding-bottom: 25px !important;">
                                        <span class="bgcol1">Rizwanulla Khan |</span> <span class="redColor">Executive President at Emirates Glass, Saudi American Glass &amp; Lumi Glass </span>
                                    </p>
                                </div>
                            </div>
                            <div class="row col-md-12 padd-top-20">
                                <p class="ldr-marg text-justify">„Wir waren sehr beeindruckt, wie RheinBrücke ihre Arbeit erfüllt hat. Von der Prozessanalys über die Einführung bis hin zur.........<a data-toggle="modal" data-target="#myModal-Rizwanulla">&nbsp;&nbsp; View more</a></p>

                            </div>
                        </div>
                        <!--EOF Rizwanulla customer reference -->
                        <!-- Syed customer reference -->                    
                        <div class="col-md-4 marg-10">
                            <div class="col-md-2">
                                <img class="testimonial-img1 img-circle1 ld-mag2" src="/Assets/images/Testimonial/wajid.png" alt="Testimonial by Syed Waseem Wajid" style="margin-right: 10px; width: 80px; height: 80px;" />
                            </div>
                            <div class="col-md-10 ">
                                <div class="deco-header2">
                                    <p class="redBottom1 height" style="padding-bottom: 25px !important;">
                                        <span class="bgcol1">Syed Waseem Wajid |</span>
                                        <span class="redColor">IT HEAD at Global Glass Manufacturer | KSA, Middle East </span>
                                    </p>
                                </div>
                            </div>
                            <div class="row col-md-12 padd-top-20">
                                <p class="ldr-marg text-justify">„Wir waren sehr beeindruckt, wie RheinBrücke ihre Arbeit erfüllt hat. Von der Prozessanalys über die Einführung bis hin zur Unterstützung nach.........<a data-toggle="modal" data-target="#myModal-Syed">&nbsp;&nbsp; View more</a></p>
                            </div>
                        </div>
                          <!--EOF Syed customer reference -->
                    </div>
                    </div>
    <!-- Content Ends Here-->
      <!--popup massimiliano -->
                <div class="po modal fade " id="myModal-Massimiliano" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header1">
                                <button type="button" class="close close-popup redColor" data-dismiss="modal" aria-label="Close" data-backdrop="false"><span aria-hidden="true">&times;</span></button>
                                <div class="col-md-12">
                                    <div class="col-md-2">
                                        <img class="testimonial-img1 img-circle1 ld-mag2" src="/Assets/images/Testimonial/Milani.png" alt="Testimonial by Milani" style="margin-right: 10px; width: 80px; height: 80px;" />
                                    </div>
                                    <div class="col-md-10 ">
                                        <div class="deco-header2">
                                            <p class="redBottom1"><span class="bgcol1">Massimiliano A. Milani |</span> <span class="redColor">Product & Pricing Director Europe & Africa at Federal Mogul Corporation Antwerp, Belgium </span></p>
                                        </div>
                                    </div>
                                    <div class="row col-md-12 padd-top-20">
                                        <p class="ldr-marg text-justify">„Vielen Dank für die andauernd gute Arbeit am ERP und Supply Chain Projekt. Ihre Beratung, technische, funktionale und Projektmanagement Kompetenz war offensichtlich und wurde von unseren Mitarbeitern sehr geschäzt. Gefreut hat mich auch Ihre Flexibilität, und die transparente Arbeitsweise im Rahmen unserer Zusammenarbeit. Wie erwartet war die Kooperation mit multikulturellen Teams aus Niedrigpreis Ländern ausgezeichnet, ohne jedoch Kompromisse bei der Qualität von Arbeitsergebnissen einzugehen. Machen Sie weiter so.”</p>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>

                </div>
                <!-- EOF popup massimiliano -->
     <!--popup Rizwanulla -->
                <div class="modal fade po" id="myModal-Rizwanulla" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header1">
                                <button type="button" class="close close-popup redColor" data-dismiss="modal" aria-label="Close" data-backdrop="false"><span aria-hidden="true">&times;</span></button>
                                <div class="col-md-12">
                                    <div class="col-md-2">
                                        <img class="testimonial-img1 img-circle1 ld-mag2" src="/Assets/images/Testimonial/Rizwanulla-Khan.png" alt="Testimonial by Rizwanulla Khan" style="margin-right: 10px; width: 80px; height: 80px;" />
                                    </div>
                                    <div class="col-md-10 ">
                                        <div class="deco-header2">
                                            <p class="redBottom1"><span class="bgcol1">Rizwanulla Khan |</span> <span class="redColor">Executive President at Emirates Glass, Saudi American Glass & Lumi Glass </span></p>
                                        </div>
                                    </div>
                                    <div class="row col-md-12 padd-top-20">
                                        <p class="ldr-marg text-justify">„Wir haben Epicor ERP in einer unserer groβen Glasproduktionsanlagen im Nahen Osten implementiert. Obwohl das Produkt gut war, hatten wir Anfangsschwierigkeiten und Herausforderungen, so wie es wohl bei jeder ERP Implementation vorkommen kann. Hier sind wir auf das Unternehmen Rheinbrücke IT consulting mit Sitz in Deutschland gestoβen und haben ihre Unterstützung in Anspruch genommen. Sie schafften einen fantastischen Umschwung im Projekt. Ich habe die offene und effiziente Zusammenarbeit mit dem Unternehmen genossen und schätze ihre Arbeit. Jetzt hat RheinBrücke IT Consulting eine Betriebsstätte im Nahen Osten eröffnet und ich bin überzeugt, dass sie nach ihrem Motto „guter Service" viel Erfolg haben werden."</p>

                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>
                <!--EOF popup Rizwanulla -->

                <!--popup Syed -->
                <div class="modal fade po" id="myModal-Syed" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header1">
                                <button type="button" class="close close-popup redColor" data-dismiss="modal" aria-label="Close" data-backdrop="false"><span aria-hidden="true">&times;</span></button>
                                <div class="col-md-12">
                                    <div class="col-md-2">
                                        <img class="testimonial-img1 img-circle1 ld-mag2" src="/Assets/images/Testimonial/wajid.png" alt="Testimonial by Syed Waseem Wajid" style="margin-right: 10px; width: 80px; height: 80px;" />
                                    </div>
                                    <div class="col-md-10 ">
                                        <div class="deco-header2">
                                            <p class="redBottom1"><span class="bgcol1">Syed Waseem Wajid |</span> <span class="redColor">IT HEAD at Global Glass Manufacturer | KSA, Middle East </span></p>
                                        </div>
                                    </div>
                                    <div class="row col-md-12 padd-top-20">
                                        <p class="ldr-marg text-justify">„Wir waren sehr beeindruckt, wie RheinBrücke ihre Arbeit erfüllt hat. Von der Prozessanalys über die Einführung bis hin zur Unterstützung nach dem Go-Live war ihre Analyse immer detailliert und vollständig.Sie war leicht verständlich für Benutzer, so dass verschiedene Möglichkeiten für Systemerweiterungen mit allen relevanten Informationen bewertet werden konnten." </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <!--EOF popup Syed -->
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterScript" runat="server">
    <script>
        $(document).ready(function () {
            var URI = window.location.pathname;
            var lurl = URI.toLowerCase();
            //alert(lurl);
            if (lurl == "/Lösungen/erp-enterprise-solutions-und-services/epicor/epicor-for-fertigung") {
                window.location.href = "epicor-für-fertigung";
            }
            if (lurl == "/l%c3%b6sungen/erp-enterprise-solutions-und-services/epicor/epicor-for-fertigung") {
                window.location.href = "epicor-für-fertigung";
            }
        });
        </script>
</asp:Content>
