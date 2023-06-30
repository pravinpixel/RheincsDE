<%@ Page Title="EPICOR HCM" Language="C#" MasterPageFile="~/RheincsLanding.Master" AutoEventWireup="true" CodeBehind="Epicor-hcm.aspx.cs" Inherits="RheinBrucke.Solutions.EnterpriseServicesAndSolutions.EPICOR.epicor_hcm" %>
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
       .rhein-banner-heading-black-bg
       {
           top:17% !important;
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
                <li><a href="#" class="redColor">HCM</a></li>
            </ul>       
         </div>
         <!--Eof Breadcrumb row-->
         <!-- Slider Starts here-->
        <div class="row">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    

                </ol>
                <div class="carousel-inner" role="listbox">                  
                    <div class="item active">
                        <img src="../../../Assets/LandingRheincs/Images/hcm-1.jpg" alt="Home-Banner" class="img-responsive" /><div class="container">
                            <div class="carousel-caption rhein-caption-text">                                
                                <div class="rhein-banner-heading-black-bg pull-right"><span class="rhein-banner-heading-black"><b>Sie streben eine Transformation Ihres Personalwesens an?</b><br />Wir präsentieren EPICOR HCM, die HR-Lösung der nächsten Generation, die von Personalexperten für Personalprofis entwickelt wurde, um eine leistungsstarke Mitarbeiter- und Kundenerfahrung zu ermöglichen.</span></div>                               
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <img src="../../../Assets/LandingRheincs/Images/hcm-2.jpg" alt="Home-Banner" class="img-responsive" /><div class="container">
                            <div class="carousel-caption rhein-caption-text">                               
                                <div class="rhein-banner-heading-black-bg pull-right"><span class="rhein-banner-heading-black">Profitieren Sie von den Vorteilen einer zukunftsgerichteten HR-Lösung, die Personalstrategien vorantreibt </span></div>                                
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
             <h3 class="redColor">Übersicht</h3>
             <div class="mainContent-normal contentdiv" style="text-align:justify">
                 Machen Sie Ihr Unternehmen erfolgreicher durch effektive Personalverwaltung
                 </div>
             <div class="col-md-12">
                        <ul>
                            <li>
                                <div class="redBullets"></div>
                                <p class="bulletContent">Verfolgen Sie Ihre strategischen Ziele durch die Implementierung einer einzelnen globalen Personalinstanz, die an gemeinsamen HR-Prozessen arbeitet, lokale Anforderungen unterstützt und für HR erforderliche Prozesse über mehrere geographische Standorte sehr einfach unter wirksamen Einsatz der Epicor HCM-Dienste von RheinBrücke verarbeitet.</p>
                                   </li>
                        </ul>
                    </div>
                    <div class="col-md-12">
                        <ul>
                            <li>
                                <div class="redBullets"></div>
                                <p class="bulletContent">Epicor Human Capital Management ist eine preisgekrönte umfassende HRIS-Lösung, die Unternehmen durch Automatisierung ihrer Personalprozesse unterstützt, von der Personalsuche, über die Arbeitszeittabelle, Einarbeitung bis hin zur Karriereförderung durch Talentmanagementprogramme.</p>
                                 </li>
                        </ul>
                    </div>
                     <div class="col-md-12">
                        <ul>
                            <li>
                                <div class="redBullets"></div>
                                <p class="bulletContent">RheinBrücke nutzt seine umfassenden ERP-Implementierungskompetenzen und seine funktionalen Kenntnisse im Personalbereich, um unseren Kunden bei der erfolgreichen Implementierung von EPICOR HCM zu helfen.</p>
                                 </li>
                        </ul>
                    </div>
         </div>
        
     </div>
    <!--eof overview and form div-->
    </div>     
                <div class="container ">
                    <h3 class="redColor contentwithpadding">LEISTUNGSMERKMALE</h3>
                    <div class="withIcons">                        
                        <div class="mainContent-normal-manufacturing contentwithpadding">Epicor HCM wurde von Profis aus dem Personalsektor entwickelt. Epicor HCM stellt den Unternehmen die Tools zur Verfügung, die sie benötigen, um Daten systematisch anstatt manuell zu verfolgen, sodass die Unternehmen mehr Zeit zur Verfolgung ihrer strategischen Ziele haben.</div>
                    </div>
               <div class="clearfix">&nbsp;</div>
                <div class="row paddingGreycontainer bgcol">

                 <div class="row col-md-12 padding">
                        <div class="col-md-4">                           
                                    <div class="redBullets-manufacturing"><i class="fa fa-pie-chart"></i></div>
                            <div class="redColor bulletContent-manufacturing-title">
                              <b>Bewerbermanagement</b>   
                                    </div>
                                   <ul class="bulletContent-manufacturing">
                                       <li style="list-style-type:none;" class="redColor">
                                     Epicor HCM hilft Ihnen mit intuitiven Werkzeugen die bestmöglichen Einstellungsentscheidungen zu treffen und unterstützt sie beim Einstellung- und Einarbeitungsprozess.</li>
                                </ul>
                               
                        </div>
                      <div class="col-md-4">                           
                                    <div class="redBullets-manufacturing"><i class="fa fa-line-chart"></i></div>
                            <div class="redColor bulletContent-manufacturing-title">
                              <b>Leistungsmanagement</b>   
                                    </div>
                                   <ul class="bulletContent-manufacturing">
                                       <li style="list-style-type:none;" class="redColor">
                                      Mit Epicor HCM versetzen Sie Manager (Führungskräfte/Vorgesetzte) in die Lage, die Mitarbeiterleistung über das gesamte Jahr zu überwachen. </li>
                                </ul>
                               
                        </div>
                         <div class="col-md-4">                           
                                    <div class="redBullets-manufacturing"><i class="fa fa-bar-chart"></i></div>
                            <div class="redColor bulletContent-manufacturing-title">
                              <b>Berichterstattung und Analyse</b>   
                                    </div>
                                   <ul class="bulletContent-manufacturing">
                                       <li style="list-style-type:none;" class="redColor">
                                      Das Epicor HCM-System gibt ihnen die Tools zur Analyse der wichtigsten Ressourcen Ihres Unternehmens an die Hand.</li>
                                </ul>
                               
                        </div>
                    </div>
                       <div class="row col-md-12 padding">
                        <div class="col-md-4">                           
                                    <div class="redBullets-manufacturing"><i class="fa fa-bar-chart"></i></div>
                            <div class="redColor bulletContent-manufacturing-title">
                              <b>Leistungsmanagement</b>   
                                    </div>
                                   <ul class="bulletContent-manufacturing">
                                       <li style="list-style-type:none;" class="redColor">
                                     Die intuitive Benutzeroberfläche von Epicor HCM ermöglicht Sachbearbeitern die problemlose Eingabe der Pläne, Optionen und Kosten Ihres Unternehmens.</li>
                                </ul>
                               
                        </div>
                      <div class="col-md-4">                           
                                    <div class="redBullets-manufacturing"><i class="fa fa-line-chart"></i></div>
                            <div class="redColor bulletContent-manufacturing-title">
                              <b>Abwesenheitsnachverfolgung</b>   
                                    </div>
                                   <ul class="bulletContent-manufacturing">
                                       <li style="list-style-type:none;" class="redColor">
                                      Epicor HCM ermöglicht Ihnen, die Abwesenheiten von Mitarbeitern online zu verwalten und die damit verbundenen Kosten besser zu kontrollieren.</li>
                                </ul>
                               
                        </div>
                         <div class="col-md-4">                           
                                    <div class="redBullets-manufacturing"><i class="fa fa-cubes"></i></div>
                            <div class="redColor bulletContent-manufacturing-title">
                              <b>Vergütungsmanagement</b>   
                                    </div>
                                   <ul class="bulletContent-manufacturing">
                                       <li style="list-style-type:none;" class="redColor">
                                      Mit Epicor HCM können Sie alle Arten von Zahlungen und eine unbegrenzte Anzahl von Besoldungsgruppen und Spannbreiten verwalten.</li>
                                </ul>
                               
                        </div>
                    </div>
                        <div class="row col-md-12 padding">
                        <div class="col-md-4">                           
                                    <div class="redBullets-manufacturing"><i class="fa fa-cubes"></i></div>
                            <div class="redColor bulletContent-manufacturing-title">
                              <b>Vollständige HCM-Funktionalität</b>   
                                    </div>
                                   <ul class="bulletContent-manufacturing">
                                       <li style="list-style-type:none;" class="redColor">
                                      Epicor HCM gibt Ihnen eine Komplettlösung für die Mitarbeitereinbindung an die Hand, die zu Ihren Geschäftsanforderungen passt.</li>
                                </ul>
                               
                        </div>
                      <div class="col-md-4">                           
                                    <div class="redBullets-manufacturing"><i class="fa fa-line-chart"></i></div>
                            <div class="redColor bulletContent-manufacturing-title">
                              <b>Benutzerfreundlichkeit</b>   
                                    </div>
                                   <ul class="bulletContent-manufacturing">
                                       <li style="list-style-type:none;" class="redColor">
                                      Epicor HCM verfügt über eine der intuitivsten und flexibelsten Benutzeroberflächen am Markt.</li>
                                </ul>
                               
                        </div>
                         <div class="col-md-4">                           
                                    <div class="redBullets-manufacturing"><i class="fa fa-bullseye"></i></div>
                            <div class="redColor bulletContent-manufacturing-title">
                              <b>Aus- und Weiterbildung</b>   
                                    </div>
                                   <ul class="bulletContent-manufacturing">
                                       <li style="list-style-type:none;" class="redColor">
                                      Mit dem Aus- und Weiterbildungsmodul von Epicor HCM entwickeln Sie die Fähigkeiten Ihres zukünftigen Führungspersonals.</li>
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
                    <h3 class="redColor">VORZÜGE</h3>
                     <p>HCM hilft Ihnen, die gesamte Mitarbeiterlaufbahn von der Einstellung bis zum Ruhestand reibungslos zu verwalten.</p>
                    
                    <div class="col-md-12">
                        <ul>
                            <li>
                                <div class="redBullets"></div>
                                <p class="bulletContent">HCM verleiht Ihnen die Fähigkeit und Flexibilität, alle Mitarbeiterdaten über verschiedene Aufgaben, Aktivitäten, Änderungen in der Hierarchie, Abteilungswechsel usw. nachzuverfolgen.</p>
                                   </li>
                        </ul>
                    </div>
                    <div class="col-md-12">
                        <ul>
                            <li>
                                <div class="redBullets"></div>
                                <p class="bulletContent">HCM ermöglicht fehlerfreie Rückmeldungen wie Fortschrittsanzeigen, Datenvalidierung, Prozesserläuterung usw., die den reibungslosen Ablauf der Personalaspekte Ihres Unternehmens unterstützen.</p>
                                 </li>
                        </ul>
                    </div>
                     <div class="col-md-12">
                        <ul>
                            <li>
                                <div class="redBullets"></div>
                                <p class="bulletContent"> Das von Managern verwendete Leistungsmanagementmodul kann die Kommunikation mit ihren Teammitgliedern verbessern, etwa im Sinne einer erhöhten Produktivität durch Klärung von Erwartungen.</p>
                                 </li>
                        </ul>
                    </div>
                    <div class="col-md-12">
                        <ul>
                            <li>
                                <div class="redBullets"></div>
                                <p class="bulletContent"> HCM erstellt individuelle Berichte auf der Grundlage Ihrer Anforderungen.</p> 
                                 </li>
                        </ul>
                    </div>
               
          <div class="col-md-12">
                        <ul>
                            <li>
                                <div class="redBullets"></div>
                                <p class="bulletContent">HCM wertet Ihre Marke auf, sodass sie potentielle Interessenten oder Mitarbeiter anspricht.</p> 
                                 </li>
                        </ul>
                    </div>
                         <div class="col-md-12">
                        <ul>
                            <li>
                                <div class="redBullets"></div>
                                <p class="bulletContent">HCM ist mit menschlicher Intelligenz ausgestattet, dies kommt Ihnen, Ihren Mitarbeitern und Ihrer Zukunft zugute. </p> 
                                 </li>
                        </ul>
                    </div>
                        <div class="clearfix">&nbsp;</div>
                        <h3 class="redColor">REFERENZEN</h3>
            </div>

                    <div class="col-md-12">
                        <!--Massimiliano customer reference -->
                        <div class="col-md-12 marg-10">
                           <%-- <div class="col-md-1">
                                <img class="testimonial-img1 img-circle1 ld-mag2" src="/Assets/images/Testimonial/Milani.png" alt="Testimonial by Milani" style="margin-right: 10px; width: 80px; height: 80px;" />
                            </div>--%>
                            <div class="col-md-10" style="padding-left:0px;">
                                <div class="deco-header2">
                                    <p class="redBottom1"><span class="bgcol1">Personalmanager |</span> <span class="redColor">eines führenden Exporteurs von Automobilteilen in den Vereinigten Arabischen Emiraten.</span></p>
                                </div>
                            </div>
                            <div class="row col-md-12" style="padding-top:7px;">
                                <p class="ldr-marg text-justify">Die Mitarbeiterzufriedenheit ist uns sehr wichtig. Dementsprechend haben wir begonnen, nach einem umfassenden HR-Automatisierungstool zu suchen, das den Anforderungen unserer Mitarbeiter Rechnung trägt und uns in die Lage versetzt, unsere Geschäftsziele mit Leichtigkeit zu erreichen. Die Epicor HCM-Anwendung von RheinBrücke hat unsere Personalvorgänge von der Einstellung bis zum Ruhestand auf eine völlig reibungslose Weise optimiert. Wir freuen uns, eine solche zukunftssichere HR-Plattform zu haben.</p>
                            </div>
                        </div>
                        <!--EOF Massimiliano customer reference -->
                             
                    </div>
                    </div>
    <!-- Content Ends Here-->
     
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterScript" runat="server">
</asp:Content>
