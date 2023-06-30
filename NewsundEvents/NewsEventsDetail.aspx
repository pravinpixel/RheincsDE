<%@ Page Title="UnsereGeschichte | RheinBrücke IT Consulting" Language="C#" MasterPageFile="~/Rheincs.Master" AutoEventWireup="true" CodeBehind="NewsEventsDetail.aspx.cs" Inherits="RheinBrucke.NewsundEvents.NewsEventsDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headerPlaceHolder" runat="server">
    <meta name="keywords" content="ERP, Human resources, ERP Software, ERP System, Epicor, Consulting, HR Software, HR solutions, Payroll processing, Payroll, Payroll processing Software, Stevie® Awards, Germany, Company of the year, Bronze,IT Executive of the year, Silver, Premium business awards, Microsoft BI Microsoft Gold Partner SharePoint Consulting SharePoint IT Consulting Services, Clous and Azure, Insights and Analytics, Sandoz pharmaceuticals SAP,Epicor platinum partner, RheinBrücke offices branches India Germany UAE Netherlands USA, TRW Federal Moghul Autoparts, KMU model" />
   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container" id="container-top">
        <div class="row">
             <ul class="breadcrumb bread  hidden-xs hidden-sm">
                 <li><a href="../Home" class="redColor">Home <span> » </span> </a></li>
                
                 <li><a href="../news-events" class="redColor">Unsere Geschichte <span> » </span> </a></li>
                 <li><a href="#" class="redColor"><%=NewsEventsTitle %></a></li>
             </ul>
         </div>
        <div class="row">

            <div class="bg-img-stevie img-responsive ">

                <h2 class="rhein-banner-heading-h2 inner-banner-text1 img-bottom">RheinBrücke</h2>
                <p class="rhein-banner-heading-p inner-banner-text1 ">Die aktuellen Neuigkeiten und Events von RheinBrücke geben Ihnen einen Einblick in die neuesten Entwicklungen unseres Unternehmens.</p>
            </div>
        </div>
        <div class="wrappernew main-container">
            <h1 class="redColor"><%=NewsEventsTitle %></h1>
            <p><b>
                 <%= NewsEventDate %></b>
           </p>
           
            <div id="NewsImage" runat="server" style="display:none">
            <img src="<%=rootpath %>Assets/images/NewsEvents/Image/<%= NewsImageDetails %>" class="img-responsive center-block" alt="RheinBrücke Management Team getting the Stevie Award for Company of the year and Vetri Selvan awarded IT Executive of the year" />
            </div>
            <p><%= NewsEventDetail %></p>
        </div>
    </div>
</asp:Content>
