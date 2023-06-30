using RheinBrucke.Library;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Routing;

namespace RheinBrucke
{
    public static class RouteConfig
    {   
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.Clear();
            routes.MapHttpRoute(
             name: "DefaultApi1",
             routeTemplate: "api/{controller}/{action}"
             );

            routes.MapHttpRoute(
            name: "DefaultApi",
            routeTemplate: "api/{controller}/{id}",
            defaults: new { id = System.Web.Http.RouteParameter.Optional }
            );

            // Web Forms default
            routes.MapPageRoute(
                "WebFormDefault",
                "",
                "~/Home.aspx"
            );

            routes.MapPageRoute("default", "Home", "~/Home.aspx");

            routes.MapPageRoute("Kontakt", "Kontakt", "~/Kontakt.aspx");


            routes.MapPageRoute("manufacturing", "rheinbrucke-solutions/manufacturing", "~/rheinbrucke-solutions/manufacturing.aspx");
            routes.MapPageRoute("thankyou", "rheinbrucke-solutions/thankyou", "~/rheinbrucke-solutions/thankyou.aspx");
            routes.MapPageRoute("Epicor-Iscala-Hospitality-Industry", "rheinbrucke-solutions/epicor-iscala-hospitality-industry", "~/rheinbrucke-solutions/epicor-iscala-hospitality-industry.aspx");
            routes.MapPageRoute("Thankyou-iScala", "rheinbrucke-solutions/Thankyou-iScala", "~/rheinbrucke-solutions/Thankyou-iScala.aspx");
            //routes.MapPageRoute("casestudies", "resources/casestudies", "~/resources/casestudies.aspx");

            //routes.MapPageRoute("hcm", "rheinbrucke-solutions/hcm", "~/rheinbrucke-solutions/hcm.aspx");
            //routes.MapPageRoute("manufacturing", "rheinbrucke-solutions/manufacturing", "~/rheinbrucke-solutions/manufacturing.aspx");
            //routes.MapPageRoute("ppa", "rheinbrucke-solutions/ppa", "~/rheinbrucke-solutions/PPA.aspx");
            //routes.MapPageRoute("sca", "rheinbrucke-solutions/sca", "~/rheinbrucke-solutions/sca.aspx");
            //routes.MapPageRoute("business-intelligence", "rheinbrucke-solutions/business-intelligence", "~/rheinbrucke-solutions/business-intelligence.aspx");
            //routes.MapPageRoute("thankyou", "rheinbrucke-solutions/thankyou", "~/rheinbrucke-solutions/thankyou.aspx");

            //routes.MapPageRoute("epicor-for-construction-and-epc-overview", "rheinbrucke-solutions/epicor-for-construction-and-epc-overview", "~/rheinbrucke-solutions/epicor-for-construction-and-epc-overview.aspx");
            //routes.MapPageRoute("epicor-for-construction-and-epc-enhanced-capabilities", "rheinbrucke-solutions/epicor-for-construction-and-epc-enhanced-capabilities", "~/rheinbrucke-solutions/epicor-for-construction-and-epc-enhanced-capabilities.aspx");
            //routes.MapPageRoute("epicor-for-construction-and-epc-rheinbrucke-advantage", "rheinbrucke-solutions/epicor-for-construction-and-epc-rheinbrucke-advantage", "~/rheinbrucke-solutions/epicor-for-construction-and-epc-rheinbrucke-advantage.aspx");
            //routes.MapPageRoute("epicor-for-construction-and-epc-testimonials", "rheinbrucke-solutions/epicor-for-construction-and-epc-testimonials", "~/rheinbrucke-solutions/epicor-for-construction-and-epc-testimonials.aspx");

            //routes.MapPageRoute("merry_christmas-and-happy_new_year-2017", "merry_christmas-and-happy_new_year-2017", "~/Merry_Christmas-and-Happy_New_Year-2017.aspx");

            //routes.MapPageRoute("Login", "login", "~/Admin/AdminLogin.aspx");
            //routes.MapPageRoute("Dashboard", "dashboard", "~/Admin/Admin.aspx");
            //routes.MapPageRoute("JobReport", "job-report", "~/Admin/JobReport.aspx");
            //routes.MapPageRoute("ContactReport", "contact-report", "~/Admin/ConatctReport.aspx");
            //routes.MapPageRoute("MailConfig", "mail-config", "~/Admin/MailConfig.aspx");
            //routes.MapPageRoute("LandingReport", "Landing-report", "~/Admin/LandingReport.aspx");
            //routes.MapPageRoute("career-model", "careers/career-model", "~/Careers/CareerModel.aspx");


