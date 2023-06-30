<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="RheinBrucke.Admin.AdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headerPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="row">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                    
                </ol>
                <div class="carousel-inner" role="listbox"> 
                    <div class="item active">
                        <img src="Assets/images/banner-2.jpg" alt="Home-Banner" class="img-responsive" /><div class="container">
                            <div class="carousel-caption rhein-caption-text">
                                <div class="rhein-banner-heading-bg pull-right"><span class="rhein-banner-heading">Welcome Admin</span></div>
                                <div class="rhein-banner-heading-black-bg pull-right"><span class="rhein-banner-heading-black">Choose the menu to manage News and Events</span></div>
                                
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <img src="Assets/images/banner-3.jpg" alt="Home-Banner" class="img-responsive" /><div class="container">
                            <div class="carousel-caption rhein-caption-text">
                                <div class="rhein-banner-heading-bg pull-right"><span class="rhein-banner-heading">Welcome Admin</span></div>
                                <div class="rhein-banner-heading-black-bg pull-right"><span class="rhein-banner-heading-black">Choose the menu to manage Job Posts</span></div>
                               
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <img src="Assets/images/banner-4.jpg" alt="Home-Banner" class="img-responsive" /><div class="container">
                            <div class="carousel-caption rhein-caption-text">
                                <img src="Assets/images/ms-gold-silver-logo.jpg" class="banner-ms-logo img-responsive hidden-xs" alt="gold-silver-logo" /><div class="rhein-banner-heading-bg pull-right"><span class="rhein-banner-heading">Welcome Admin</span></div>
                                <div class="rhein-banner-heading-black-bg pull-right"><span class="rhein-banner-heading-black">Choose the menu to view the list of News and Events and Job Posts</span></div>
                               
                            </div>
                        </div>
                    </div>
                    
                </div>
                <%-- <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"><span aria-hidden="true"></span><span class="sr-only">Previous</span></a><a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"><span aria-hidden="true"></span><span class="sr-only">Next</span></a>--%>
            </div>
            <div class="clearfix">&nbsp; </div>
        </div>
         </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterScript" runat="server">
</asp:Content>
