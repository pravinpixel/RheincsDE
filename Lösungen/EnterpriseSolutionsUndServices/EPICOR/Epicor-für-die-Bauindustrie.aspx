<%@ Page Title="Epicor für die Bauindustrie" Language="C#" MasterPageFile="~/RheincsLanding.Master" AutoEventWireup="true" CodeBehind="Epicor-für-die-Bauindustrie.aspx.cs" Inherits="RheinBrucke.Solutions.EnterpriseServicesAndSolutions.EPICOR.Epicor_für_die_Bauindustrie" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headerPlaceHolder" runat="server">
    
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
                margin-left: 68px;
                    margin-top: 13px;
                font-size: 16px;
                    color: #2f2f2f !important;
        }
        .bulletContent-manufacturing li:before {
            content: "\2713";
            color: #7b1317;
            padding-right: 10px;
        }
        .bulletContent-epicor-inner-epc {
    font-size: 16px;
    color: #2f2f2f;
    line-height: 1.2em !important;
}
         .rhein-banner-heading-black-bg
       {
           top:17% !important;
       }
         .mg-lf-5{
             margin-left:5px;
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
                <li><a href="#" class="redColor">Epicor für die Bauindustrie</a></li>
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
                </ol>
                <div class="carousel-inner" role="listbox">                  
                    <div class="item active">
                        <img src="../../../Assets/LandingRheincs/Images/construction-1.jpg" alt="Home-Banner" class="img-responsive" /><div class="container">
                            <div class="carousel-caption rhein-caption-text">                                
                                <div class="rhein-banner-heading-black-bg pull-right"><span class="rhein-banner-heading-black">Wir kennen die Herausforderungen der Baufirmen und haben ein branchenspezifische ERP-Lösung entwickelt, die sich nahtlos in Ihre vorhandene technologische Infrastruktur integrieren lässt.</span></div>                               
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <img src="../../../Assets/LandingRheincs/Images/construction-2.jpg" alt="Home-Banner" class="img-responsive" /><div class="container">
                            <div class="carousel-caption rhein-caption-text">                               
                                <div class="rhein-banner-heading-black-bg pull-right"><span class="rhein-banner-heading-black">Epicor hat alle Lösungen, die Sie brauchen, um Ihre Geschäftstätigkeit zu differenzieren und die Marktanforderungen zu erfüllen oder zu übertreffen.</span></div>                                
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <img src="../../../Assets/LandingRheincs/Images/construction-3.jpg" alt="Home-Banner" class="img-responsive" /><div class="container">
                            <div class="carousel-caption rhein-caption-text">                               
                                <div class="rhein-banner-heading-black-bg pull-right"><span class="rhein-banner-heading-black">Epicor und RheinBrücke können Ihrem Bauunternehmen helfen, neue Standards der Unternehmensleistung zu erreichen, mit denen Sie in Ihrer Branche an vorderster Stelle stehen.</span></div>                                
                            </div>
                        </div>
                    </div>
                  
                </div>
                <%-- <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"><span aria-hidden="true"></span><span class="sr-only">Previous</span></a><a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"><span aria-hidden="true"></span><span class="sr-only">Next</span></a>--%>
            </div>
               </div>
         </div>
          <!-- Slider Ends here-->  
    <div class="container rheincs-container">
    <!--Overview and form div-->
     <div class="row">
         <!--overview--><div class="clearfix">&nbsp;</div>
         <div class="col-md-12 contentwithpadding">
             <h3 class="redColor">Übersicht Epicor für die Bauindustrie </h3>
             <div class="mainContent-normal contentdiv" style="text-align:justify">
                 Die Bauwirtschaft steht Herausforderungen gegenüber wie das Abgeben genauer Angebote und Kostenvoranschläge, der effizienten Verwaltung komplexer Projekte, Änderungsaufträgen und Abrechnungen. Epicor geht über die traditionelle projektbasierte ERP hinaus und bietet ein umfassendes Projektmanagement mit Projektstrukturplänen auf mehreren Ebenen, robuster Einsatzplanung und effektivem Vertragsmanagement. Dabei wird auch ein effizientes Angebotsmanagement durch eingebettete Kundenbeziehungsmanagement (CRM)-Funktionen mit Zugriff auf historische Angebote unterstützt. Epicor bietet eine vollständige Sichtbarkeit projektbasierter Ressourcen einschließlich Vermögenswerte, Inventar, Materialien und Arbeit und ermöglicht eine präzise und zeitnahe Abrechnung von Projektkosten durch nahtlose Erfassung von Zeit, Material und Ausgabentransaktionen. Leistungsstarke und flexible Umsatzrealisierung einschließlich Rentabilitätsverfolgung und Margenkontrolle ist ein zentrales Merkmal. Verbessern Sie die Zuverlässigkeit und reduzieren Sie die Sachkosten mit unserer umfassenden Anlagenverwaltungsfunktion.
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

                    <div class="col-md-12 padding">
                        <div class="col-md-4">                           
                                    <div class="redBullets-epicor-inner "></div>
                                   
                                    <p class="bulletContent-epicor-inner-epc">
                                Von Grund auf entwickelt mit moderner serviceorientierter Architektur (SOA) geht Epicor für Konstruktion und Engineering weit über die traditionelle projektbasierte ERP-Lösung hinaus.</p>
                                    </div>
                               
                      <div class="col-md-4">                           
                                    <div class="redBullets-epicor-inner "></div>
                                   
                                    <p class="bulletContent-epicor-inner-epc">
                                Leistungsstarke Umsatzrealisierungsfunktionen einschließlich Rentabilitätsverfolgung und Margenkontrolle</p>
                                    </div>
                                  
                               
                       
                        <div class="col-md-4">                           
                                    <div class="redBullets-epicor-inner "></div>
                                    <p class="bulletContent-epicor-inner-epc">
                                Umfangreiches Projektmanagement mit Projektstrukturplänen auf mehreren Ebenen, robuster Einsatzplanung und effektivem Vertragsmanagement</p>
                                    </div>               
                       
                    </div>
                    <div class="col-md-12 padding">
                       <div class="col-md-4">                           
                                    <div class="redBullets-epicor-inner "></div>
                                   
                                    <p class="bulletContent-epicor-inner-epc">
                               Effizientes Angebotsmanagement durch eingebettete CRM-Funktionen einschließlich Zugriff auf historische Angebote</p>
                                    </div>
                                   
                               
                        
                        <div class="col-md-4">                           
                                    <div class="redBullets-epicor-inner "></div>
                                   
                                    <p class="bulletContent-epicor-inner-epc">
                               Vollständige Sichtbarkeit projektbasierter Ressourcen einschließlich Vermögenswerte, Inventar, Materialien und Arbeit</p>
                                    </div>
                            <div class="col-md-4">                           
                                    <div class="redBullets-epicor-inner "></div>
                                   
                                    <p class="bulletContent-epicor-inner-epc">
                               Präzise und zeitnahe Abrechnung von Projektkosten durch nahtlose Erfassung von Zeit, Material und Ausgabentransaktionen, gestützt durch flexibles Umsatzrealisierungsmanagement</p>
                                    </div>
                            </div>
                    <div class="col-md-12 padding">
                       <div class="col-md-4">                           
                                    <div class="redBullets-epicor-inner "></div>
                                   
                                    <p class="bulletContent-epicor-inner-epc">
                              Integriertes Enterprise Performance Management zur Analyse von Kosten, Status und KPIs eines Projekts</p>
                                    </div>
                       
                    </div>
                     <div class="clearfix">&nbsp;</div>
                  
                </div>
                      </div>
    
                <div class="container contentwithpadding">
                    <div class="wrappernewbullet main-container">
                    <h3 class="redColor">Vorteile von RheinBrücke  </h3>
                     <p>RheinBrücke hat bewährte Verfahren und standardisierte Prozesse in der Bau- und EPC-Branche aus unserer Erfahrung mit mehreren ERP-Anwendungen übernommen, um dringende Probleme der Bauwirtschaft zu lösen.</p>
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
                                <p class="bulletContent">Die Geschäftsergebnisse mit präziseren internen Kontrollen und Einblicken verbessern</p>
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
                                <p class="bulletContent">Bei Unternehmenswachstum CRM, Supplier Relationship Management und BI-Funktionen hinzufügen</p> 
                                 </li>
                        </ul>
                    </div>
                <p class="padd-bottom-10">Wenden Sie sich an uns, wenn Sie startbereit sind oder Fragen haben. Wir freuen uns, Ihnen bei Ihren Zielen und Herausforderungen in Sachen Software für Konstruktion zu helfen.</p>
         <div class="clearfix">&nbsp;</div>
                        <h3 class="redColor">REFERENZEN</h3>
            </div>
                    <div class="col-md-12 mg-lf-5">
                        <!--Massimiliano customer reference -->
                        <div class="col-md-12 marg-10">
                            <div class="col-md-1">
                                <img class="testimonial-img1 img-circle1 ld-mag2" src="/Assets/images/Testimonial/Milani.png" alt="Testimonial by Milani" style="margin-right: 10px; width: 80px; height: 80px;" />
                            </div>
                            <div class="col-md-10" style="padding-left:0px;">
                                <div class="deco-header2">
                                    <p class="redBottom1"><span class="bgcol1">Massimiliano A. Milani |</span> <span class="redColor">Product &amp; Pricing Director Europe &amp; Africa at Federal Mogul Corporation Antwerp, Belgium </span></p>
                                </div>
                            </div>
                            <div class="row col-md-12" style="padding-top:7px;">
                                <p class="ldr-marg text-justify">„Vielen Dank für die andauernd gute Arbeit am ERP und Supply Chain Projekt. Ihre Beratung, technische, funktionale und Projektmanagement Kompetenz war offensichtlich und wurde von unseren Mitarbeitern sehr geschäzt. Gefreut hat mich auch Ihre Flexibilität, und die transparente Arbeitsweise im Rahmen unserer Zusammenarbeit. Wie erwartet war die Kooperation mit multikulturellen Teams aus Niedrigpreis Ländern ausgezeichnet, ohne jedoch Kompromisse bei der Qualität von Arbeitsergebnissen einzugehen. Machen Sie weiter so.”</p>
                            </div>
                        </div>
                        <!--EOF Massimiliano customer reference -->
                             
                    </div>
                    </div>
    <!-- Content Ends Here-->
     
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterScript" runat="server">
</asp:Content>
