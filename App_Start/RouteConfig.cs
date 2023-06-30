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

            routes.MapPageRoute("�berblick", "�berUns/�berblick", "~/�berUns/�berblick.aspx");
            routes.MapPageRoute("F�hrung", "�berUns/�berUns-F�hrung", "~/�berUns/F�hrung/F�hrung.aspx");
            routes.MapPageRoute("JoergPirron", "�berUns/F�hrung/JoergPirron", "~/�berUns/F�hrung/JoergPirron.aspx");
            routes.MapPageRoute("VetriSelvan", "�berUns/F�hrung/VetriSelvan", "~/�berUns/F�hrung/VetriSelvan.aspx");
            routes.MapPageRoute("KumarMallampalli", "�berUns/F�hrung/KumarMallampalli", "~/�berUns/F�hrung/KumarMallampalli.aspx");
            routes.MapPageRoute("KennethTaormina", "�berUns/F�hrung/Kenneth-Taormina", "~/�berUns/F�hrung/KennethTaormina.aspx");
            routes.MapPageRoute("Carlos", "�berUns/F�hrung/Carlos-A-Alvarenga", "~/�berUns/F�hrung/carlos.aspx");
            routes.MapPageRoute("Kundenreferenzen", "�berUns/kundenreferenzen", "~/�berUns/CustomerSpeak.aspx");
            routes.MapPageRoute("Erfolgsgeschichten", "�berUns/Erfolgsgeschichten", "~/�berUns/Erfolgsgeschichten.aspx");
            routes.MapPageRoute("corporate-videos", "�berUns/corporate-videos", "~/�berUns/CorporateVideos.aspx");


            routes.MapPageRoute("erp-auswahl-advisory-services", "L�sungen/Beratung/erp-auswahl-advisory-services", "~/L�sungen/Beratung/ERPAuswahlAdvisoryServices.aspx");
            routes.MapPageRoute("IT-Gesch�fts-Exzellenz", "L�sungen/Beratung/IT-Gesch�fts-Exzellenz", "~/L�sungen/Beratung/ITGesch�ftsExzellenz.aspx");
            routes.MapPageRoute("Programm-Und-Projekt-management", "L�sungen/Beratung/Programm-Und-Projekt-management", "~/L�sungen/Beratung/ProgrammUndProjektmanagement.aspx");
            routes.MapPageRoute("sap", "L�sungen/erp-enterprise-solutions-und-services/sap", "~/L�sungen/EnterpriseSolutionsUndServices/SAP.aspx");
            routes.MapPageRoute("epicor", "L�sungen/erp-enterprise-solutions-und-services/epicor", "~/L�sungen/EnterpriseSolutionsUndServices/EPICOR/Epicor.aspx");
            routes.MapPageRoute("epicor-iscala-hospitality-industry-software", "L�sungen/erp-enterprise-solutions-und-services/epicor/epicor-iscala-hospitality-industry-software", "~/L�sungen/EnterpriseSolutionsUndServices/EPICOR/epicor-iscala-hospitality-industry-software.aspx");
            routes.MapPageRoute("epicor-f�r-fertigung", "L�sungen/erp-enterprise-solutions-und-services/epicor/epicor-f�r-fertigung", "~/L�sungen/EnterpriseSolutionsUndServices/EPICOR/epicor-f�r-fertigung.aspx");
            routes.MapPageRoute("epicor--f�r--fertigung", "L�sungen/erp-enterprise-solutions-und-services/epicor/epicor-for-fertigung", "~/L�sungen/EnterpriseSolutionsUndServices/EPICOR/epicor-f�r-fertigung.aspx");
            routes.MapPageRoute("epicor-f�r-die-Bauindustrie", "L�sungen/erp-enterprise-solutions-und-services/epicor/epicor-f�r-die-Bauindustrie", "~/L�sungen/EnterpriseSolutionsUndServices/EPICOR/Epicor-f�r-die-Bauindustrie.aspx");
            routes.MapPageRoute("epicor-hcm", "L�sungen/erp-enterprise-solutions-und-services/epicor/epicor-hcm", "~/L�sungen/EnterpriseSolutionsUndServices/EPICOR/Epicor-hcm.aspx");
            routes.MapPageRoute("bi", "L�sungen/erp-enterprise-solutions-und-services/epicor/bi", "~/L�sungen/EnterpriseSolutionsUndServices/EPICOR/ERP-BI.aspx");

            routes.MapPageRoute("partner-enablement-programm", "L�sungen/erp-enterprise-solutions-und-services/epicor/partner-enablement-program", "~/L�sungen/EnterpriseSolutionsUndServices/EPICOR/Epicor-PartnerEnablementProgram.aspx");
            routes.MapPageRoute("epicor-Implementierungs-und-Unterst�tzungsLeistungen", "L�sungen/erp-enterprise-solutions-und-services/epicor/epicor-Implementierungs-und-Unterst�tzungsLeistungen", "~/L�sungen/EnterpriseSolutionsUndServices/EPICOR/Epicor_ImplementierungsundUnterst�tzungsLeistungen.aspx");
            routes.MapPageRoute("epicor-Dienstleistungen-f�r-epicor", "L�sungen/erp-enterprise-solutions-and-services/epicor/epicor-Dienstleistungen-f�r-epicor", "~/L�sungen/EnterpriseSolutionsUndServices/EPICOR/Epicor-Dienstleistungenf�rEpicor.aspx");
            routes.MapPageRoute("Epicor-VorkonfigurierteL�sung", "L�sungen/erp-Enterprise-Solutions-Und-Services/epicor/Epicor-Vorkonfigurierte-L�sungen", "~/L�sungen/EnterpriseSolutionsUndServices/EPICOR/PreconfiguredSolutions/EpicorVorkonfigurierteL�sung.aspx");
            routes.MapPageRoute("VorkonfigurierteL�sung-epicpay", "L�sungen/erp-Enterprise-Solutions-Und-Services/epicor/Epicor-Vorkonfigurierte-L�sungen/epicPay", "~/L�sungen/EnterpriseSolutionsUndServices/EPICOR/PreconfiguredSolutions/EpicPay.aspx");


            routes.MapPageRoute("microsoft-technologien", "L�sungen/it-services-und-L�sungen/microsoft-technologien", "~/L�sungen/ITServicesUndL�sungen/MicrosoftTechnologien/MicrosoftTechnologien.aspx");
            routes.MapPageRoute("beratung", "L�sungen/it-services-und-L�sungen/microsoft-technologien/beratung", "~/L�sungen/ITServicesUndL�sungen/MicrosoftTechnologien/Beratung.aspx");
            routes.MapPageRoute("sharepoint", "L�sungen/it-services-und-L�sungen/microsoft-technologien/sharepoint", "~/L�sungen/ITServicesUndL�sungen/MicrosoftTechnologien/Sharepoint.aspx");
            routes.MapPageRoute("microsoft-bi-L�sungen", "L�sungen/it-services-und-L�sungen/microsoft-technologien/microsoft-bi-L�sungen", "~/L�sungen/ITServicesUndL�sungen/MicrosoftTechnologien/EinblickeundAnalysen.aspx");
            routes.MapPageRoute("cloud-und-azure", "L�sungen/it-services-und-L�sungen/microsoft-technologien/cloud-und-azure", "~/L�sungen/ITServicesUndL�sungen/MicrosoftTechnologien/CloudUndAzure.aspx");
            routes.MapPageRoute("Applikationsentwicklungundwartung", "L�sungen/it-services-und-L�sungen/microsoft-technologien/Applikationsentwicklungundwartung", "~/L�sungen/ITServicesUndL�sungen/MicrosoftTechnologien/Applikationsentwicklungundwartung.aspx");
            routes.MapPageRoute("application-maintenance-and-support", "L�sungen/it-services-und-L�sungen/microsoft-technologien/application-maintenance-and-support", "~/L�sungen/ITServicesUndL�sungen/ApplicationMaintenanceAndSupport.aspx");
            routes.MapPageRoute("Testverfahren", "L�sungen/it-services-und-L�sungen/microsoft-technologien/Testverfahren", "~/L�sungen/ITServicesUndL�sungen/Testverfahren.aspx");

            //routes.MapPageRoute("small-businesses", "solutions/focused-solutions/small-businesses", "~/Solutions/FocusedSolutions/SmallBusiness.aspx");
            //routes.MapPageRoute("mid-market-companies", "solutions/focused-solutions/mid-market-companies", "~/Solutions/FocusedSolutions/MidMarketCompanies.aspx");
            //routes.MapPageRoute("enterprise", "solutions/focused-solutions/enterprise", "~/Solutions/FocusedSolutions/Enterprise.aspx");


            routes.MapPageRoute("Whitepapers", "whitePapers/whitepapers", "~/WhitePapers/WhitePapers.aspx");
            routes.MapPageRoute("Brochures", "brochure/brochures", "~/Brochure/Brochure.aspx");
            routes.MapPageRoute("FactSheets", "factsheets/factsheets", "~/FactSheets/FactSheets.aspx");
            routes.MapPageRoute("CaseStudies", "casestudies/CaseStudy", "~/CaseStudies/CaseStudy.aspx");

            routes.MapPageRoute("sitemap", "sitemap", "~/sitemap.aspx");
            routes.MapPageRoute("Nutzungsbedingungen", "nutzungsbedingungen", "~/Nutzungsbedingungen.aspx");
            routes.MapPageRoute("Datenschutzerkl�rung", "datenschutzerkl�rung", "~/Datenschutzerkl�rung.aspx");
            routes.MapPageRoute("Impressum", "impressum", "~/Impressum.aspx");


            routes.MapPageRoute("produkt-technikundentwicklung", "L�sungen/ip-und-produktentwicklung/produkt-technikundentwicklung", "~/L�sungen/IPUndProduktentwicklung/Produkttechnikundentwicklung.aspx");
            routes.MapPageRoute("technologie-support-f�r-produktstartups", "L�sungen/ip-und-produktentwicklung/technologie-support-f�r-produktstartups", "~/L�sungen/IPUndProduktentwicklung/TechnologieSupportf�rProduktStartups.aspx");
            routes.MapPageRoute("opensource-technologien", "L�sungen/ip-und-produktentwicklung/opensource-technologien", "~/L�sungen/IPUndProduktentwicklung/OpenSourceTechnologien.aspx");


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