            routes.MapPageRoute("Login", "login", "~/Admin/AdminLogin.aspx");
            routes.MapPageRoute("Dashboard", "dashboard", "~/Admin/Admin.aspx");
            routes.MapPageRoute("JobReport", "job-report", "~/Admin/JobReport.aspx");
            routes.MapPageRoute("ContactReport", "contact-report", "~/Admin/ConatctReport.aspx");
            routes.MapPageRoute("MailConfig", "mail-config", "~/Admin/MailConfig.aspx");
            routes.MapPageRoute("LandingReport", "Landing-report", "~/Admin/LandingReport.aspx");
            routes.MapPageRoute("career-model", "careers/career-model", "~/Careers/CareerModel.aspx");
            routes.MapPageRoute("ManageNewsandEvents", "Manage-News-and-Events", "~/Admin/NewsEvents.aspx");
            routes.MapPageRoute("ManageCareers", "Manage-Careers", "~/Admin/JobOpenings.aspx");
            routes.MapPageRoute("AdminHome", "Admin-Home", "~/Admin/AdminHome.aspx");



            routes.MapPageRoute("epicpay-smart-payroll-solution", "epicpay-smart-payroll-solution", "~/Landing/LandingPageEpicPay.aspx");
            routes.MapPageRoute("Epicor-Payroll-MEA", "Epicor-Payroll-MEA", "~/Landing/LandingPageEpicPay.aspx");
            routes.MapPageRoute("epicor-erp-upgrade", "epicor-erp-upgrade", "~/Landing/LandingPageEpicor.aspx");
            routes.MapPageRoute("rheinbrucke-cct-copy-company-tool", "rheinbrucke-cct-copy-company-tool", "~/Landing/CCTLanding.aspx");
            //routes.MapPageRoute("epicor-hcm-human-capital-management", "epicor-hcm-human-capital-management", "~/Landing/HCMLandingPage.aspx");
            routes.MapPageRoute("our-solution-ppa", "our-solution-ppa", "~/Landing/PPALanding.aspx");
            routes.MapPageRoute("MeRLIN", "MeRLIN", "~/Landing/MeRLIN.aspx");

            routes.MapPageRoute("Überblick", "ÜberUns/Überblick", "~/ÜberUns/Überblick.aspx");
            routes.MapPageRoute("Führung", "ÜberUns/ÜberUns-Führung", "~/ÜberUns/Führung/Führung.aspx");
            routes.MapPageRoute("JoergPirron", "ÜberUns/Führung/JoergPirron", "~/ÜberUns/Führung/JoergPirron.aspx");
            routes.MapPageRoute("VetriSelvan", "ÜberUns/Führung/VetriSelvan", "~/ÜberUns/Führung/VetriSelvan.aspx");
            routes.MapPageRoute("KumarMallampalli", "ÜberUns/Führung/KumarMallampalli", "~/ÜberUns/Führung/KumarMallampalli.aspx");
            routes.MapPageRoute("KennethTaormina", "ÜberUns/Führung/Kenneth-Taormina", "~/ÜberUns/Führung/KennethTaormina.aspx");
            routes.MapPageRoute("Carlos", "ÜberUns/Führung/Carlos-A-Alvarenga", "~/ÜberUns/Führung/carlos.aspx");
            routes.MapPageRoute("Kundenreferenzen", "ÜberUns/kundenreferenzen", "~/ÜberUns/CustomerSpeak.aspx");
            routes.MapPageRoute("Erfolgsgeschichten", "ÜberUns/Erfolgsgeschichten", "~/ÜberUns/Erfolgsgeschichten.aspx");
            routes.MapPageRoute("corporate-videos", "ÜberUns/corporate-videos", "~/ÜberUns/CorporateVideos.aspx");


