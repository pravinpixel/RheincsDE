<%@ Page Title="" Language="C#" MasterPageFile="~/Campaigns-manufacturing.Master" AutoEventWireup="true" CodeBehind="manufacturing.aspx.cs" Inherits="RheinBrucke.manufacturing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headerPlaceHolder" runat="server">
    <style>

    .fa-arrow-circle-up {
        color: #f8f8f8;
        padding-right: 15px;
        padding-bottom: 0px;
        font-size: 17px;
    }

    .linkedin {
        color: #1884BB !important;
    }

    .thumbs {
        color: #155B9D !important;
    }

    .facebook-square {
        color: #4267B2 !important;
    }

    .twitterPlus {
        color: #1A9EC4 !important;
    }

    .google-plus {
        color: #DD3F34 !important;
    }

    .whitebg {
       
        background: url(Assets2/mf-assets/Assets/images/right_bg.jpg) 0 0 repeat !important;
    }

    .bgBg {
        margin-top: 3px;
        border-top: 1px solid #777;
        border-bottom: 1px solid #777;
        width: 100%;
        position: absolute;
        bottom: 0;
        left: 0;
        
    }
    

    .submitclasss {
        float: left;
        margin-left: 20px;
        margin-top: 6px;
        background: #7b1314;
        padding: 2px 2%;
        border-radius: 4px;
        color: #aaa;
    }

        .submitclasss:hover {
            float: left;
            margin-left: 20px;
            margin-top: 6px;
            background: #7b1314;
            padding: 2px 2%;
            border-radius: 4px;
            color: #fff;
            text-decoration: none;
        }

    .form_boxs {
        position: absolute;
        bottom: 0;
        background: #fff;
        width: 100%;
        padding: 10px 5% 10px 5%;
        z-index: 999;
    }

    .btn-primary.active, .btn-primary:active, .open > .dropdown-toggle.btn-primary {
        color: #7b1314 !important;
        background-color: #fff !important;
        border-color: #DDDDDD !important;
    }

    .icon-input-btn {
        display: inline-block;
        position: relative;
    }

        .icon-input-btn input[type="button"] {
            padding-left: 2em;
            padding-left: 2em;
            background-color: #7e8386;
            color: #fff;
        }

        .icon-input-btn .fa {
            display: inline-block;
            position: absolute;
            left: 0.65em;
            top: 30%;
        }

    .fa-bar-chart {
        color: #fff;
    }

    a:focus, a:hover {
        color: #ffffff;
        text-decoration: none !important;
    }

    .phones {
        float: right;
        position: absolute;
        top: 0;
        right: 0;
        font-size: 19px;
    }

    .colors {
        color: #7b1314 !important;
    }

    .benefit-title {
        color: #d9a74f !important;
        font-weight: 700;
        font-size: 17px;
    }

    .redBullets {
        border: 5px solid #7e8386;
        border-radius: 10px;
        width: 1%;
        float: left;
        top: 4px;
        position: relative;
        left: 0px;
        margin-right: 4px;
    }

    .active {
        display: inline-block;
    }

    .inactive {
        display: none;
    }

    }

    .btn-sched, .btn-sched:active, .btn-sched:hover {
        background: #7b1314;
        color: #fff;
        font-size: 14px !important;
    }

        .btn-sched, .btn-sched a:active, .btn-sched a:hover {
            color: #fff;
        }

    .benefit-title1 {
        color: #d9a74f !important;
        font-weight: bold;
        font-size: 16px !important;
    }

    p.testimonial-name {
        margin-left: 30px;
        margin-bottom: 25px;
    }

    .tabs_btn li a {
        font-size: 13px !important;
        padding: 20px 0 !important;
        height: 64px !important;
    }

    a#Features {
        padding: 14px 0px !important;
    }

    a#Modules {
        padding: 14px 0px !important;
    }

    @media screen and (min-width:980px) {
        .btn-consult {
            padding: 8px 14px !important;
        }
              }
    @media screen and (max-width:768px) {
         .redColor
    {
        margin-left:-477px !important;
    }
            .bulletContent {
                 margin-left: 140px !important;
                 margin-top: -20px;
}
    }
    @media screen and (max-width:640px) {
        .bulletContent {
                 margin-left: 60px !important;
                 margin-top: -20px;
}
         .redColor
    {
        margin-left:-354px !important;
    }
    }
    @media screen and (max-width:480px) {
        .btn-consult {
            padding-left: 0px !important;
        }
            .redColor
    {
        margin-left:-196px !important;
    }
            .bulletContent {
    margin-left: 30px !important;
    margin-top: -20px;
}
    }
     @media screen and (max-width:320px) {
         .redColor
    {
        margin-left:-37px !important;
    }
         .bulletContent {
    margin-left: -80px !important;
    margin-top: -20px;
}
    }
    .tabs_btn li
    {
        width:20% !important;
    }
      .contactus-map-icon {
    position: absolute;
    top: 0;
    left: 0;
    font-size: 1.077em;
}
    .no-styleli
    {
        list-style-type:none;
    }
    .padd-left-20
    {
        padding-left:100px !important;
        padding-top:60px;
    }
   
    .share {
        background: #777 !important;
        color: #fff !important;
    }
    .redColor
    {
        margin-left:-84px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">



</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="main_wrapper">
    <div class="top_box">
        <div class="logo"><a href="<%=rootpath %>"><img src="../Assets2/mf-assets/images/ric-logo.png" alt=""/></a></div>
     
        <div class="phone">
            <a href="https://www.linkedin.com/company/rheinbr%C3%BCcke-it-consulting" target="_blank" class="faiconcolor"><i class="fa-linkedin-square fa" aria-hidden="true"></i></a>
            <a href="https://plus.google.com/108478282039113445071" class="faiconcolor" target="_blank"><i class="fa-google-plus-square fa" aria-hidden="true"></i></a>
            <a href="https://www.facebook.com/RheinBrucke" class="faiconcolor" target="_blank"><i class="fa-facebook-square fa" aria-hidden="true"></i></a>
            <a href="https://twitter.com/RheinBruckeIT" class="faiconcolor" target="_blank"><i class="fa-twitter-square fa" aria-hidden="true"></i></a>
            <a href="https://www.youtube.com/channel/UCWczBR-4VLbNsoolMUkBL9g" target="_blank" class="faiconcolor"><i class="fa-youtube-square fa" aria-hidden="true"></i></a>
            <a href="https://blog.rheincs.com" class="faiconcolor" target="_blank"><i class="fa fa-rss-square" aria-hidden="true"></i></a>
        </div>
    </div>
    <div id="AllBanner">
        <div class="left_baner" id="Banner1">
            <ul class="owl-carousel" id="home_banner">
                <li>
                    <img src="../Assets2/mf-assets/img/banner1.jpg" alt="" />
                    <div class="tags">
                        <h2>Epicor für die Fertigung</h2><h3>- RheinBrücke stellt ERP-Lösungen für Hersteller bereit, mit denen diese den Bedürfnissen ihrer Hauptverantwortlichen mit der für die sich ständig wandelnden Märkte von heute erforderlichen Flexibilität gerecht werden können.</h3>
                    </div>
                </li>
                <li>
                    <img src="../Assets2/mf-assets/img/banner4.jpg" alt="" />
                    <div class="tags">
                        <h2>Epicor für die Fertigung</h2><h3>Mit EPICOR ERP können Hersteller alle ihre Prozesse und Datenquellen integrieren, um erweiterte Funktionen wirksam zur Verbesserung aller Aspekte ihrer Betriebsabläufe einzusetzen.</h3>
                    </div>
                </li>
                <li>
                    <img src="../Assets2/mf-assets/img/banner2.jpg" alt="" />
                    <div class="tags">
                        <h2>Epicor für die Fertigung</h2><h3>Gehen Sie einen weiten Schritt voran, und machen Sie Ihre EPICOR ERP Industrie 4.0-kompatibel und bereit zur digitalen Transformation.</h3>
                    </div>
                </li>
                <li>
                    <img src="../Assets2/mf-assets/img/banner5.jpg" alt="" />
                    <div class="tags">
                        <h2>Epicor für die Fertigung</h2><h3>Finanzmanagement – Supply chain Managment –Planung und Terminierung - Produktionsmanagment – Produktdatenmanagement</h3>
                    </div>
                </li>
                <li>
                    <img src="../Assets2/mf-assets/img/banner3.jpg" alt="" />
                    <div class="tags">
                        <h2>Epicor für die Fertigung</h2><h3>Epicor und RheinBrücke können Herstellern helfen, neue Standards der Unternehmensleistung zu erreichen, mit denen sie in ihrer Branche an vorderster Stelle stehen.</h3>
                    </div>
                </li>
                <li>
                    <img src="../Assets2/mf-assets/img/banner11.jpg" alt="" />
                    <div class="tags">
                        <h2>Epicor für die Fertigung</h2><h3>Wir spezialisieren uns auf Lösungen, die ideal für einen breiten Bereich von vertikalen Märkten sind und mit denen Sie Ihre Mitarbeiter im Hinblick auf effiziente Prozesse und bewährte Verfahren schulen und befähigen können.</h3>
                    </div>
                </li>
                <li>
                    <img src="../Assets2/mf-assets/img/banner12.jpg" alt="" />
                    <div class="tags">
                        <h2>Epicor für die Fertigung</h2><h3>– Unsere Lösungen und Vorlagen bieten die erforderliche Flexibilität, um detailliert und individuelle auf unternehmensspezifische Bedingungen und Prozesse zu reagieren.</h3>
                    </div>
                </li>
                <li>
                    <img src="../Assets2/mf-assets/img/banner8.jpg" alt="" />
                    <div class="tags">
                        <h2>Epicor für die Fertigung</h2><h3>RheinBrücke ist davon überzeugt, dass eine erfolgreiche ERP-Anwendung ein entscheidender Faktor ist, da sie sich nahezu auf alle Aspekte ihrer Fertigungstätigkeit auswirkt. So helfen wir unseren Kunden, auf wettbewerbsintensiven Märkten erfolgreich zu sein.</h3>
                    </div>
                </li>
                <li>
                    <img src="../Assets2/mf-assets/img/banner6.jpg" alt="" />
                    <div class="tags">
                        <h2>Epicor für die Fertigung</h2><h3>Mit Epicor können Sie die schlanke Produktion optimieren und sich so auf die Ihre Prioritäten konzentrieren, um zu fundierten Entscheidungen zu kommen und die Kundenzufriedenheit zu steigern.</h3>
                    </div>
                </li>
                <li>
                  
                    <img src="../Assets2/mf-assets/img/banner15.jpg" alt="" />
                    <div class="tags">
                        <h2>Eine Erfolgsgeschichte</h2><h3>Was unsere Kunden über uns sagen</h3>
                    </div>
                </li>
            </ul>
            <ul class="owl-carousel" id="MainBanner">
                <li>
                    <img src="../Assets2/mf-assets/img/banner1.jpg" alt="" />
                    <div class="tags">
                        <h2>Epicor für die Fertigung </h2><h3>RheinBrücke stellt ERP-Lösungen für Hersteller bereit, mit denen diese den Bedürfnissen ihrer Hauptverantwortlichen mit der für die sich ständig wandelnden Märkte von heute erforderlichen Flexibilität gerecht werden können.</h3>
                    </div>
                </li>
                <li>
                    <img src="../Assets2/mf-assets/img/banner4.jpg" alt="" />
                    <div class="tags">
                        <h2>Epicor für die Fertigung</h2><h3>Mit EPICOR ERP können Hersteller alle ihre Prozesse und Datenquellen integrieren, um erweiterte Funktionen wirksam zur Verbesserung aller Aspekte ihrer Betriebsabläufe einzusetzen.</h3>
                    </div>
                </li>
                <li>
                    <img src="../Assets2/mf-assets/img/banner2.jpg" alt="" />
                    <div class="tags">
                        <h2>Epicor für die Fertigung</h2><h3>Gehen Sie einen weiten Schritt voran, und machen Sie Ihre EPICOR ERP Industrie 4.0-kompatibel und bereit zur digitalen Transformation.</h3>
                    </div>
                </li>
                <li>
                    <img src="../Assets2/mf-assets/img/banner5.jpg" alt="" />
                    <div class="tags">
                        <h2>Epicor für die Fertigung</h2><h3>Finanzmanagement – Supply chain Managment –Planung und Terminierung - Produktionsmanagment – Produktdatenmanagement</h3>
                    </div>
                </li>
                <li>
                    <img src="../Assets2/mf-assets/img/banner3.jpg" alt="" />
                    <div class="tags">
                        <h2>Epicor für die Fertigung</h2><h3>Epicor und RheinBrücke können Herstellern helfen, neue Standards der Unternehmensleistung zu erreichen, mit denen sie in ihrer Branche an vorderster Stelle stehen.</h3>
                    </div>
                </li>
                <li>
                    <img src="../Assets2/mf-assets/img/banner11.jpg" alt="" />
                    <div class="tags">
                        <h2>Epicor für die Fertigung</h2><h3>Wir spezialisieren uns auf Lösungen, die ideal für einen breiten Bereich von vertikalen Märkten sind und mit denen Sie Ihre Mitarbeiter im Hinblick auf effiziente Prozesse und bewährte Verfahren schulen und befähigen können.</h3>
                    </div>
                </li>
                <li>
                    <img src="../Assets2/mf-assets/img/banner12.jpg" alt="" />
                    <div class="tags">
                        <h2>Epicor für die Fertigung</h2><h3>Unsere Lösungen und Vorlagen bieten die erforderliche Flexibilität, um detailliert und individuelle auf unternehmensspezifische Bedingungen und Prozesse zu reagieren.</h3>
                    </div>
                </li>
                <li>
                    <img src="../Assets2/mf-assets/img/banner8.jpg" alt="" />
                    <div class="tags">
                        <h2>Epicor für die Fertigung</h2><h3>RheinBrücke ist davon überzeugt, dass eine erfolgreiche ERP-Anwendung ein entscheidender Faktor ist, da sie sich nahezu auf alle Aspekte ihrer Fertigungstätigkeit auswirkt. So helfen wir unseren Kunden, auf wettbewerbsintensiven Märkten erfolgreich zu sein.</h3>
                    </div>
                </li>
                <li>
                    <img src="../Assets2/mf-assets/img/banner6.jpg" alt="" />
                    <div class="tags">
                        <h2>Epicor für die Fertigung</h2><h3>Mit Epicor können Sie die schlanke Produktion optimieren und sich so auf die Ihre Prioritäten konzentrieren, um zu fundierten Entscheidungen zu kommen und die Kundenzufriedenheit zu steigern.</h3>
                    </div>
                </li>
                <li>
                    <img src="../Assets2/mf-assets/img/banner15.jpg" alt="" />
                    <div class="tags">
                        <h2>Eine Erfolgsgeschichte</h2><h3>Was unsere Kunden über uns sagen</h3>
                    </div>
                </li>
            </ul>
            <div class="slider_controls"> <a class="btn prev" id="prev1"></a> <a class="btn next" id="next1"></a> </div>
        </div>
    </div>

    <div class="right_tabs">

        <div class="form_box">
            <div class="">
                <h2><span behavior="alternate">Erhalten Sie jetzt mehr Informationen</span></h2>
            </div>

            <form role="form" id="form1" method="post">
                <input type="hidden" id="hdfRootUrl" value="<%=rootpath %>" runat="server"/>
                <div class="row">
                 <div class="col-md-6 col-xs-12 no-padding-right" style="margin-bottom: 3px;">

                        <div class="textclass">
                            <input type="text" id="firstname" name="manufacturing-first-name" class="required " placeholder="Vorname*" />
                        </div>
                    </div>
                    <div class="col-md-6 col-xs-12 no-padding-right" style="margin-bottom: 3px;">

                        <div class="textclass">
                            <input type="text" id="lastname" name="manufacturing-last-name" class="required " placeholder="Nachname*" />
                        </div>
                    </div>
                    <div class="col-md-6 col-xs-12 no-padding-right"style="margin-bottom: 3px;">

                        <div class="textclass">
                            <input type="text" id="mobile1" name="manufacturing-mobile" class="required " placeholder="Telefon*" />
                        </div>
                    </div>
                    <div class="col-md-6 col-xs-12 no-padding-right" style="margin-bottom: 3px;">

                        <div class="textclass">
                            <input type="text" id="Email1" name="manufacturing-email" class="required " placeholder="E-Mail*" />
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-6" style="padding-right: 0; ">
                        <div class="textclass textclassmob">
                            <span class="button-checkbox">
                                <button type="button" class="btn btn-sm btn-consult" data-color="primary">Broschüre herunterladen</button>
                                <input type="checkbox" name="consulting" class="hidden" value="1" />
                            </span>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-6" style="padding-right: 0; " title="Ref: Panorama Consulting">
                        <div class="textclass textclassmob">
                            <span class="button-checkbox">
                                <button type="button" class="btn btn-sm " data-color="primary">Report herunterladen</button>
                                <input type="checkbox" name="report" class="hidden" value="1" />
                            </span>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-6" style="padding-right: 0;">
                        <div class="textclass textclassmob">
                            <span class="button-checkbox">
                                <button type="button" class="btn btn-sm" data-color="primary">Whitepaper herunterladen</button>
                                <input type="checkbox" name="whitepaper" class="hidden" value="1" />
                            </span>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-6" style="padding-right: 0;">
                        <div class="textclass textclassmob">
                            <span class="button-checkbox">
                                <button type="button" class="btn btn-sm" data-color="primary">Demo anfordern</button>
                                <input type="checkbox" name="demo" class="hidden" value="1" />
                            </span>
                        </div>
                    </div>
                    <span class="showErrorMsg" style="color: red"></span>
                    <span id="result" style="color: red"></span>
                    <span class="successmsg" style="color: green"></span>
                    <div class="submitclass"> <input type="button" id="Submit1" name="submit" class="mainButton" value="Einsenden" onclick="onFormSubmit()"/></div>
                </div>
            </form>

           
        </div>

        <div class="tabbing_box">
            <div class="tabs_btn">
                <ul>
                    <li><a href="#overview" id="Overview" data-banner="1" rel="tab1" class="active">Überblick</a></li>
                    <li><a href="#features" id="Features" data-banner="2" rel="tab2">Spezielle<br />Lösungen</a></li>
                    <li><a href="#modules" id="Modules" data-banner="3" rel="tab3">Vorteile von<br />RheinBrücke</a></li>
                    <li><a href="#testimonials" id="Testimonials" data-banner="4" rel="tab4">Testimonials</a></li>
                    <li><a href="#contactus" id="Contact Us" data-banner="5" rel="tab5">Kontakt</a></li>
                </ul>
            </div>
            <div class="tabs_details">
                <div class="mob_acc" id="mob-tab1">Überblick<span class="plusminus"></span> </div>
                <div class="tabs" id="tab1">
                    <div class="right_scroll1 mainPad">

                        <div class="logo1"><img src="../Assets2/mf-assets/images/Epicor-Logo.png" alt="" /></div>
                        <div class="tag2">Epicor für die Fertigung</div>
                        <div class="tag1">Überblick</div>

                        <div class="phones">
                            <ul>
                                <li><a href="javascript:void(0)" class="faiconcolor linkedin Share" title="Social Share"><i class="fa fa-share-alt-square" aria-hidden="true"></i></a></li>
                                <ul class="social" style="display:none;">
                                    <li><a href="#" class="faiconcolor linkedin linkdin" target="_blank"><i class="fa-linkedin-square fa" aria-hidden="true"></i></a></li>
                                    <li><a href="#" class="faiconcolor google-plus GPlus" target="_blank"><i class="fa-google-plus-square fa" aria-hidden="true"></i></a></li>
                                    <li><a target="_blank" href="#" id="" class="faiconcolor facebook-square facebook"><i class="fa-facebook-square fa" aria-hidden="true"></i></a></li>
                                    <li><a href="#" class="faiconcolor twitterPlus twitter" target="_blank"><i class="fa-twitter-square fa" aria-hidden="true"></i></a></li>
                                </ul>
                            </ul>
                        </div>
                        <p class="onep">
Hersteller stehen unter ständigem Druck, hochwertige Produkte termingerecht produzieren zu müssen. Konjunkturschwankungen, Mangel an Fachkräften sowie Governance- und Compliance-Vorgaben erhöhen noch die Komplexität, mit der sich die Hersteller täglich auseinandersetzen müssen. Es ist keine leichte Aufgabe, Kosten zu senken, die Rentabilität zu steigern und dabei wettbewerbsfähig zu bleiben. Durch den wirkungsvollen Einsatz von EPICOR ermöglichen wir es unseren Kunden, diesen Anforderungen zu genügen, und setzen sie in die Lage, die zukünftigen Anforderungen der heutigen agilen Produktionsumgebungen zu antizipieren. Epicor ERP unterstützt den kompletten Fertigungsprozess sowie die Automatisierung aller Kernfunktionen des Unternehmens. Es ermöglicht die Integration einer ausgeprägten Qualitätskontrolllösung für die Produktion in jedem Stadium des Herstellungsprozesses; einschließlich Eingangskontrolle, während der Herstellung und bei dem Versand, komplett ab. Die Implementierung dieser Lösung kann Ihnen einen immensen Wettbewerbsvorteil verschaffen.   <br/><br /><br/><br /><br/><br />   </p>
                    </div>
                </div>
                <div class="mob_acc" id="mob-tab2">Spezielle Lösungen<span class="plusminus"></span> </div>
                <div class="tabs hide" id="tab2">
                    <div class="right_scroll1 mainPad">
                        <div class="logo1"><img src="../Assets2/mf-assets/images/Epicor-Logo.png" alt="" /></div>
                        <div class="tag2">Epicor für die Fertigung</div>
                        <div class="tag1">Spezielle Lösungen</div>

                        <div class="phones">
                            <ul>
                                <li><a href="javascript:void(0)" class="faiconcolor linkedin Share" title="Social Share"><i class="fa fa-share-alt-square" aria-hidden="true"></i></a></li>
                                <ul class="social" style="display:none;">
                                    <li><a href="#" class="faiconcolor linkedin linkdin" target="_blank"><i class="fa-linkedin-square fa" aria-hidden="true"></i></a></li>
                                    <li><a href="#" class="faiconcolor google-plus GPlus" target="_blank"><i class="fa-google-plus-square fa" aria-hidden="true"></i></a></li>
                                    <li><a target="_blank" href="#" id="" class="faiconcolor facebook-square facebook"><i class="fa-facebook-square fa" aria-hidden="true"></i></a></li>
                                    <li><a href="#" class="faiconcolor twitterPlus twitter" target="_blank"><i class="fa-twitter-square fa" aria-hidden="true"></i></a></li>
                                </ul>
                            </ul>
                        </div>
                        <div style="padding:0 2%;">
                            <p class="onep">
                               RheinBrücke ist der größte Epicor-Partner in der Region EMEAI und verfügt über mehr als 300 Personenjahre Erfahrung mit der Epicor ERP-Anwendung.<br/><br/>
                               Wir bieten auch ein spezifisches Lösungspaket an, das individuell auf den jeweiligen Standort und die folgenden fertigungsrelevanten Sektoren zugeschnitten ist:
                                </p>
                            <ul class="featureList">
                                <li>Automobilbau </li>
                                <li>Diskrete Fertigung  </li>
                                <li>Metallverarbeitung</li>
                                <li>Industriemaschinen</li>
                                <li>Medizintechnik</li>
                            </ul>
                            <h4>Fähigkeiten von Epicor ERP für die Fertigungsindustrie:</h4>
                          
                            <h4>Supply Chain Management</h4>                 
                            <ul class="featureList">
                                <li>Bestandsmanagement</li>
                                <li>Lagerverwaltung </li>
                                <li>Lieferant Beziehungsmanagement</li>
                                <li>erweiterte Materialwirtschaft</li>
                               
                            </ul>
                            <h4>Produktionsmanagement</h4>                 
                            <ul class="featureList">
                                <li>schlanke Produktion</li>
                                <li>Manufacturing Execution System (MES)</li>
                                <li>Erweiterte Qualitätsmanagement</li>
                                <li>Qualitätssicherung </li>
                                <li>Enterprise Performance Management</li>
                               
                            </ul>
                            <h4>Planung und Terminplanung</h4>                 
                            <ul class="featureList">
                                <li>Leitstand- und Produktionsplanung</li>
                                <li>Materialbedarf Planung</li>
                                <li>Terminplanung und Ressourcenmanagement</li>
                                <li>Erweiterte Planung und Terminplanung</li>
                               
                            </ul>
                            <h4>Projektmanagement</h4>                 
                            <ul class="featureList">
                                <li>Projekt Planung</li>
                                <li>Ressourcemanagement </li>
                                <li>Zeitmanagement</li>
                                <li>Projekt Fakturierung</li>
                                <li>Mobil Zeit und Kostenerfassung</li>
                               
                            </ul>
                            <h4>Finanzmanagement</h4>                 
                            <ul class="featureList">
                                <li>Hauptbuch</li>
                                <li>Forderungen und Verbindlichkeiten</li>
                                <li>Forderungen und Verbindlichkeiten</li>
                                <li>Cash-Management</li>
                                 <li>Anlagenbuchhaltung</li>
                                 <li>Controlling</li>
                                 <li>Finanzanalysen</li>
                                 <li>Konsolidierungen und Eliminierungen</li>
                                 <li>Tax Connect</li>
                               
                            </ul>

                              <div class="tag1">
                               FÜR WEITERE INFORMATIONEN LADEN SIE UNSERE BROSCHÜRE HERUNTER, INDEM SIE DAS UNTENSTEHENDE FORMULAR EINREICHEN.
                            </div>

                            <br />
                             <br />
                             <br />
                            <br />
                             <br />
                             <br />
                        </div>
                    </div>
                </div>
                <div class="mob_acc" id="mob-tab3">Vorteile von RheinBrücke<span class="plusminus"></span> </div>
                <div class="tabs hide" id="tab3">
                    <div class="right_scroll1 mainPad">
                        <div class="logo1"><img src="../Assets2/mf-assets/images/Epicor-Logo.png" alt="" /></div>
                        <div class="tag2">Epicor für die Fertigung</div>
                        <div class="tag1">Vorteile von RheinBrücke</div>

                        <div class="phones">
                            <ul>
                                <li><a href="javascript:void(0)" class="faiconcolor linkedin Share" title="Social Share"><i class="fa fa-share-alt-square" aria-hidden="true"></i></a></li>
                                <ul class="social" style="display:none;">
                                    <li><a href="#" class="faiconcolor linkedin linkdin" target="_blank"><i class="fa-linkedin-square fa" aria-hidden="true"></i></a></li>
                                    <li><a href="#" class="faiconcolor google-plus GPlus" target="_blank"><i class="fa-google-plus-square fa" aria-hidden="true"></i></a></li>
                                    <li><a target="_blank" href="#" id="" class="faiconcolor facebook-square facebook"><i class="fa-facebook-square fa" aria-hidden="true"></i></a></li>
                                    <li><a href="#" class="faiconcolor twitterPlus twitter" target="_blank"><i class="fa-twitter-square fa" aria-hidden="true"></i></a></li>
                                </ul>
                            </ul>
                        </div>
                        <div style="padding:0 2%;">
                            <p class="onep">
                                <span class="benefit-title">Mit unserer Epicor-Anwendung können Sie</span><br />
                                <br />
                                <ul class="featureList">

                                   
                                    <li>Innovative Produkte und Dienstleistungen für neue und bestehende Märkte entwickeln</li>
                                    <li>Operationelle Exzellenz mit optimierter Logistik und Fertigung erreichen</li>
                                    <li>Verbesserung der Geschäftsergebnisse durch präziseren internen Visualisierung und Kontrolle</li>
                                    <li>Die Zentrale, Niederlassungen und Partner in einem einzelnen Netzwerk verbinden</li>
                                    <li>Bei einem wachsendem Unternehmen nach Bedarf CRM, Supplier Relationship Management und BI-Funktionen hinzufügen</li>
                                </ul>
                                <span style="color:#333 !important">Wenden Sie sich an uns, wenn Sie startbereit sind oder auch einfach nur ein paar Fragen haben. Wir freuen uns, Ihnen bei Ihren Zielen und Herausforderungen in Sachen Fertigungssoftware zu helfen.</span>
                            </p>
                        </div>
                       <br />
                                <br />
                                <br />
                        <br />
                                <br />
                        <div class="slider slider1">

                            <div class="clearfix">
                                <br />
                                <br />
                                <br />
                                <br />
                            </div>
                        </div>
                    </div>
                </div>

                <div class="mob_acc" id="mob-tab4">Testimonials<span class="plusminus"></span> </div>
                <div class="tabs hide" id="tab4">
                    <div class="row right_scroll1 mainPad">
                        <div class="logo1"><img src="../Assets2/mf-assets/images/Epicor-Logo.png" alt="" /></div>
                        <div class="tag2">Epicor for Manufacturing  </div>
                        <div class="tag1">Testimonials</div>
                      
                        <div class="phones">
                            <ul>
                                <li><a href="javascript:void(0)" class="faiconcolor linkedin Share" title="Social Share"><i class="fa fa-share-alt-square" aria-hidden="true"></i></a></li>
                                <ul class="social" style="display:none;">
                                    <li><a href="#" class="faiconcolor linkedin linkdin" target="_blank"><i class="fa-linkedin-square fa" aria-hidden="true"></i></a></li>
                                    <li><a href="#" class="faiconcolor google-plus GPlus" target="_blank"><i class="fa-google-plus-square fa" aria-hidden="true"></i></a></li>
                                    <li><a target="_blank" href="#" id="" class="faiconcolor facebook-square facebook"><i class="fa-facebook-square fa" aria-hidden="true"></i></a></li>
                                    <li><a href="#" class="faiconcolor twitterPlus twitter" target="_blank"><i class="fa-twitter-square fa" aria-hidden="true"></i></a></li>
                                </ul>
                            </ul>
                        </div>
                        <div style="padding:0 5%;">
                        <p class="onep">„Vielen Dank für die andauernd gute Arbeit am ERP und Supply Chain Projekt. Ihre Beratung, technische, funktionale und Projektmanagement Kompetenz war offensichtlich und wurde von unseren Mitarbeitern sehr geschäzt. Gefreut hat mich auch Ihre Flexibilität, und die transparente Arbeitsweise im Rahmen unserer Zusammenarbeit. Wie erwartet war die Kooperation mit multikulturellen Teams aus Niedrigpreis Ländern ausgezeichnet, ohne jedoch Kompromisse bei der Qualität von Arbeitsergebnissen einzugehen. Machen Sie weiter so.” </p>
                        <div class="list">
                            <div class="col-md-4">

                            </div>
                            <div class="col-md-8" style="padding:0 10px;">
                                <span>
                                    <p class="testimonial-name">
                                        <img class="testimonial-img img-circle" src="https://rheincs.com/Assets/images/Testimonial/Milani.png" alt="Testimonial by Massimiliano A. Milani" style="margin-right: 10px; float: left; width: 66px; height: 67px;" />
                                        Massimiliano A. Milani<br/><span class="smaller">Director Europe & Africas at Federal Mogul Antwerp, Belgium</span>
                                    </p>
                                </span>
                                      <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                            </div>

                        </div>
</div>
                    </div>
                </div>
                <div class="mob_acc" id="mob-tab5">KONTAKT<span class="plusminus"></span> </div>
                <div class="tabs hide" id="tab5">
                    <div class="row right_scroll1 mainPad">
                        
                        <div class="tag2">RHEINBRÜCKE IT CONSULTING</div>
                        <div class="tag1">KONTAKT</div>
                       <div class="logo1"><img src="../Assets2/mf-assets/images/Epicor-Logo.png" alt="" /></div>
                         <div class="row col-md-12 padd-left-20">

                    <div class="col-md-12 textleft">                                 
                                <p class="bulletContent">
                                    <b>RheinBrücke IT Consulting GmbH</b><br/>
                                    Kranhaus 1, Im Zollhafen 18<br/>
                                    50678 Köln, Deutschland<br/>
                                    Tel: +49 (0) 221 650 60 608<br/>
                                    Fax: +49 (0) 221 650 60 500<br/>
                                    Email: <a href="mailto:marketing@rheincs.com" style="color:#7b1314">marketing@rheincs.com</a>
                                </p>
                    </div>
       <%--              <div class="col-md-4">
                        <ul>
                            <li class="no-styleli">
                                <div class="contactus-map-icon">
                                    <img src="../Assets/images/location_icon.png" class="img-responsive" alt="Location Indiactor" />
                                </div>
                                <span class="redColor bulletContent">USA
                                </span>
                                <p class="bulletContent">
                                    3815 Chippenham Road,<br>
                                    Mechanicsburg,<br>
                                    PA 17050, United States<br>
                                    Tel: +1 717 265 3937<br>
                                    Email: <a href="mailto:info@rheincs.com">info@rheincs.com</a>
                                </p>
                            </li>
                        </ul>

                    </div>--%>

                </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer>
        <div class="prv hidden-xs hidden-sm"><a href="#thumb1" class="fancybox">Privacy Policy </a></div>
        <div class="marked">Copyright © 2017 , RheinBrücke. All rights Reserved  <span style="float:right; margin-top:-3px;" class="hidden-md hidden-lg hidden-sm"><a href="#top"><i class="fa fa-arrow-circle-up fa-1x" aria-hidden="true"></i></a></span></div>
    </footer>
</div>

<div id="thumb1" class="popupbox" style="display:none; width:600px;">
    <p>Privacy Policy:This website is administered by RheinBrücke IT Consulting B.V. As administrator of this website RheinBrücke IT Consulting B.V. gathers, analyses and processes information regarding the visitors and usage of this website for its general business purposes and for the development of web statistics. The website uses cookies or tracking pixels to gather this information.</p>
    <p>RheinBrücke IT Consulting B.V. will not sell, license or make public to any third party your personal data that is either directly or indirectly gathered when you visit this website, unless disclosure of such data is necessary in order to comply with mandatory requirements. Your personal data shall only be used for the purpose of addressing any requests you may have filed or to inform you of any of RheinBrücke IT Consulting B.V.’s products or services that may be of interest to you. Should you no longer wish to receive newsletters, marketing information or any other information of RheinBrücke IT Consulting B.V., you can indicate so by clicking the unsubscribe function at the bottom of this statement.
    <p>>For any further questions you may have, please contact us by sending an email to: info@rheincs.com</p>
    <p>RheinBrücke IT Consulting B.V. neither is responsible nor liable for the privacy statement or content of websites that are linked to or referred to by this website.</p>
</div>

<ul class="owl-carousel" id="home_banner1" style="display:none;">
    <li>
        <img src="../Assets2/mf-assets/img/banner1.jpg" alt="" />
        <div class="tags">
            <h2>Epicor für die Fertigung</h2><h3>RheinBrücke stellt ERP-Lösungen für Hersteller bereit, mit denen diese den Bedürfnissen ihrer Hauptverantwortlichen mit der für die sich ständig wandelnden Märkte von heute erforderlichen Flexibilität gerecht werden können.</h3>
        </div>
    </li>
    <li>
        <img src="../Assets2/mf-assets/img/banner4.jpg" alt="" />
        <div class="tags">
            <h2>Epicor für die Fertigung</h2><h3>Mit EPICOR ERP können Hersteller alle ihre Prozesse und Datenquellen integrieren, um erweiterte Funktionen wirksam zur Verbesserung aller Aspekte ihrer Betriebsabläufe einzusetzen.</h3>
        </div>
    </li>
    <li>
        <img src="../Assets2/mf-assets/img/banner2.jpg" alt="" />
        <div class="tags">
            <h2>Epicor für die Fertigung</h2><h3>Gehen Sie einen weiten Schritt voran, und machen Sie Ihre EPICOR ERP Industrie 4.0-kompatibel und bereit zur digitalen Transformation.</h3>
        </div>
    </li>

   
</ul>

<ul class="owl-carousel" id="home_banner2" style="display:none;">
    <li>
        <img src="../Assets2/mf-assets/img/banner5.jpg" alt=""/>
        <div class="tags">
            <h2>Epicor für die Fertigung</h2><h3>Finanzmanagement – Supply chain Managment –Planung und Terminierung - Produktionsmanagment – Produktdatenmanagement</h3>
        </div>
    </li>
    <li>
        <img src="../Assets2/mf-assets/img/banner3.jpg" alt="" />
        <div class="tags">
            <h2>Epicor für die Fertigung</h2><h3>Epicor und RheinBrücke können Herstellern helfen, neue Standards der Unternehmensleistung zu erreichen, mit denen sie in ihrer Branche an vorderster Stelle stehen.</h3>
        </div>
    </li>
    <li>
        <img src="../Assets2/mf-assets/img/banner11.jpg" alt="" />
        <div class="tags">
            <h2>Epicor für die Fertigung</h2><h3>Wir spezialisieren uns auf Lösungen, die ideal für einen breiten Bereich von vertikalen Märkten sind und mit denen Sie Ihre Mitarbeiter im Hinblick auf effiziente Prozesse und bewährte Verfahren schulen und befähigen können.</h3>
        </div>
    </li>
    
</ul>

<ul class="owl-carousel" id="home_banner3" style="display:none;">
    <li>
        <img src="../Assets2/mf-assets/img/banner12.jpg" alt="" />
        <div class="tags">
            <h2>Epicor für die Fertigung</h2><h3>Unsere Lösungen und Vorlagen bieten die erforderliche Flexibilität, um detailliert und individuelle auf unternehmensspezifische Bedingungen und Prozesse zu reagieren.</h3>
        </div>
    </li>
    <li>
        <img src="../Assets2/mf-assets/img/banner8.jpg" alt="" />
        <div class="tags">
            <h2>Epicor für die Fertigung</h2><h3>RheinBrücke ist davon überzeugt, dass eine erfolgreiche ERP-Anwendung ein entscheidender Faktor ist, da sie sich nahezu auf alle Aspekte ihrer Fertigungstätigkeit auswirkt. So helfen wir unseren Kunden, auf wettbewerbsintensiven Märkten erfolgreich zu sein.</h3>
        </div>
    </li>
    <li>
        <img src="../Assets2/mf-assets/img/banner6.jpg" alt="" />
        <div class="tags">
            <h2>Epicor für die Fertigung</h2><h3>Mit Epicor können Sie die schlanke Produktion optimieren und sich so auf die Ihre Prioritäten konzentrieren, um zu fundierten Entscheidungen zu kommen und die Kundenzufriedenheit zu steigern.</h3>
        </div>
    </li>

    
</ul>

<ul class="owl-carousel" id="home_banner4" style="display:none;">
    <li>
        <img src="../Assets2/mf-assets/img/banner15.jpg" alt="" />
        <div class="tags">
            <h2>Eine Erfolgsgeschichte</h2><h3>Was unsere Kunden über uns sagen</h3>
        </div>
    </li>   
</ul>
    <ul class="owl-carousel" id="home_banner5" style="display:none;">
    <li>
        <img src="../Assets2/mf-assets/img/CM_bnr_9.jpg" alt="" />
        <div class="tags">
            <h2>Fragen Sie einen Experten</h2><h3>Wir bieten flexible, branchenspezifische Lösungen, die auf die Anforderungen unserer Kunden in Fertigung zugeschnitten ist</h3>
        </div>
    </li>
  
</ul>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterScript" runat="server">
</asp:Content>
