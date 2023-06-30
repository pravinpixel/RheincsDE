<%@ Page Title="NewsUndEvents | RheinBrücke IT Consulting" Language="C#" MasterPageFile="~/Rheincs.Master" AutoEventWireup="true" CodeBehind="News-Und-Events.aspx.cs" Inherits="RheinBrucke.NewsundEvents.News_Und_Events" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headerPlaceHolder" runat="server">
    <meta name="keywords" content="RheinBrücke Newsroom, Newsroom, RheinBrücke News, RheinBrücke Events, Events, RheinBrücke News and Events, News and Events." />
    <meta name="Description" content="The latest in news and events from RheinBrücke, giving you insights on the recent developments in our organization." />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .news-container-pad-left
        {
            padding-left:30px;
        }
         .customh1 {
    font-size: 20px !important;
    color: #fff;
    font-weight: bold;
}
        @media (min-width: 1200px) {
.rhein-manufacturing-banner-heading-black-bg {
    background: #000;
    opacity: .8;
    width: 450px;
    height: auto;
    position: absolute;
    top: 23%;
    right: 12%;
    padding: 10px!important;
}}
        @media (max-width: 991px) and (min-width: 768px){
.rhein-manufacturing-banner-heading-black-bg {
    background: #000;
    opacity: .8;
    width: 380px;
    height: auto;
    position: absolute;
    top: 21%;
    right: 1%;
    padding: 10px!important;
}}
        @media (max-width: 767px){
.rhein-manufacturing-banner-heading-black-bg {
    background: #000;
    opacity: .8;
    width: 380px;
    height: auto;
    top: 21%;
    right: 1%;
    border-width: 0;
    padding: 10px!important;
}}
        @media (max-width: 480px) {
            .rhein-manufacturing-banner-heading-black-bg {
                background: #000;
                opacity: .8;
                width: 380px;
                height: auto;
                top: 10%;
                right: 1%;
                border-width: 0;
                padding: 10px !important;
            }
        }
    </style>
      <div class="container" id="container-top">
        <div class="row">
            <ul class="breadcrumb bread  hidden-xs hidden-sm">
                <li><a href="<%= rootpath%>" class="redColor">Home <span>» </span></a></li>
                <li class="redColor">News & Events</li>
            </ul>
        </div>
       <%-- <div class="row">
            <div class="bg-img-stevie img-responsive ">
                <h2 class="rhein-banner-heading-h2 inner-banner-text1 img-bottom">RheinBrücke</h2>
                <p class="rhein-banner-heading-p inner-banner-text1">The latest in news and events from RheinBrücke, giving you insights on the recent developments in our organization.</p>
            </div>
        </div>--%>
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
                </ol>
                <div class="carousel-inner" role="listbox">  
                    <asp:Repeater ID="rptBannerNewsEvents" runat="server" >  
                    <ItemTemplate>                
                    <div class="item <%# Container.ItemIndex == 0 ? "active":"" %>">
                      <a style="color: #2f2f2f;" href="<%=rootpath %>news-und-events/<%# Eval("UrlDetails") %>">  <%#  GetNewsBannerimage(Eval("BannerImage").ToString()) %></a>
                        <%--<img src="../../../Assets/LandingRheincs/Images/banner1.jpg" alt="Epicor ERP addresses the unique challenges of manufacturing industry." class="img-responsive" />--%>
                     <a style="color: #2f2f2f;" href="<%=rootpath %>news-und-events/<%# Eval("UrlDetails") %>">    
                         <div class="container">
                            <div class="carousel-caption rhein-caption-text">                                
                                <div class="rhein-manufacturing-banner-heading-black-bg pull-right">
                                    <h1 class="customh1"><%#  GetImage(Eval("Title").ToString()) %></h1>
                                    <span class="rhein-banner-heading-black"><%#  GetDescription(Eval("Description").ToString()) %></span>
                                </div>                               
                            </div>
                        </div>
                         </a>
                    </div>
                        </ItemTemplate>
                        </asp:Repeater>                   
                </div>               
            </div>
               </div>
         </div>
          <!-- Slider Ends here-->  
        <div class="wrappernew main-container">
            <h1 class="redColor">News & Events</h1>
        </div>   
    <div class="container news-container-pad-left">
        <div class="row">
            <div class="wpb_row vc_row-fluid bg-news">
                <div class="vc_span12 wpb_column column_container">
                    <div class="wpb_wrapper">
                        <asp:Repeater ID="rptNewsEvents" runat="server">  
                    <ItemTemplate>                     
                        <div class="col-md-4 col-xs-12 col-sm-6 success-padding-left" style="height:300px; margin-bottom:30px;">                          
                            <p style="height:55px; margin-top:30px; font-size:16px; color: #7b1315; font-weight: bold; width: 100%; float: left;"> <%#  GetImage(Eval("Title").ToString()) %></p> 
                            <br />
                            <%#  GetNewsimage(Eval("NewsImage").ToString()) %>
                            <p class="success-text1" style="color: #000; width: 100%; float: left;">
                              <%#  GetDescription(Eval("Description").ToString()) %>
                            </p>
                            <a style="color: #2f2f2f;" href="<%=rootpath %>news-und-events/<%# Eval("UrlDetails") %>"> <p style="font-size:14px; color:#ff0000; margin-top:20px;">Read More</p> </a>                          
                        </div>                         
                    </ItemTemplate>                        
                </asp:Repeater>                       
                    </div>                   
                </div>              
            </div>           
        </div>      
    </div>
    <div class="clearfix">&nbsp;</div>
    <div class="clearfix">&nbsp;</div>
</asp:Content>
