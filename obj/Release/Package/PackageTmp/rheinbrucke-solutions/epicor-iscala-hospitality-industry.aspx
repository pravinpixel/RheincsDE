<%@ Page Title="" Language="C#" MasterPageFile="~/Campaigns-IscalaHospitality.Master" AutoEventWireup="true" CodeBehind="epicor-iscala-hospitality-industry.aspx.cs" Inherits="RheinBrucke.rheinbrucke_solutions.epicor_iscala_hospitality_industry_software" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
     <!--
    ==========================
    == BEGIN HEADER CONTENT ==
    ==========================
    -->
    <header id="main-header" class="the-header the-origin-header">

        <div class="container">
            <div class="row">

                <div class="col-lg-12 header-bg-color">
                    
                    <a href="<%=rootpath %>" class="logo"><img src="../Assets/Iscala/images/logo_white.png" alt="RheinBrücke IT Consulting" /></a> <!-- Your Logo -->

                    <a href="#" id="nav-menu-trigger" class="menu-toggle flip pull-right all-caps">Menu&nbsp;<i class="fa fa-bars"></i></a> <!-- Menu Toggle -->

                </div> <!--/ .col-lg-12 -->

            </div> <!--/ .row -->
        </div> <!--/ .container -->

    </header>
    <!--
    =========================
    ==/ END HEADER CONTENT ==
    =========================
    -->
    <!--
    ============================
    == BEGIN NAV MENU CONTENT ==
    ============================
    -->
    <nav id="nav-wrapper">

        <a class="nav-close" href="#"><span class="icon-cross2"></span></a>

        <ul id="main-nav" class="main-nav all-caps">
            <li class="current"><a href="#cd-hero">Home</a></li>
            <li><a href="#what-we-do">überblick</a></li>
            <li><a href="#featurettes">Funktionen</a></li>
            <li><a href="#advantage">Vorteil</a></li>
            <li><a href="#customer-story">RESSOURCEN</a></li>
        </ul> <!--/ .main-nav -->

    </nav>
    <!--
    ===========================
    ==/ END NAV MENU CONTENT ==
    ===========================
    -->
    <!--
    ========================
    == BEGIN MAIN CONTENT ==
    ========================
    -->

    <main id="main-content" class="hero-form-layout" style="margin-bottom: 165px;">
     
        <!--
        ========================
        == BEGIN HERO SECTION ==
        ========================
        -->
      
       <section id="cd-hero" class="cd-hero banner-top">
		 <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators" style="bottom:-5px;">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="3"></li>
        <li data-target="#myCarousel" data-slide-to="4"></li>
      
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
          <img src="../Assets/Iscala/images/bnr1.jpg" style="width:100%;" />
       
      </div>

      <div class="item">
       <img src="../Assets/Iscala/images/bnr2.jpg" style="width:100%;" />
      </div>
    
  <div class="item">
       <img src="../Assets/Iscala/images/bnr3.jpg" style="width:100%;" />
      </div>
        <div class="item">
       <img src="../Assets/Iscala/images/bnr4.jpg" style="width:100%;" />
      </div>
        <div class="item">
       <img src="../Assets/Iscala/images/bnr5.jpg" style="width:100%;" />
      </div>
    </div>

    <!-- Left and right controls -->
    <%--<a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>--%>
  </div>
 
	</section>
            <div class="iscalaform">

                                    <h4 class="all-caps margin-bot-15">Informieren Sie sich hier</h4>

                                   
                                    <form class="register-form margin-top-32 margin-bot-5" id="register-form" method="post">
                                        <div class="row">

                                            <div class="col-lg-12 col-md-12">
                                                <div class="required-field">
                                                    <input name="heroFname" id="hero-fname" class="hero-input" type="text" placeholder="Vorname" />
                                                </div> <!--/ .required-field -->
                                            </div>

                                            
                                            <div class="col-lg-12 col-md-12">
                                                <div class="required-field">
                                                    <input name="heroEmail" id="hero-email" class="hero-input" type="text" placeholder="Email Adresse" />
                                                </div> <!--/ .required-field -->
                                                
                                            </div>

                                            <div class="col-lg-12 col-md-12">
                                                <div class="required-field">
                                                <input name="heroPhone" id="hero-phone" class="hero-input" type="text" placeholder="Handynummer" />
                                                    </div>
                                            </div>
                                            
                                            <div class="col-lg-12 col-md-12">
                                                <div class="form-group">
                                                <%--<label class="col-md-4 control-label" for="rolename">Role Name</label>--%>
                                                <div class="col-md-12 no-padding required-field">
                                                    <select id="dates-field2" class="multiselect-ui form-control hero-input" name="select-options"  multiple="multiple">
                                                        <option value="WhitePaper">Whitepaper herunterladen</option>
                                                        <option value="Brochure">ISCALA Hospitality Broschüre herunterladen</option>
                                                        <option value="Hyatt">Hyatt Success Story herunterladen</option>
                                                        <option value="Radisson">RADISSON Success Story herunterladen</option>
                                                        <option value="Factsheet">Download Factsheet</option>
                                                        <option value="Demo">Demo anfordern</option>
                                                    </select>

                                                </div>
                                            </div>
             <!--/ .required-field -->
                                            </div>
                                            <div class="clearfix">&nbsp;</div>
                                             <span class="showErrorMsg" style="color: red"></span>
                                            <div class="clearfix">&nbsp;</div>
                                            <div class="col-lg-4 col-md-4">
                                                <button id="hero-submit" type="button" class="submit-btn" onclick="onFormSubmit()">Absenden</button>
                                            </div>

                                        </div>
                                    </form> <!--/ .register-form -->

                                   <%-- <p class="zero-bottom">By creating account, you agree to the <a href="#" class="more">Terms of Service</a></p>--%>

                                </div>
        <div class="clearfix hidden-xl-up"></div>
        <!--
        =======================
        ==/ END HERO SECTION ==
        =======================
        -->
        <!--
        ==============================
        == BEGIN TOP CLIENT SECTION ==
        ==============================
        -->
        <section id="top-client" class="centered">

            <div class="container">
                <div class="row">

                    <!-- BEGIN Client Logo -->
                    <div class="client-logo">
                        <div class="the-logo col-lg-2 col-md-2">

                            <h5 class="top-logo-text all-caps" data-sr="enter left over 1s and move 50px wait .1s">Trusted By </h5>

                        </div> <!--/ .the-logo -->

                        <div class="the-logo col-lg-2 col-md-2 col-sm-3 col-xs-3">

                            <a href="#"><img src="../Assets/Iscala/images/durrat.png" alt="Client Logo" data-sr="scale up 30% wait .2s" /></a>

                        </div> <!--/ .the-logo -->

                        <div class="the-logo col-lg-2 col-md-2 col-sm-3 col-xs-3">

                            <a href="#"><img src="../Assets/Iscala/images/hyatt.png" alt="Client Logo" data-sr="scale up 30% wait .5s" /></a>

                        </div> <!--/ .the-logo -->

                        <div class="the-logo col-lg-2 col-md-2 col-sm-3 col-xs-3">

                            <a href="#"><img src="../Assets/Iscala/images/kempinski.png" alt="Client Logo" data-sr="scale up 30% wait .7s" /></a>

                        </div> <!--/ .the-logo -->

                        <div class="the-logo col-lg-2 col-md-2 col-sm-3 col-xs-3">

                            <a href="#"><img src="../Assets/Iscala/images/radisson.png" alt="Client Logo" data-sr="scale up 30% wait .9s" /></a>

                        </div> <!--/ .the-logo -->

                       <%-- <div class="the-logo col-lg-2 col-md-2 hidden-sm hidden-xs">

                            <a href="#"><img src="../Assets/Iscala/images/adventure.png" alt="Client Logo" data-sr="scale up 30% wait 1.1s" /></a>

                        </div> --%><!--/ .the-logo -->

                    </div> <!--/ .client-logo -->
                    <!-- END Client Logo -->

                </div> <!--/ .row -->
            </div> <!--/ .container -->

        </section>
        <!--
        =============================
        ==/ END TOP CLIENT SECTION ==
        =============================
        -->
        <!--
        ==============================
        == BEGIN WHAT WE DO SECTION ==
        ==============================
        -->
        <section id="what-we-do" class="centered">

            <div class="container">
                <div class="row">

                    <div class="col-lg-12">

                        <!-- BEGIN Attention Box -->
                       <%-- <div class="attention-box">
                            <h5 class="all-caps">Hello!!</h5>
                            <p><strong>Attention Grabber -</strong> this notification would be clearly seen by your visitor and drive convertions.</p>
                            <a href="#" class="more">Learn More</a>
                        </div>--%> <!--/ .attention-box -->
                        <!--/ END Attention Box -->

                    </div>

                    <div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 centered">

                        <p class="section-title">Überblick über EPICOR iSscala für das Gastgewerbe</p>

                       <%-- <h2 class="section-heading">We make your business gain more revenue at a glance.</h2>--%>

                    </div> <!--/ .col-lg-8 -->

                    <div class="clearfix"></div>

                    <div class="col-lg-10 col-lg-offset-1" style="z-index:99">

                        <p class="ln-ht-36">Die Reise- und Tourismusbranche wächst jedes Jahr weiter und innoviert.</p>
                        <p class="ln-ht-36" style="margin-bottom:0px">In solch wettbewerbsintensiven Zeiten brauchen Sie Möglichkeiten, um Kosten zu senken, Ihre Gewinne zu steigern, Ihr Geschäft auszubauen und eine hervorragende Gästeerfahrung zu bieten.</p><p>RheinBrücke Epicor iScala ist eine weltweit innovative <strong>ERP-Lösung für das Gastgewerbe</strong>. Diese Lösungen können Betriebsabläufe in Hotels, Resorts, Kasinos oder Regierungsunterkünften rationalisieren.</p>
                    </div><!--/ .col-lg-10 -->

                    <div class="clearfix"></div>

                    <a href="#cd-hero" class="cta cta-default all-caps contact-trigger">Setzen Sie sich mit uns in Verbindung</a>

                </div> <!--/ .row -->
            </div> <!--/ .container -->

        </section>
        <!--
        =============================
        ==/ END WHAT WE DO SECTION ==
        =============================
        -->
        
        <!--
        ===============================
        == BEGIN FEATURETTES SECTION ==
        ===============================
        -->
        <section id="featurettes" class="expandable-gallery gray-bg no-padding">

            <div class="container-full">
                <div class="row">
                    <!-- BEGIN 2nd Row Featurettes -->
                    <div class="two-blocks-col col-lg-6 col-md-6">

                        <h3>Erweiterte Unternehmenslösungen</h3>

                        <!-- BEGIN Content Tab -->
                        <div class="content-tab-wrapper" role="tabpanel">

                            <!-- BEGIN Nav tabs -->
                            <ul class="nav nav-tabs" role="tablist">
                                <li role="presentation" class="active"><a href="#first" aria-controls="first" role="tab" data-toggle="tab"><span class="icon-cog2"></span>Finanziell</a></li>
                                <li role="presentation"><a href="#second" aria-controls="second" role="tab" data-toggle="tab"><span class="icon-cloud-upload"></span>SCM</a></li>
                                <li role="presentation"><a href="#third" aria-controls="second" role="tab" data-toggle="tab"><span class="icon-bar-graph-2"></span>HCM</a></li>
                                <li role="presentation"><a href="#fourth" aria-controls="third" role="tab" data-toggle="tab"><span class="icon-archive2"></span>Service</a></li>
                                <li role="presentation"><a href="#fifth" aria-controls="fourth" role="tab" data-toggle="tab"><span class="icon-share3"></span>Integration</a></li>
                            </ul>
                            <!--/ END Nav tabs -->
                            <!-- BEGIN Tab panes -->
                            <div class="tab-content">

                                <div role="tabpanel" class="tab-pane fade in active" id="first">
                                    <h4>Finanziell Module</h4>
                                    <p>Epicor iScala bietet  <strong>Finanz- und Buchhaltung Fähigkeiten,</strong> die Sie ganz einfach an Ihr spezifisches Geschäft anpassen können.<br/>
                                        Die Finanziel-Management Fäahigkeiten von Epicor iScala umfassen ausgeklügelte lokalisierte Steuerstrukturen, Mehrsprachigkeit, Mehrwährungs und Mehrmandantenfähigkeit.</p>

                                </div> <!-- First Tab Pane -->

                                <div role="tabpanel" class="tab-pane fade" id="second">
                                    <h4>Supply Chain Management Suite</h4>
                                    <p>Optimieren Sie den gesamten Prozess von der Bedarfermittlung über den Einkauf und den Warenannahme bis hin zur Zahlung – Zeitersparnis und Maximierung der internen Effizienz.<br/>
                                    Die iScala-Lösung unterstützt den gesamten Lebenszyklus des Bedarfermittlung und hilft, Liefer- und Rechnungsfehler schnell zu identifizieren.</p>

                                    
                                </div> <!-- Second Tab Pane -->

                                <div role="tabpanel" class="tab-pane fade" id="third">
                                    <h4>Human Capital Management suite</h4>
                                    <p>Effektive Verwaltung des gesamten Lebenszyklus von Mitarbeitern, die Epicor HCM gepfelgt werden. Diese Lösung ist in iScala integriert.<br/>
                                       HR-Mitarbeiter können die Gehaltsabrechnung einfach mit der iScala-Gehaltsabrechnung realisieren.</p>

                                </div> <!-- Third Tab Pane -->

                                <div role="tabpanel" class="tab-pane fade" id="fourth">
                                    <h4>Service suite</h4>
                                    <p>Dienstleistungs Suite: Die iScala Service Suite für das Gastgewerbe hilft sicherzustellen, dass Sie in Echtzeit die Kundenverträge, die zurückgegebenen Produkte und die Übereinstimmung dieser Produkte mit einem Wartungsvertrag oder Garantieleistungen überprüfen können.</p>
  
                                </div> <!-- Fourth Tab Pane -->

                                <div role="tabpanel" class="tab-pane fade" id="fifth">
                                    <h4>Integration</h4>
                                    <p>Epicor iScala verwendet Service Connect zur Integration mit PMS, POS, Banken und anderen Systemen von Drittanbietern. Auf diese Weise können Ihre Managementteams den Überblick behalten, indem sie zugriff auf konsolidierte Informationenerhalten.</p>

                                </div> <!-- Fifth Tab Pane -->

                            </div>
                            <!--/ END Tab panes -->

                        </div> <!--/ .content-tab-wrapper -->
                        <!--/ END Content Tab -->

                    </div> <!--/ .two-blocks-col -->

                    <div class="featurettes-quote-wrapper col-lg-6 col-md-6 no-padding">

                        <div class="vertical-center-wrapper">

                            <div class="vertical-center-table">

                                <div class="vertical-center-content">

                                    <div class="featurespara centered">

                                        <h4 class="featurettes-quote-author">Funktionen</h4>
                                        Um bessere Entscheidungen zu treffen und mehr Umsatz zu erzielen, müssen Sie Ihre Hospitality-spezifische Strategie mit Ihren Front- und Backoffice-Systemen verbinden.Ihr Hotel benötigt eine Lösung, die alle Aspekte Ihres Unternehmens berücksichtigt. Wie ihr Finanzteam, Personalwesen, den Verkauf, dem Einkauf den Reservierungen, Integration zu den Banken, usw.Mit iScala können Sie kostspielige und fehleranfällige Prozesse zur Entschlüsselung, Neukompilierung oder erneuten Verschlüsselung wichtiger Geschäftsdaten automatisieren.Mit sofort einsatzbereiten konfigurierbaren Schnittstellen und Vorlagen, die eine schnelle Integration mit POS, PMS und Barcodesystemen ermöglichen, können Sie Informationen zu Bargeld, Verkäufen, Rezepturen, Kassenbuch, Arbeit und Menü-Mix synchronisieren.Dies bietet eine genaue und zeitnahe Überblickt des Unternehmens, immer wenn Sie es benötigen.
                                    </div>

                                </div> <!--/ .vertical-center-content -->

                            </div> <!--/ .vertical-center-table -->

                        </div> <!--/ .vertical-center-wrapper -->

                    </div> <!--/ .col-lg-6 -->
                    <!--/ END 2nd Row Featurettes -->
                     <div class="visible-sm visible-xs clearfix">&nbsp;</div>
 <!-- BEGIN 1st Row Featurettes -->
                      <div class="featurettes-quote-wrapper1 col-lg-6 col-md-6 no-padding" id="advantage">

                        <div class="vertical-center-wrapper">

                            <div class="vertical-center-table">

                                <div class="vertical-center-content">

                                    <div class="featurettes-quote centered">

                                        <h4 class="featurettes-quote-author">RheinBrücke Vorteil</h4>
                                        Ob groß oder klein, Sie müssen eine Lösung haben, die Ihre Gewinne maximiert, Ihr Geschäft wachsen lässt und Ihre Kunden für mehr zurückkommen lässt.Nutzen Sie die Möglichkeiten unserer ganzheitlichen Hospitality-Lösung, mit der Sie Ihre Online-Buchungen und Ihr Gästevorlieben verwalten können.Hier sind die Vorteile dieser integrierten Lösung, die alle Anforderungen Ihres Back Office und Front Office abdeckt.
                                    </div>

                                </div> <!--/ .vertical-center-content -->

                            </div> <!--/ .vertical-center-table -->

                        </div> <!--/ .vertical-center-wrapper -->

                    </div>
                   <div class="two-blocks-col col-lg-6 col-md-6">
                        <!-- BEGIN Content Tab -->
                        <h3>Vorteile der integrierten Lösung</h3>
                        <ul class="checklist">
                            <li>Verbessern Sie das Gästeerlebnis, indem Sie Ihre Kunden besser kennenlernen</li>
                            <li>Optimieren und standardisieren Sie Backoffice-Prozesse</li>
                            <li>Genaue <strong>Hotel- und Restaurant-Revenue-Management</strong> </li>
                            <li>Verwalten Sie die Kosten und steigern Sie Ihre Gewinne</li>
                            <li>Erfassen und verwalten Sie wichtige Finanzinformationen</li>
                            <li>Vereinfachen Sie Vorgänge und reduzieren Sie die Gemeinkosten</li>
                            <li>Integrieren Sie Front- und Backoffice-Systeme</li>
                            <li>Analysieren Sie Finanzberichte in Echtzeit.</li>
                            <li>Beseitigen Sie doppelte Prozesse</li>
                            <li>Arbeiten Sie in nahezu papierlosen Umgebungen</li>
                            </ul>
                        <!--/ .content-tab-wrapper -->
                        <!--/ END Content Tab -->

                    </div> <!--/ .two-blocks-col -->

                   <!--/ .col-lg-6 -->
                    <!--/ END 1st Row Featurettes  -->
                </div> <!--/ .row -->
            </div> <!--/ .container-full -->

        </section>
        <!--
        ==============================
        ==/ END FEATURETTES SECTION ==
        ==============================
        -->
        <div class="clearfix">&nbsp;</div>
        <!--
        ============================
        == BEGIN BREAKOUT SECTION ==
        ============================
        -->
        <section id="breakout" class="breaking centered" data-stellar-background-ratio="0.5" data-stellar-vertical-offset="40">

            <div class="color-overlay">

                <div class="breaking-content">

                        <div class="row">

                            <div class="col-lg-12 centered">

                                <h4>Finden Sie heraus, was unsere Hospitality Software für Ihre Hotels und Restaurants leisten kann</h4>
                                <p class="sub-lead">Klicken Sie auf den Buttonunten und senden Sie Ihre Kontaktdaten</p>

                                <a href="#cd-hero" class="cta cta-default all-caps clearfix" data-sr="enter bottom over 1s and move 75px">Factsheet Herunterladen</a>
                                

                            </div> <!--/ .col-lg-12 -->

                        </div> <!--/ .row -->
 <!--/ .container -->

                </div> <!--/ .breaking-content -->

            </div> <!--/ .color-overlay -->

        </section>
        <!--
        ===========================
        ==/ END BREAKOUT SECTION ==
        ===========================
        -->
       
        <!--
        ==================================
        == BEGIN CUSTOMER STORY SECTION ==
        ==================================
        -->
        <section id="customer-story" class="gray-bg centered">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12  text-center">
                        <p class="section-title">RESSOURCEN</p>
                    </div> <!--/ .col-lg-8 -->
                    <div class="clearfix"></div>

