<%@ Page Title="UnsereGeschichte | RheinBrücke IT Consulting" Language="C#" MasterPageFile="~/Rheincs.Master" AutoEventWireup="true" CodeBehind="NewsUndEvents.aspx.cs" Inherits="RheinBrucke.NewsundEvents.NewsUndEvents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headerPlaceHolder" runat="server">
    <meta name="keywords" content="RheinBrücke Newsroom, Newsroom, RheinBrücke News, RheinBrücke Events, Events, RheinBrücke News and Events, News and Events." />
    <meta name="Description" content="The latest in news and events from RheinBrücke, giving you insights on the recent developments in our organization." />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" id="container-top">
        <div class="row">
             <ul class="breadcrumb bread  hidden-xs hidden-sm">
                 <li><a href="<%= rootpath%>" class="redColor">Home <span> » </span> </a></li>
                
                 <li><a href="#" class="redColor">Unsere Geschichte</a></li>
             </ul>
         </div>
        <div class="row">

            <div class="bg-img-stevie img-responsive ">

                <h2 class="rhein-banner-heading-h2 inner-banner-text1 img-bottom">RheinBrücke</h2>
                <p class="rhein-banner-heading-p inner-banner-text1">Die aktuellen Neuigkeiten und Events von RheinBrücke geben Ihnen einen Einblick in die neuesten Entwicklungen unseres Unternehmens.</p>
            </div>
        </div>


        <div class="wrappernew main-container">
            <h1 class="redColor">Unsere Geschichte</h1>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="wpb_row vc_row-fluid bg-news">
                <div class="vc_span12 wpb_column column_container">
                    <div class="wpb_wrapper">
                        <asp:Repeater ID="rptNewsEvents" runat="server">
                            <ItemTemplate>
                                <div class="mpcth-vc-row-wrap ">
                                    <div class="wpb_row vc_row-fluid">


                                        <div class="vc_span6 news-events-right wpb_column column_container">
                                            <div class="wpb_wrapper">

                                                <div class=" bg-news-arrow-right">
                                                    <div class="wpb_wrapper">
                                                        <div class="news-events-mobile bg-news-right-box">
                                                            <div style="border-bottom: 1px solid #d5d5d5; padding-bottom: 10px;">
                                                                <%#  GetThumbnail(Eval("ThumbnailImage").ToString(),Eval("ThumbnailPositionLeft").ToString(),Eval("Title").ToString()) %>
                                                             
                                                                 <br />
                                                               <%# string.Format("{0:MMM, yyyy}", Eval("NewsEventsDate"))%>
                                                            </div>
                                                            <div style="padding-top: 10px;">
                                                                <a style="color: #2f2f2f;" href="<%=rootpath %>unsere-geschichte/<%# Eval("UrlDetails") %>">
                                                                    <img style="margin-right: 15px;" src="<%=rootpath %>Assets/images/readmore.png" alt="RheinCS">Weiter lesen &gt;</a>
                                                            </div>
                                                        </div>
                                                       
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                            <AlternatingItemTemplate>
                                <div class="mpcth-vc-row-wrap">
                                    <div class="wpb_row vc_row-fluid">
                                        <div class="vc_span6 news-events-left wpb_column column_container">
                                            <div class="wpb_wrapper">

                                                <div class=" bg-news-arrow-left">
                                                    <div class="wpb_wrapper">
                                                        <div class="news-events-mobile bg-news-right-inner">
                                                            <div style="border-bottom: 1px solid #d5d5d5; padding-bottom: 10px;">
                                                                  <%#  GetThumbnail(Eval("ThumbnailImage").ToString(),Eval("ThumbnailPositionLeft").ToString(),Eval("Title").ToString()) %>
                                                                                                                          
                                                                    <br />
                                                                   <%# string.Format("{0:MMM, yyyy}", Eval("NewsEventsDate"))%>
                                                              
                                                            </div>
                                                            <div style="padding-top: 10px;">
                                                                <a class="ETnews" style="color: #2f2f2f;" href="<%=rootpath %>unsere-geschichte/<%# Eval("UrlDetails") %>">
                                                                    <img style="margin-right: 15px;" src="<%=rootpath %>Assets/images/readmore.png" alt="RheinCS">Weiter lesen &gt;</a>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                                
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="wpb_wrapper">
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                            </AlternatingItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>

            <div class="wpb_row vc_row-fluid bg-news">
                <div class="vc_span12 wpb_column column_container">
                    <div class="wpb_wrapper">

                        <div class="mpcth-vc-row-wrap">
                            <div class="wpb_row vc_row-fluid">
                                <div class="vc_span6 news-events-left wpb_column column_container">
                                    <div class="wpb_wrapper">

                                        <div class="wpb_text_column wpb_content_element  news-events-left-content-1">
                                            <div class="wpb_wrapper">
                                                <div class="" style="">
                                                    <div style="/* border-bottom: 1px solid #d5d5d5; */ /* padding-bottom: 10px; */">

                                                        <div style="clear: both;"></div>
                                                    </div>

                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="wpb_wrapper">
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

          
        </div>
    </div>
    <div class="clearfix">&nbsp;</div>
    <div class="clearfix">&nbsp;</div>
</asp:Content>