            routes.MapPageRoute("erp-auswahl-advisory-services", "Lösungen/Beratung/erp-auswahl-advisory-services", "~/Lösungen/Beratung/ERPAuswahlAdvisoryServices.aspx");
            routes.MapPageRoute("IT-Geschäfts-Exzellenz", "Lösungen/Beratung/IT-Geschäfts-Exzellenz", "~/Lösungen/Beratung/ITGeschäftsExzellenz.aspx");
            routes.MapPageRoute("Programm-Und-Projekt-management", "Lösungen/Beratung/Programm-Und-Projekt-management", "~/Lösungen/Beratung/ProgrammUndProjektmanagement.aspx");
            routes.MapPageRoute("sap", "Lösungen/erp-enterprise-solutions-und-services/sap", "~/Lösungen/EnterpriseSolutionsUndServices/SAP.aspx");
            routes.MapPageRoute("epicor", "Lösungen/erp-enterprise-solutions-und-services/epicor", "~/Lösungen/EnterpriseSolutionsUndServices/EPICOR/Epicor.aspx");
            routes.MapPageRoute("epicor-iscala-hospitality-industry-software", "Lösungen/erp-enterprise-solutions-und-services/epicor/epicor-iscala-hospitality-industry-software", "~/Lösungen/EnterpriseSolutionsUndServices/EPICOR/epicor-iscala-hospitality-industry-software.aspx");
            routes.MapPageRoute("epicor-für-fertigung", "Lösungen/erp-enterprise-solutions-und-services/epicor/epicor-für-fertigung", "~/Lösungen/EnterpriseSolutionsUndServices/EPICOR/epicor-für-fertigung.aspx");
            routes.MapPageRoute("epicor--für--fertigung", "Lösungen/erp-enterprise-solutions-und-services/epicor/epicor-for-fertigung", "~/Lösungen/EnterpriseSolutionsUndServices/EPICOR/epicor-für-fertigung.aspx");
            routes.MapPageRoute("epicor-für-die-Bauindustrie", "Lösungen/erp-enterprise-solutions-und-services/epicor/epicor-für-die-Bauindustrie", "~/Lösungen/EnterpriseSolutionsUndServices/EPICOR/Epicor-für-die-Bauindustrie.aspx");
            routes.MapPageRoute("epicor-hcm", "Lösungen/erp-enterprise-solutions-und-services/epicor/epicor-hcm", "~/Lösungen/EnterpriseSolutionsUndServices/EPICOR/Epicor-hcm.aspx");
            routes.MapPageRoute("bi", "Lösungen/erp-enterprise-solutions-und-services/epicor/bi", "~/Lösungen/EnterpriseSolutionsUndServices/EPICOR/ERP-BI.aspx");

            routes.MapPageRoute("partner-enablement-programm", "Lösungen/erp-enterprise-solutions-und-services/epicor/partner-enablement-program", "~/Lösungen/EnterpriseSolutionsUndServices/EPICOR/Epicor-PartnerEnablementProgram.aspx");
            routes.MapPageRoute("epicor-Implementierungs-und-UnterstützungsLeistungen", "Lösungen/erp-enterprise-solutions-und-services/epicor/epicor-Implementierungs-und-UnterstützungsLeistungen", "~/Lösungen/EnterpriseSolutionsUndServices/EPICOR/Epicor_ImplementierungsundUnterstützungsLeistungen.aspx");
            routes.MapPageRoute("epicor-Dienstleistungen-für-epicor", "Lösungen/erp-enterprise-solutions-and-services/epicor/epicor-Dienstleistungen-für-epicor", "~/Lösungen/EnterpriseSolutionsUndServices/EPICOR/Epicor-DienstleistungenfürEpicor.aspx");
            routes.MapPageRoute("Epicor-VorkonfigurierteLösung", "Lösungen/erp-Enterprise-Solutions-Und-Services/epicor/Epicor-Vorkonfigurierte-Lösungen", "~/Lösungen/EnterpriseSolutionsUndServices/EPICOR/PreconfiguredSolutions/EpicorVorkonfigurierteLösung.aspx");
            routes.MapPageRoute("VorkonfigurierteLösung-epicpay", "Lösungen/erp-Enterprise-Solutions-Und-Services/epicor/Epicor-Vorkonfigurierte-Lösungen/epicPay", "~/Lösungen/EnterpriseSolutionsUndServices/EPICOR/PreconfiguredSolutions/EpicPay.aspx");


            routes.MapPageRoute("microsoft-technologien", "Lösungen/it-services-und-Lösungen/microsoft-technologien", "~/Lösungen/ITServicesUndLösungen/MicrosoftTechnologien/MicrosoftTechnologien.aspx");
            routes.MapPageRoute("beratung", "Lösungen/it-services-und-Lösungen/microsoft-technologien/beratung", "~/Lösungen/ITServicesUndLösungen/MicrosoftTechnologien/Beratung.aspx");
            routes.MapPageRoute("sharepoint", "Lösungen/it-services-und-Lösungen/microsoft-technologien/sharepoint", "~/Lösungen/ITServicesUndLösungen/MicrosoftTechnologien/Sharepoint.aspx");
            routes.MapPageRoute("microsoft-bi-Lösungen", "Lösungen/it-services-und-Lösungen/microsoft-technologien/microsoft-bi-Lösungen", "~/Lösungen/ITServicesUndLösungen/MicrosoftTechnologien/EinblickeundAnalysen.aspx");
            routes.MapPageRoute("cloud-und-azure", "Lösungen/it-services-und-Lösungen/microsoft-technologien/cloud-und-azure", "~/Lösungen/ITServicesUndLösungen/MicrosoftTechnologien/CloudUndAzure.aspx");
            routes.MapPageRoute("Applikationsentwicklungundwartung", "Lösungen/it-services-und-Lösungen/microsoft-technologien/Applikationsentwicklungundwartung", "~/Lösungen/ITServicesUndLösungen/MicrosoftTechnologien/Applikationsentwicklungundwartung.aspx");
            routes.MapPageRoute("application-maintenance-and-support", "Lösungen/it-services-und-Lösungen/microsoft-technologien/application-maintenance-and-support", "~/Lösungen/ITServicesUndLösungen/ApplicationMaintenanceAndSupport.aspx");
            routes.MapPageRoute("Testverfahren", "Lösungen/it-services-und-Lösungen/microsoft-technologien/Testverfahren", "~/Lösungen/ITServicesUndLösungen/Testverfahren.aspx");