<div class="clearfix"></div>
                </div> <!--/ .row -->
                <div class="row hub-solutions">
        <div class="container">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 padding-15">
                <h4>unsere Lösungen</h4>
               
                <br />
                <div class="col-md-6 nopadding centered">
                     <div class="thumb">
                        <a href="#cd-hero"><img src="../Assets/Iscala/images/brochure_thumbnail.png" alt="Specialized RheinBrücke iScala solution for the Hospitality" title="Specialized RheinBrücke iScala solution for the Hospitality" /></a>
                    </div>
                    <p class="solution-head">
                         <a href="#cd-hero">iSCALA Hospitality Broschüre herunterladen</a>
                    </p>
                    <p class="sub-para">
                        Wir liefern branchenspezifische Funktionen, die Ihnen mehr Wachstum ermöglicht 
                    </p>
                    <div class="asset-download">
                        <a href="#cd-hero">Klick Hier »</a>
                    </div>
                </div>
                <div class=" col-md-6 nopadding centered">
                    <div class="thumb">
                        <a href="#cd-hero"><img src="../Assets/Iscala/images/demo-icn.png" alt="Request a Demo" title="Request a Demo" /></a>
                    </div>
                    <p class="solution-head">
                        <a href="#cd-hero">Demo anfordern</a>
                    </p>
                    <p class="sub-para">
                         Verbessern Sie Ihre Back-Office-Prozesse, lernen Sie Ihre Kunden besser kennen und profitieren Sie von unseren Hospitality-Lösungen.
                    </p>
                    <div class="asset-download">
                        <a href="#cd-hero">Klick Hier »</a>
                    </div>
                </div>
            </div>
            <div class="clearfix">
             &nbsp;
            </div><div class="clearfix">
             &nbsp;
            </div>
               <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 padding-15">
                <h3>In Verbindung stehende Artikel</h3>
               
                <br />
                <div class="col-md-4 nopadding centered">
                    <div class="thumb">
                        <a href="#cd-hero"><img src="../Assets/Iscala/images/speed_thumbnail.png" alt="The Need for speed and accurate data" title="The Need for speed and accurate data" /></a>
                    </div>
                    <p class="solution-head">
                        <a href="#cd-hero">Whitepaper herunterladen</a>
                    </p><br/>
                    <p class="sub-para">
                         Der Bedarf an Geschwindigkeit und genauen Daten
                    </p>
                    <div class="asset-download">
                        <a href="#cd-hero">Klick Hier »</a>
                    </div>
                </div>
                <div class=" col-md-4 nopadding centered">
                    <div class="thumb">
                        <a href="#cd-hero"><img src="../Assets/Iscala/images/hyatt_thumbnail.png" alt="Download Hyatt Success story" title="Download Hyatt Success story" /></a>
                    </div>
                    <p class="solution-head">
                       <a href="#cd-hero">Hyatt Success Story herunterladen</a>
                    </p><br/>
                    <p class="sub-para">
                         Hyatt Internationale Aktiengesellschaft
                    </p><br/>
                    <div class="asset-download">
                        <a href="#cd-hero">Klick Hier »</a>
                    </div>
                </div>
                     <div class=" col-md-4 nopadding centered">
                         <div class="thumb">
                        <a href="#cd-hero"><img src="../Assets/Iscala/images/radisson_thumbnail.png" alt="Download Radisson Blu Success story" title="Download Radisson Blu Success story" /></a>
                    </div>
                    <p class="solution-head">
                       <a href="#cd-hero">RADISSON Success Story herunterladen </a>
                    </p>
                    <p class="sub-para">
                        RADISSON BLUE IVERIA
                    </p><br/>
                    <div class="asset-download">
                        <a href="#cd-hero">Klick Hier »</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
            </div> <!--/ .container -->

        </section>
        <!--
        =================================
        ==/ END CUSTOMER STORY SECTION ==
        =================================
        -->
       

    </main> <!--/ #main-content -->
    <!--
    =======================
    ==/ END MAIN CONTENT ==
    =======================
    -->
    <!--
    ==========================
    == BEGIN FOOTER CONTENT ==
    ==========================
    -->
    <footer id="main-footer">

        <div class="container">
            <div class="row">
                <ul class="footer-social">
                    <li><a href="https://www.facebook.com/RheinBrucke" target="_blank"><i class="fa fa-facebook-square"></i></a></li>
                    <li><a href="https://twitter.com/RheinBruckeIT"><i class="fa fa-twitter-square"></i></a></li>
                    <li><a href="https://www.linkedin.com/company/rheinbr%C3%BCcke-it-consulting" target="_blank"><i class="fa fa-linkedin-square"></i></a></li>
                    <li><a href="https://plus.google.com/108478282039113445071" target="_blank"><i class="fa fa-google-plus-square"></i></a></li>
                    <li><a href="https://www.youtube.com/channel/UCWczBR-4VLbNsoolMUkBL9g" target="_blank"><i class="fa fa-youtube-square"></i></a></li>
                    <li><a href="https://www.blog.rheincs.com" target="_blank"><i class="fa fa-rss-square"></i></a></li>
                </ul> <!--/ .footer-social -->

                <div class="copyright">

                    <p>Copyright © 2017 RheinBrücke - All Rights Reserved.</p>

                    
                </div> <!--/ .copyright -->

            </div> <!--/ .row -->
        </div> <!--/ .container -->

    </footer>
    <!--
    =========================
    ==/ END FOOTER CONTENT ==
    =========================
    -->
    <!--
    =========================
    == BEGIN TO TOP BUTTON ==
    =========================
    -->
    <a id="to-top"><i class="fa fa-angle-up"></i></a>
    <!--
    ========================
    ==/ END TO TOP BUTTON ==
    ========================
    -->

   
 
</asp:Content>

