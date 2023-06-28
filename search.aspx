<%@ Page Title="" Language="C#" MasterPageFile="~/Rheincs.Master" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="RheinBrucke.search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headerPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="container" id="container-top">

  
           <div class="row">
             <ul class="breadcrumb bread hidden-xs hidden-sm">
                 <li><a href="Home.aspx" class="redColor">Home <span> » </span></a></li>
                 <li ><a href="#" class="redColor">Search Results</a></li>
             </ul>
         </div>
        <div class="wrappernew main-container">
            <div class="col-md-12">
            <h5 class="deco-header">
                <span class="redBottom">Search Results</span></h5></div>
        </div>
    </div>
    <div class="container">
        <div class="row">
              <div class="clearfix">&nbsp;</div>
        <div class="col-md-12">
        <script>
  (function() {
    var cx = '001712940551840695213:oocirwh-34u';
    var gcse = document.createElement('script');
    gcse.type = 'text/javascript';
    gcse.async = true;
    gcse.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') +
        '//cse.google.com/cse.js?cx=' + cx;
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(gcse, s);
  })();
</script>
<gcse:searchresults-only></gcse:searchresults-only>
        </div>
            <div class="clearfix">&nbsp;</div>
        </div>
    </div>
    <div class="clearfix">&nbsp;</div>
    <div class="clearfix">&nbsp;</div>
</asp:Content>