            //routes.MapPageRoute("small-businesses", "solutions/focused-solutions/small-businesses", "~/Solutions/FocusedSolutions/SmallBusiness.aspx");
            //routes.MapPageRoute("mid-market-companies", "solutions/focused-solutions/mid-market-companies", "~/Solutions/FocusedSolutions/MidMarketCompanies.aspx");
            //routes.MapPageRoute("enterprise", "solutions/focused-solutions/enterprise", "~/Solutions/FocusedSolutions/Enterprise.aspx");


            routes.MapPageRoute("Whitepapers", "whitePapers/whitepapers", "~/WhitePapers/WhitePapers.aspx");
            routes.MapPageRoute("Brochures", "brochure/brochures", "~/Brochure/Brochure.aspx");
            routes.MapPageRoute("FactSheets", "factsheets/factsheets", "~/FactSheets/FactSheets.aspx");
            routes.MapPageRoute("CaseStudies", "casestudies/CaseStudy", "~/CaseStudies/CaseStudy.aspx");

            routes.MapPageRoute("sitemap", "sitemap", "~/sitemap.aspx");
            routes.MapPageRoute("Nutzungsbedingungen", "nutzungsbedingungen", "~/Nutzungsbedingungen.aspx");
            routes.MapPageRoute("Datenschutzerklärung", "datenschutzerklärung", "~/Datenschutzerklärung.aspx");
            routes.MapPageRoute("Impressum", "impressum", "~/Impressum.aspx");


            routes.MapPageRoute("produkt-technikundentwicklung", "Lösungen/ip-und-produktentwicklung/produkt-technikundentwicklung", "~/Lösungen/IPUndProduktentwicklung/Produkttechnikundentwicklung.aspx");
            routes.MapPageRoute("technologie-support-für-produktstartups", "Lösungen/ip-und-produktentwicklung/technologie-support-für-produktstartups", "~/Lösungen/IPUndProduktentwicklung/TechnologieSupportfürProduktStartups.aspx");
            routes.MapPageRoute("opensource-technologien", "Lösungen/ip-und-produktentwicklung/opensource-technologien", "~/Lösungen/IPUndProduktentwicklung/OpenSourceTechnologien.aspx");


            routes.MapPageRoute("karrieremodelle", "karriere/karrieremodelle", "~/Karriere/Karrieremodelle.aspx");
            routes.MapPageRoute("beratungsansatz", "karriere/beratungsansatz", "~/Karriere/Beratungsansatz.aspx");
            routes.MapPageRoute("offenestellen", "karriere/karriere-offenestellen", "~/Karriere/OffeneStellen/OffeneStellen.aspx");

            //routes.MapPageRoute("unsere-geschichte", "unsere-geschichte", "~/NewsundEvents/NewsUndEvents.aspx");
            // routes.MapPageRoute("unsere-geschichte-detail", "unsere-geschichte/{*ID}", "~/NewsundEvents/NewsEventsDetail.aspx");

            routes.MapPageRoute("news-events", "news-events", "~/NewsundEvents/NewsUndEvents.aspx");
            routes.MapPageRoute("news-events-detail", "news-events/{*ID}", "~/NewsundEvents/NewsEventsDetail.aspx");

            routes.MapPageRoute("news-und-events", "news-und-events", "~/NewsundEvents/News-Und-Events.aspx");
            routes.MapPageRoute("news-und-events-detail", "news-und-events/{*ID}", "~/NewsundEvents/NewsEventsDetails.aspx");

            routes.MapPageRoute("sub-current-openings", "karriere/offenestellen/{*ID}", "~/Karriere/OffeneStellen/JobDescription.aspx");





        }
    }
}
