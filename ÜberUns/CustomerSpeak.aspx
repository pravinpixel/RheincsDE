<%@ Page Title="" Language="C#" MasterPageFile="~/Rheincs.Master" AutoEventWireup="true" CodeBehind="CustomerSpeak.aspx.cs" Inherits="RheinBrucke.ÜberUns.CustomerSpeak" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headerPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
               .testimonial-img, .testimonial-img1 {
    margin-right: 10px;
    float: left;
    opacity: .7;
}

.ld-mag2 {
    margin-left: -26px;
}

.img-circle1 {
    border-radius: 50%;
    border: 2px solid #7b1315!important;
}
.deco-header2 {
    border-bottom: 1px solid #eee;
    line-height: 15px;
}
.redBottom1 {
    border-bottom: 2px solid transparent;
    padding-bottom: 1.001em;
    margin-bottom: -1px;
    border-color: #7b1315!important;
    font-weight: 400;
    font-size: 12px;
    font-family: sans-serif;
    color: #2f2f2f;
    padding-top: 14px;
}
.modal-content {
    position: relative;
    border: 5px solid #632424;
    background-color: #fff;
    background-clip: padding-box;
    border-radius: 6px;
    outline: 0;
    -webkit-box-shadow: 0 3px 9px rgba(0,0,0,.5);
    box-shadow: 0 3px 9px rgba(0,0,0,.5);
}

.modal-header1 {
    min-height: 348px;
}

.modal-header, .modal-header1 {
    border-bottom: 1px solid #e5e5e5;
    padding: 15px;
}
button.close {
    -webkit-appearance: none;
    padding: 0;
    cursor: pointer;
    background: 0;
    border: 0;
}

.redColor {
    color: #7b1315 !important;
}

.close-popup {
        color: #7b1315 !important;
    margin-top: 2px !important;
    margin-right: 3px !important;
    opacity: 1 !important;
   
}
.close {
    float: right;
    font-size: 21px;
    font-weight: 700;
    line-height: 1;
    color: #000;
    text-shadow: 0 1px 0 #fff;
    filter: alpha(opacity=20);
    opacity: .2;
}
@media (max-width: 1199px) and (min-width: 992px)
{
.redBottom1 {
    border-bottom: 2px solid transparent;
    padding-bottom: 1.001em;
    margin-bottom: -1px;
    border-color: #7b1315!important;
    font-weight: 400;
    font-size: 12px;
    font-family: sans-serif;
    color: #2f2f2f;
    padding-top: 14px;
    padding-left: 10px;
}
}
@media (max-width: 991px) and (min-width: 768px)
{
.redBottom1 {
    border-bottom: 2px solid transparent;
    padding-bottom: 1.001em;
    margin-bottom: -1px;
    border-color: #7b1315!important;
    font-weight: 400;
    font-size: 13px;
    font-family: sans-serif;
    color: #2f2f2f;
}
.deco-header2 {
    border-bottom: none;
    line-height: 16px;
    padding-left: 63px;
}
.marg-10 {
    margin-bottom: 40px;
}
}
@media (max-width: 767px) and (min-width: 640px)
{
.redBottom1 {
    border-bottom: 2px solid transparent;
    padding-bottom: 1.001em;
    margin-bottom: -1px;
    border-color: #7b1315!important;
    font-weight: 400;
    font-size: 13px;
    font-family: sans-serif;
    color: #2f2f2f;
}

.deco-header2 {
    border-bottom: none;
    line-height: 16px;
    padding-left: 63px;

}
.marg-10 {
    margin-bottom: 40px;
}
}
@media (max-width: 639px) and (min-width: 480px)
{
.redBottom1 {
    border-bottom: 2px solid transparent;
    padding-bottom: 1.001em;
    margin-bottom: -1px;
    border-color: #7b1315!important;
    font-weight: 400;
    font-size: 16px;
    font-family: sans-serif;
    color: #2f2f2f;
    padding-top: 24px;
}
.deco-header2 {
    border-bottom: 1px solid #eee;
    line-height: 18px;
}
.marg-10 {
    margin-bottom: 40px;
}
}
    </style>
      <div class="containter" id="container-top">
        <div class="row">
            <div class="col-md-12">
                <ul class="breadcrumb bread hidden-xs hidden-sm">
                    <li><a href="<%=rootpath %>" class="redColor">Home <span>» </span></a></li>
                    <li><a href="#" class="redColor">ÜberUns<span> »</span></a></li>
                    <li><a href="#" class="redColor">Kundenreferenzen</a></li>
                </ul>
                <div class="bg-img3 img-responsive">
                    <h2 class="rhein-banner-heading-h2 inner-banner-text1 img-bottom">RheinBrücke</h2>
                    <p class="rhein-banner-heading-p inner-banner-text1 ">
                        We are constantly striving to deliver more value than our client’s expectations and this is reflected in what our customers are saying about us
                    </p>
                </div>
                <div class="col-md-12 padd-top-20">
                    <h1 class="redColor">Kundenreferenzen</h1>
                </div>

                <div class="main-container">
                    <div class="col-md-12  padd-top-40">
                        <!--Massimiliano customer reference -->
                        <div class="col-md-4 marg-10">
                            <div class="col-md-2">
                                <img class="testimonial-img1 img-circle1 ld-mag2" src="/Assets/images/Testimonial/Milani.png" alt="Testimonial by Milani" style="margin-right: 10px; width: 80px; height: 80px;" />
                            </div>
                            <div class="col-md-10 ">
                                <div class="deco-header2">
                                    <p class="redBottom1"><span class="bgcol1">Massimiliano A. Milani |</span> <span class="redColor">Product & Pricing Director Europe & Africa at Federal Mogul Corporation Antwerp, Belgium </span></p>
                                </div>
                            </div>
                            <div class="row col-md-12 padd-top-20">
                                <p class="ldr-marg text-justify">„Vielen Dank für die andauernd gute Arbeit am ERP und Supply Chain Projekt. Ihre Beratung, technische, funktionale und Projektmanagement .........<a data-toggle="modal" data-target="#myModal-Massimiliano">&nbsp&nbsp View more</a></p>
                            </div>
                        </div>
                        <!--EOF Massimiliano customer reference -->

                        <!-- Craig customer reference -->
                        <div class="col-md-4 marg-10 ">
                            <div class="col-md-2">
                                <img class="testimonial-img1 img-circle1 ld-mag2" src="/Assets/images/Testimonial/craig.gif" alt="Testimonial by Craig Stephens" style="margin-right: 10px; width: 80px; height: 80px;" />
                            </div>
                            <div class="col-md-10 ">
                                <div class="deco-header2">
                                    <p class="redBottom1 height">
                                        <span class="bgcol1">Craig Stephens |</span> <span class="redColor">Vice President-International Consulting at Epicor Software </span>
                                        <br />
                                        <br />
                                    </p>
                                </div>
                            </div>
                            <div class="row col-md-12 padd-top-20">
                                <p class="ldr-marg text-justify">Seit einiger Zeit setze ich das Team von RheinBrücke als meinen verlängerten Arm für Beratungsleistungen ein und habe ihre umfassenden .........<a data-toggle="modal" data-target="#myModal-Craig">&nbsp&nbsp View more</a></p>
                            </div>
                        </div>
                        <!--EOF Craig customer reference -->

                        <!-- Rizwanulla customer reference -->
                        <div class="col-md-4 marg-10 height">
                            <div class="col-md-2">
                                <img class="testimonial-img1 img-circle1 ld-mag2" src="/Assets/images/Testimonial/Rizwanulla-Khan.png" alt="Testimonial by Rizwanulla Khan" style="margin-right: 10px; width: 80px; height: 80px;" />
                            </div>
                            <div class="col-md-10 ">
                                <div class="deco-header2">
                                    <p class="redBottom1 height"  style="padding-bottom: 25px !important;">
                                        <span class="bgcol1">Rizwanulla Khan |</span> <span class="redColor">Executive President at Emirates Glass, Saudi American Glass & Lumi Glass </span>
                                    </p>
                                </div>
                            </div>
                            <div class="row col-md-12 padd-top-20">
                                <p class="ldr-marg text-justify">Wir haben Epicor ERP in einer unserer groβen Glasproduktionsanlagen im Nahen Osten implementiert. Obwohl das Produkt gut war, hatten .........<a data-toggle="modal" data-target="#myModal-Rizwanulla">&nbsp&nbsp View more</a></p>

                            </div>
                        </div>
                        <!--EOF Rizwanulla customer reference -->

                    </div>

                    <div class="col-md-12 marg20 padd-top-40">
                        <!-- Syed customer reference -->
                        <div class="col-md-4 marg-10">
                            <div class="col-md-2">
                                <img class="testimonial-img1 img-circle1 ld-mag2" src="/Assets/images/Testimonial/wajid.png" alt="Testimonial by Syed Waseem Wajid" style="margin-right: 10px; width: 80px; height: 80px;" />
                            </div>
                            <div class="col-md-10 ">
                                <div class="deco-header2">
                                    <p class="redBottom1 height" style="padding-bottom: 25px !important;">
                                        <span class="bgcol1">Syed Waseem Wajid |</span>
                                        <span class="redColor">IT HEAD at Global Glass Manufacturer | KSA, Middle East </span>
                                    </p>
                                </div>
                            </div>
                            <div class="row col-md-12 padd-top-20">
                                <p class="ldr-marg text-justify">„Wir waren sehr beeindruckt, wie RheinBrücke ihre Arbeit erfüllt hat. Von der Prozessanalys über die Einführung bis hin zur Unterstützung nach dem Go-Live .........<a data-toggle="modal" data-target="#myModal-Syed">&nbsp&nbsp View more</a></p>
                            </div>
                        </div>
                        <!-- EOF Syed customer reference -->

                        <!-- Vinit customer reference -->
                        <div class="col-md-4 marg-10">
                            <div class="col-md-2">
                                <img class="testimonial-img1 img-circle1 ld-mag2" src="/Assets/images/Testimonial/vinit_agarwal.gif" alt="Testimonial by Vinit Agarwal" style="margin-right: 10px; width: 80px; height: 80px;" />
                            </div>
                            <div class="col-md-10 ">
                                <div class="deco-header2 deco-header3">
                                    <p class="redBottom1 height" style="padding-bottom: 25px !important;">
                                        <span class="bgcol1">Vinit Agarwal |</span> <span class="redColor">CEO at RAY International, Sultanate of  Oman</span>
                                        <br /><br />
                                    </p>
                                </div>
                            </div>
                            <div class="row col-md-12 padd-top-20">
                                <p class="ldr-marg text-justify">Wegen steigender Herausforderungen begaben wir uns auf die Suche nach einer passenden ERP-Sftware. Nach einer Vielzahl von .........<a data-toggle="modal" data-target="#myModal-Vinit">&nbsp&nbsp View more</a></p>
                            </div>
                        </div>
                        <!-- EOF Vinit customer reference -->

                        <!-- Kiranjit customer reference -->
                        <div class="col-md-4 marg-10">
                            <div class="col-md-2">
                                <img class="testimonial-img1 img-circle1 ld-mag2" src="/Assets/images/Testimonial/kiran.gif" alt="Testimonial by Kiranjit Kaur" style="margin-right: 10px; width: 80px; height: 80px;" />
                            </div>
                            <div class="col-md-10 ">
                                <div class="deco-header2">
                                    <p class="redBottom1 height" style="padding-bottom: 25px !important;">
                                        <span class="bgcol1">Kiranjit Kaur |</span>
                                        <span class="redColor">Finance Manager at NGC Companies Malaysia & Oman </span>
                                        <br /><br />
                                    </p>
                                </div>
                            </div>
                            <div class="row col-md-12 padd-top-20">
                                <p class="ldr-marg text-justify">NGC Energy’s EPICOR Go-Live-Implementierung erfolgte Anfang Januar und wir schlossen das Finanzjahr schließlich erfolgreich mit Hilfe .........<a data-toggle="modal" data-target="#myModal-Kiranjit">&nbsp&nbsp View more</a></p>
                            </div>
                        </div>
                        <!-- EOF Kiranjit customer reference -->

                    </div>

                </div>

                <!--customer video-->
                <div class="col-md-12 bgcol text-center  paddingGreycontainer">

                    <div class="col-md-3">
                        <p class="contentSmall padd-top-20"><span class="video-thumbnail"><b>RheinBrücke – Customer Reference by Harry Hezel</b> </span></p>
                        <br />
                        <a href="#" data-toggle="modal" data-target="#homeModalVideo" data-videoid="C6sDlZCKIA4" data-videosite="youtube">
                            <img src="../Assets/images/youtube/3.jpg" class=" ETvideo testimonial-wi" alt="Reference by Harry Hezel" /><div class="thumb_play1">
                                <img src="../Assets/images/play.png" class="wpvl_playbutton" alt="Play Button" />
                            </div>
                        </a>
                        <br />
                        <p class="contentSmall padding-top-10">Managing Director</p>
                        <p class="contentSmall padding-top-10">LOPREX GmbH</p>
                    </div>
                    <div class="col-md-3">
                        <p class="contentSmall padd-top-20"><span class="video-thumbnail"><b>RheinBrücke – Customer Reference by Dr.Martin Peters</b> </span></p>
                        <br />
                        <a href="#" data-toggle="modal" data-target="#homeModalVideo" data-videoid="B-XFRUeSlUs" data-videosite="youtube">
                            <img src="../Assets/images/youtube/4.jpg" class=" ETvideo testimonial-wi" alt="Reference by Martin Peters" /><div class="thumb_play1">
                                <img src="../Assets/images/play.png" class="wpvl_playbutton" alt="Play Button" />
                            </div>
                        </a>
                        <p class="contentSmall padding-top-10">Head of Mktg Product Development</p>
                        <p class="contentSmall padding-top-10">Co-Founder</p>
                    </div>

                    <div class="col-md-3">
                        <p class="contentSmall padd-top-20"><span class="video-thumbnail"><b>RheinBrücke – Customer Reference by Dr.Rudolf Schrettl</b> </span></p>
                        <br />
                        <a href="#" data-toggle="modal" data-target="#homeModalVideo" data-videoid="yvtX2yqWxVg" data-videosite="youtube">
                            <img src="../Assets/images/youtube/5.jpg" class="ETvideo testimonial-wi" alt="Reference by Dr. Schrettl" /><div class="thumb_play1">
                                <img src="../Assets/images/play.png" class="wpvl_playbutton" alt="Play Button" />
                            </div>
                        </a>

                        <p class="contentSmall padding-top-10">Managing Director</p>
                        <p class="contentSmall padding-top-10">ILF GmbH</p>
                    </div>
                    <div class="col-md-3">
                        <p class="contentSmall padd-top-20"><span class="video-thumbnail"><b>RheinBrücke – Customer Reference by Greg Bryan</b></span></p>
                        <br />
                        <a href="#" data-toggle="modal" data-target="#homeModalVideo" data-videoid="MmXOpBXQdZM" data-videosite="youtube">
                            <img src="../Assets/images/youtube/2.jpg" class="ETvideo testimonial-wi" alt="Reference by Greg Bryan" /><div class="thumb_play1">
                                <img src="../Assets/images/play.png" class="wpvl_playbutton" alt="Play Button" />
                            </div>
                        </a>
                        <p class="contentSmall padding-top-10">MD & General Manager</p>
                        <p class="contentSmall padding-top-10">Amazon</p>
                    </div>
                </div>

                <!--EOF customer video-->

                <%--       <asp:Repeater ID="VideosRepeater" runat="server">
   <ItemTemplate>
      <%# Eval("Title") %> <br />
      <object width="427" height="258">
           <param name="movie" value="http://www.youtube.com/v/
		<%# Eval("VideoId") %>"></param>
           <param name="allowFullScreen" value="true"></param>
           <param name="allowscriptaccess" value="always"></param>
           <param name="wmode" value="opaque"></param>
           <embed src="http://www.youtube.com/v/<%# Eval("VideoId") %>?" type="application/x-shockwave-flash" width="427" height="258" allowscriptaccess="always" allowfullscreen="true" wmode="opaque"></embed>
         </object>
   </ItemTemplate>
   <SeparatorTemplate>
     <br />
   </SeparatorTemplate>
   </asp:Repeater>--%>



                <%--  <div class="main-container">
     <div class="col-md-12 text-center">
            <div class="col-md-6">
                 <p class="contentSmall padd-top-20"><span class="video-thumbnail"><b>RheinBrücke – Customer Reference by Harry Hezel</b> </span></p><br />
                   <a href="#" data-toggle="modal" data-target="#homeModalVideo" data-videoid="C6sDlZCKIA4" data-videosite="youtube">
                            <img src="Assets/images/youtube/3.jpg" class=" ETvideo testimonial-wi" alt="Reference by Harry Hezel" ;" /><div class="thumb_play1">
                                <img src="Assets/images/play.png" class="wpvl_playbutton" alt="Play Button" /></div>
                        </a>
                        <br />
 <p class="contentSmall padding-top-10">Managing Director</p>
 <p class="contentSmall padding-top-10">LOPREX GmbH</p>
            </div>
              <div class="col-md-6">
                     <p class="contentSmall padd-top-20"><span class="video-thumbnail"><b>RheinBrücke – Customer Reference by Dr.Martin Peters</b> </span></p><br />
                        <a href="#" data-toggle="modal" data-target="#homeModalVideo" data-videoid="B-XFRUeSlUs" data-videosite="youtube">
                            <img src="Assets/images/youtube/4.jpg" class=" ETvideo testimonial-wi" alt="Reference by Martin Peters"/><div class="thumb_play1">
                                <img src="Assets/images/play.png" class="wpvl_playbutton" alt="Play Button" /></div>
                        </a>
 <p class="contentSmall padding-top-10">Head of Mktg Product Development</p> 
 <p class="contentSmall padding-top-10">Co-Founder</p>
 </div>
                      </div>
              <div class="col-md-12 text-center">
            <div class="col-md-6">
            <p class="contentSmall padd-top-20"><span class="video-thumbnail"><b>RheinBrücke – Customer Reference by Dr.Rudolf Schrettl</b> </span></p><br />
                  <a href="#" data-toggle="modal" data-target="#homeModalVideo" data-videoid="yvtX2yqWxVg" data-videosite="youtube">
                            <img src="Assets/images/youtube/5.jpg" class="ETvideo testimonial-wi" alt="Reference by Dr. Schrettl"/><div class="thumb_play1">
                                <img src="Assets/images/play.png" class="wpvl_playbutton" alt="Play Button" /></div>
                        </a>
                    
 <p class="contentSmall padding-top-10">Managing Director</p>
 <p class="contentSmall padding-top-10">LOPREX GmbH</p>
            </div>
              <div class="col-md-6">
                  <p class="contentSmall padd-top-20"><span class="video-thumbnail"><b>RheinBrücke – Customer Reference by Greg Bryan</b></span></p><br />
               <a href="#" data-toggle="modal" data-target="#homeModalVideo" data-videoid="MmXOpBXQdZM" data-videosite="youtube">
                            <img src="Assets/images/youtube/2.jpg" class="ETvideo testimonial-wi" alt="Reference by Greg Bryan" /><div class="thumb_play1">
                                <img src="Assets/images/play.png" class="wpvl_playbutton" alt="Play Button" /></div>
                        </a>
 <p class="contentSmall padding-top-10">MD& General Manager</p> 
 <p class="contentSmall padding-top-10">Amazon</p>
 </div>
                      </div>

       <div class="col-md-12 text-center padd-top-20">
        <div class="col-md-6">
               <b><p class="text-center">Massimiliano A. Milani<br /><span>Director Europe & Africas at Federal Mogul<br />Antwerp, Belgium</span></p><br /></b>
            <img class="testimonial-img img-circle ld-mag" src="/Assets/images/Testimonial/Milani.png" alt="Testimonial by Milani" style="margin-right: 10px; margin-left:180px; width: 137px; height: 137px;" /><br/><div class="clearfix"></div>
             <br />
               <div class="col-md-10">
                <p class="ldr-marg" style="margin-left:100px">Thank you for the continued good work on the ERP and Supply Chain project. Your Consulting, Technical, Functional and Project management expertise was evident and was very well appreciated by our staffs. I was also pleased with the flexible, easily approachable, transparent dealing with your team. Needless to mention I also appreciate how effectively you leverage the teaming with cross cultural teams with low cost geography for developmental resources while not compromising on the quality of deliverables to business. Keep up the good work.</p>
           
                 </div>
      </div>
                  <div class="col-md-6">
                      <b><p class="text-center">Craig Stephens<br /><span> Vice President-International Consulting at Epicor Software<br />United Kingdom</span></p><br /></b>
                      <img class="testimonial-img img-circle ld-mag" src="/Assets/images/Testimonial/craig.gif" alt="Testimonial by Craig Stephens" style="margin-right: 10px;  margin-left:180px; width: 137px; height: 137px;"/><br/><div class="clearfix"></div>
                      <br />
               <div class="col-md-10">
                <p class="ldr-marg" style="margin-left:100px">I had been using RheinBrücke team as my extended arm for sometime now and I have really come to appreciate their depth of technical and functional knowledge of the product and their commitment to our end customers needs. They react quickly to new challenges and are always there for me to rely on.</p>
           
                 </div>
      </div>
                      </div>
            <div class="col-md-12 text-center padd-top-20">
          
           <div class="col-md-6">
                 <b><p class="text-center"> Rizwanulla Khan<br /><span> Executive President  at Emirates Glass<br />Saudi American & Lumi Glass</span></p><br /></b>
               <img class="testimonial-img img-circle ld-mag" src="/Assets/images/Testimonial/Rizwanulla-Khan.png" alt="Testimonial by Rizwanulla Khan" style="margin-right: 10px; margin-left:180px; width: 137px; height: 137px;" /><br/><div class="clearfix"></div>
          
             <br />
               <div class="col-md-10">
                <p class="ldr-marg" style="margin-left:100px">"We implemented Epicor ERP for one of our large Glass manufacturing facility in Middle East. Like any ERP implementations, even though the product was good , we faced initial hiccup and challenges during the implementation . This is where we came across the German based Rheinbrücke IT consulting and took their support. They did a fantastic turnaround of the project. I enjoyed the transparent and efficient dealing with the company and came to appreciate their work. Now they have opened the Middle East operations and am positive they will do well due to their good service motto.."</p>
                 </div>
      </div>
                  <div class="col-md-6">
                 <b><p class="text-center">Syed Waseem Wajid<br /><span>IT HEAD at Global Glass Manufacturer<br />KSA, Middle East</span></p><br /></b>
                      <img class="testimonial-img img-circle ld-mag" src="/Assets/images/Testimonial/wajid.png" alt="Testimonial by Syed Waseem Wajid" style="margin-right: 10px; margin-left:180px; width: 137px; height: 137px;" /><br/><div class="clearfix"></div>
                   <br />
               <div class="col-md-10">
                <p class="ldr-marg" style="margin-left:100px">"We were very impressed with the way RheinBrücke carried out their work. From analysis to implementation and post-production support, their analysis was always detailed and complete. It was easily understood by users, so different system extension options could be evaluated with all relevant information."</p>
                 </div>
      </div>
                      </div>
            <div class="col-md-12 text-center padd-top-20">
          
           <div class="col-md-6">
                  <p class="text-center"><b>Vinit Agarwal<br /><span>CEO at Vinit Agarwal<br />Antwerp, Belgium</span></b></p><br />
               <img class="testimonial-img img-circle ld-mag" src="/Assets/images/Testimonial/vinit_agarwal.gif" alt="Testimonial by Vinit Agarwal" style="margin-right: 10px; margin-left:180px; width: 137px; height: 137px;" /><br/><div class="clearfix"></div>
              <br />
               <div class="col-md-10">
                <p class="ldr-marg" style="margin-left:100px">"Our challenges made us to embark on our ERP journey and after lots of analysis, we choose Epicor ERP for RAY Group. We also faced initial hiccup and challenges during the implementations. This is where we came across the German based Rheinbrücke IT consulting and took their support. We leveraged their services for past 12 months and from this experience, I can definitely say that they did a fantastic turnaround of the project. I enjoyed the open, transparent and efficient dealing with them and came to appreciate their work. I understand that they recently started their Middle east and Africas operations, I wish them good luck and every success."</p>
               </div>
      </div>
                  <div class="col-md-6">
                 <b> <p class="text-center">Massimiliano A. Milani<br /><span>Director Europe & Africas at Federal Mogul<br />Antwerp, Belgium</span></p><br /></b>
                      <img class="testimonial-img img-circle ld-mag" src="/Assets/images/Testimonial/kiran.gif" alt="Testimonial by Kiranjit Kaur" style="margin-right: 10px; margin-left:180px; width: 137px; height: 137px;" /><br/><div class="clearfix"></div>
                <br />
               <div class="col-md-10">
          <p class="ldr-marg" style="margin-left:100px">NGC Energy’s Epicor Implementation go-live happened earlier this year and at the end of Jan, we had successfully closed our Jan 2015 books in Epicor. This is a big milestone for all of us.It has indeed been a long journey, starting from inception, system study, training, pilot &amp; finally the 1st month-end closing. During each stage, we received full co-operation from Rheinbrücke teams. They had given us their unwavering support, with full dedication &amp; positive attitude to make this project successful. During this entire journey, both teams faced many challenges &amp; at times, things were difficult, but both teams continued to give their focus &amp; commitment, which helped to overcome these obstacles.</p>
                </div>
      </div>
                      </div>
                    </div>
               </div>--%>

                <%--<br /><br /><a href="../CustomerTestimonial.aspx"><img class="testimonial-img img-circle" src="/Assets/images/Testimonial/Milani.png" alt="Testimonial by Milani" style="margin-right: 10px; float: left; width: 66px; height: 67px;" /><p class="testimonial-name">Massimiliano A. Milani<br /><span class="smaller">Director Europe & Africas at Federal Mogul<br />Antwerp, Belgium</span></a></p></li><li>I had been using RheinBrücke team as my extended arm for sometime now and I have really come to appreciate their depth of technical and functional knowledge of the product and their commitment to our end customers needs. They react quickly to new challenges and are always there for me to rely on.--%>


                <%--    </div>--%>

                <%--   <div class="col-md-12">
            <div class="col-md-6 cal-margin1">
 <div class="client-speak-box1 center-block">
       <div class="col-md-6">
                  <p class="contentSmall padd-top-20"><span class="video-thumbnail"><b>RheinBrücke – Customer Reference by Harry Hezel</b> </span>
                            <br />
 <p class="contentSmall padding-top-10">Managing Director</p>
 <p class="contentSmall padding-top-10">LOPREX GmbH</p>

             </div>
                <div class="col-md-6 res-padd ">
                      <div class="video_thumb_box"><a href="#" data-toggle="modal" data-target="#homeModalVideo" data-videoid="C6sDlZCKIA4" data-videosite="youtube">
                            <img src="Assets/images/youtube/3.jpg" class=" ETvideo testimonial-wi" alt="Reference by Harry Hezel" ;" /><div class="thumb_play1">
                                <img src="Assets/images/play.png" class="wpvl_playbutton" alt="Play Button" /></div>
                        </a></div>
                        <br />
                      </div>
                </div>
            </div>
            <div class="col-md-6 ">
 <div class="client-speak-box1 center-block">
       <div class="col-md-6">
                  <p class="contentSmall padd-top-20"><span class="video-thumbnail"><b>RheinBrücke – Customer Reference by Dr.Martin Peters</b> </span>
                            <br />
 <p class="contentSmall padding-top-10">Head of Mktg Product Development</p> 
 <p class="contentSmall padding-top-10">Co-Founder</p>

             </div>
                <div class="col-md-6 res-padd">
   
                     <div class="video_thumb_box"><a href="#" data-toggle="modal" data-target="#homeModalVideo" data-videoid="B-XFRUeSlUs" data-videosite="youtube">
                            <img src="Assets/images/youtube/4.jpg" class=" ETvideo testimonial-wi" alt="Reference by Martin Peters"/><div class="thumb_play1">
                                <img src="Assets/images/play.png" class="wpvl_playbutton" alt="Play Button" /></div>
                        </a></div>
                        <br />
                </div>
                </div>
            </div>
            </div>
        <div class="col-md-12 padd-top-20">
                  <div class="col-md-6 cal-margin1">
 <div class="client-speak-box1 center-block">
       <div class="col-md-6">
                  <p class="contentSmall padd-top-20"><span class="video-thumbnail"><b>RheinBrücke – Customer Reference by Dr.Rudolf Schrettl </b> </span>
                            <br />
 <p class="contentSmall padding-top-10">Managing Director</p>
 <p class="contentSmall padding-top-10">ILF GmbH</p>

             </div>
                <div class="col-md-6 res-padd ">
                           <div class="video_thumb_box"><a href="#" data-toggle="modal" data-target="#homeModalVideo" data-videoid="yvtX2yqWxVg" data-videosite="youtube">
                            <img src="Assets/images/youtube/5.jpg" class="ETvideo testimonial-wi" alt="Reference by Dr. Schrettl"/><div class="thumb_play1">
                                <img src="Assets/images/play.png" class="wpvl_playbutton" alt="Play Button" /></div>
                        </a></div>
                        <br />
                   </div>
                </div>
            </div>
          <div class="col-md-6 call-marg2">
 <div class="client-speak-box res-height ">
       <div class="col-md-8">
                  <p class="testimonial-content" >Thank you for the continued good work on the ERP and Supply Chain project. Your Consulting, Technical, Functional and Project management expertise was evident and was very well appreciated by our staffs. I was also pleased with the flexible, easily approachable, transparent dealing with your team. Needless to mention I also appreciate how effectively you leverage the teaming with cross cultural teams with low cost geography for developmental resources while not compromising on the quality of deliverables to business. Keep up the good work.
                      <br />
                      <b style="font-size:10px">Massimiliano A. Milani,Director Europe &amp; Africas at Federal Mogul,Antwerp,Belgium</b> 
                            </div>
     <div class="col-md-4 nopadding">
            <img class="testimonial-img" src="/Assets/images/Testimonial/Milani.png" alt="Testimonial by Milani" style="width:179px ;height: 189px ;margin-right: 0px !important;"/>
                </div>
                </div>
            </div>
          
        </div>
        <div class="col-md-12 padd-top-20">
              <div class="col-md-6 cal-margin1">
 <div class="client-speak-box res-height1">
       <div class="col-md-8">
                  <p class="testimonial-content padd-top-20" >I had been using RheinBrücke team as my extended arm for sometime now and I have really come to appreciate their depth of technical and functional knowledge of the product and their commitment to our end customers needs. They react quickly to new challenges and are always there for me to rely on.<br /><br /><b style="font-size:10px">Craig Stephens,Vice President-International Consulting at Epicor Software,United Kingdom
                            </div>
     <div class="col-md-4 nopadding">
            <img class="testimonial-img" src="/Assets/images/Testimonial/Craig.gif" alt="Testimonial by Craig Stephens" style="width:179px ;height: 189px ;margin-right: 0px !important;"/>
                </div>
                </div>
            </div>
              <div class="col-md-6 ">
 <div class="client-speak-box res-height">
       <div class="col-md-8">
                  <p class="testimonial-content" >We implemented Epicor ERP for one of our large Glass manufacturing facility in Middle East. Like any ERP implementations, even though the product was good , we faced initial hiccup and challenges during the implementation . This is where we came across the German based Rheinbrücke IT consulting and took their support. They did a fantastic turnaround of the project. I enjoyed the transparent and efficient dealing with the company and came to appreciate their work. Now they have opened the Middle East operations and am positive they will do well due to their good service motto..<b style="font-size:10px">Rizwanulla Khan,Executive President  at Emirates Glass,Saudi American & Lumi Glass.                     
                      </div>
     <div class="col-md-4 nopadding">
            <img class="testimonial-img" src="/Assets/images/Testimonial/Rizwanulla-Khan.png" alt="Testimonial by Rizwanulla Khan" style="width:179px ;height: 189px ;margin-right: 0px !important;">
                </div>
                </div>
                    </div>
            </div>
          <div class="col-md-12 padd-top-20">
              <div class="col-md-6  cal-margin1">
 <div class="client-speak-box res-height1">
       <div class="col-md-8">
                  <p class="testimonial-content" >We were very impressed with the way RheinBrücke carried out their work. From analysis to implementation and post-production support, their analysis was always detailed and complete. It was easily understood by users, so different system extension options could be evaluated with all relevant information.<br /><b style="font-size:10px">Syed Waseem Wajid,IT HEAD at Global Glass Manufacturer,KSA, Middle East
                            </div>
     <div class="col-md-4 nopadding">
            <img class="testimonial-img" src="/Assets/images/Testimonial/wajid.png" alt="Testimonial by Syed Waseem Wajid" style="width:179px ;height: 189px ;margin-right: 0px !important;">
                </div>
                </div>
            </div>
              <div class="col-md-6 ">
 <div class="client-speak-box res-height2">
       <div class="col-md-8">
                  <p class="testimonial-content" >Our challenges made us to embark on our ERP journey and after lots of analysis, we choose Epicor ERP for RAY Group. We also faced initial hiccup and challenges during the implementations. This is where we came across the German based Rheinbrücke IT consulting and took their support. We leveraged their services for past 12 months and from this experience, I can definitely say that they did a fantastic turnaround of the project. I enjoyed the open, transparent and efficient dealing with them and came to appreciate their work. I understand that they recently started their Middle east and Africas operations, I wish them good luck and every success.<b style="font-size:10px">Vinit Agarwal,CEO at Vinit Agarwal
                            </div>
     <div class="col-md-4 nopadding">
            <img class="testimonial-img" src="/Assets/images/Testimonial/vinit_agarwal.gif" alt="Testimonial by Vinit Agarwal" style="width:179px ;height: 189px;margin-right: 0px !important;">
                </div>
                </div>
            </div>
            </div>
          <div class="col-md-12 padd-top-20">
       <div class="col-md-6">
 <div class="client-speak-box res-height3">
       <div class="col-md-8">
                  <p class="testimonial-content">NGC Energy’s Epicor Implementation go-live happened earlier this year and at the end of Jan, we had successfully closed our Jan 2015 books in Epicor. This is a big milestone for all of us.It has indeed been a long journey, starting from inception, system study, training, pilot &amp; finally the 1st month-end closing. During each stage, we received full co-operation from Rheinbrücke teams. They had given us their unwavering support, with full dedication &amp; positive attitude to make this project successful. During this entire journey, both teams faced many challenges &amp; at times, things were difficult, but both teams continued to give their focus &amp; commitment, which helped to overcome these obstacles.<br/></p></div>
     <div class="col-md-2 nopadding">
            <img class="testimonial-img" src="/Assets/images/Testimonial/kiran.gif" alt="Testimonial by Kiranjit Kaur" style="width:179px ;height: 189px;margin-right: 0px !important;">
                </div>
<div class="col-md-12 testimonial-clear">
Their hard work &amp; efforts, as well as the willingness to accommodate to Malaysian working hours and weekends, are much appreciated.We appreciate their flexibility &amp; accommodating to our requests, especially when we need quick &amp; urgent turnaround. This helped us resolve issues, especially during critical moments. RIC team has not only given us technical support, but also encourage us to understand the issues and how to ensure it does not repeat.Later the implementation of GST was a success, despite a very short notice from our end. RIC team has provided us with excellent technical expertise &amp; support to ensure the Epicor system is GST-ready by 1st April 2015.We truly appreciate the effort, dedication &amp; hard work from all involved.THANK YOU very much for working as a team to make these projects successful.<br />
<b style="font-size:10px">Kiranjit Kaur,Finance Manager at NGC Companies,Malaysia</b>
</div>
                </div><b style="font-size:10px">
            </b></div>
            </div>--%>

                <%--<div runat="server" id="test"></div>--%>

                <div class="modal fade " id="homeModalVideo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header pad-bottom21">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            </div>
                            <div class="modal-body">
                                <%--<iframe src="#" id="homeVideoIframe" style="width: 100%;" height="480" frameborder="no"></iframe>--%>
                                <embed src="#" id="homeVideoIframe" type="application/x-shockwave-flash" style="width: 100%;" height="480"></embed>
                            </div>
                        </div>
                    </div>
                </div>
                <!--popup massimiliano -->
                <div class="po modal fade " id="myModal-Massimiliano" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header1">
                                <button type="button" class="close close-popup redColor" data-dismiss="modal" aria-label="Close" data-backdrop="false"><span aria-hidden="true">&times;</span></button>
                                <div class="col-md-12">
                                    <div class="col-md-2">
                                        <img class="testimonial-img1 img-circle1 ld-mag2" src="/Assets/images/Testimonial/Milani.png" alt="Testimonial by Milani" style="margin-right: 10px; width: 80px; height: 80px;" />
                                    </div>
                                    <div class="col-md-10 ">
                                        <div class="deco-header2">
                                            <p class="redBottom1"><span class="bgcol1">Massimiliano A. Milani |</span> <span class="redColor">Product & Pricing Director Europe & Africa at Federal Mogul Corporation Antwerp, Belgium </span></p>
                                        </div>
                                    </div>
                                    <div class="row col-md-12 padd-top-20">
                                        <p class="ldr-marg text-justify"> „Vielen Dank für die andauernd gute Arbeit am ERP und Supply Chain Projekt. Ihre Beratung, technische, funktionale und Projektmanagement Kompetenz war offensichtlich und wurde von unseren Mitarbeitern sehr geschäzt. Gefreut hat mich auch Ihre Flexibilität, und die transparente Arbeitsweise im Rahmen unserer Zusammenarbeit. Wie erwartet war die Kooperation mit multikulturellen Teams aus Niedrigpreis Ländern ausgezeichnet, ohne jedoch Kompromisse bei der Qualität von Arbeitsergebnissen einzugehen. Machen Sie weiter so.</p>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>

                </div>
                <!-- EOF popup massimiliano -->

                <!--popup Craig -->
                <div class="modal fade po" id="myModal-Craig" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content center ">
                            <div class="modal-header1">
                                <button type="button" class="close close-popup redColor" data-dismiss="modal" aria-label="Close" data-backdrop="false"><span aria-hidden="true">&times;</span></button>

                                <div class="col-md-12">
                                    <div class="col-md-2">
                                        <img class="testimonial-img1 img-circle1 ld-mag2" src="/Assets/images/Testimonial/craig.gif" alt="Testimonial by Craig Stephens" style="margin-right: 10px; width: 80px; height: 80px;" />
                                    </div>
                                    <div class="col-md-10 ">
                                        <div class="deco-header2">
                                            <p class="redBottom1"><span class="bgcol1">Craig Stephens |</span> <span class="redColor">Vice President-International Consulting at Epicor Software </span></p>
                                        </div>
                                    </div>
                                    <div class="row col-md-12 padd-top-20">
                                        <p class="ldr-marg text-justify">Seit einiger Zeit setze ich das Team von RheinBrücke als meinen verlängerten Arm für Beratungsleistungen ein und habe ihre umfassenden technischen und funktionalen Kenntnisse des Produktes sowie ihr Engagement in Hinblick auf die Bedürfnisse unserer Endkunden zu schätzen gelernt. Sie reagieren schnell auf neue Herausforderungen und ich kann mich immer auf sie verlassen.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <!--EOf popup Craig -->

                <!--popup Rizwanulla -->
                <div class="modal fade po" id="myModal-Rizwanulla" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header1">
                                <button type="button" class="close close-popup redColor" data-dismiss="modal" aria-label="Close" data-backdrop="false"><span aria-hidden="true">&times;</span></button>
                                <div class="col-md-12">
                                    <div class="col-md-2">
                                        <img class="testimonial-img1 img-circle1 ld-mag2" src="/Assets/images/Testimonial/Rizwanulla-Khan.png" alt="Testimonial by Rizwanulla Khan" style="margin-right: 10px; width: 80px; height: 80px;" />
                                    </div>
                                    <div class="col-md-10 ">
                                        <div class="deco-header2">
                                            <p class="redBottom1"><span class="bgcol1">Rizwanulla Khan |</span> <span class="redColor">Executive President at Emirates Glass, Saudi American Glass & Lumi Glass </span></p>
                                        </div>
                                    </div>
                                    <div class="row col-md-12 padd-top-20">
                                        <p class="ldr-marg text-justify">Wir haben Epicor ERP in einer unserer groβen Glasproduktionsanlagen im Nahen Osten implementiert. Obwohl das Produkt gut war, hatten wir Anfangsschwierigkeiten und Herausforderungen, so wie es wohl bei jeder ERP Implementation vorkommen kann. Hier sind wir auf das Unternehmen Rheinbrücke IT consulting mit Sitz in Deutschland gestoβen und haben ihre Unterstützung in Anspruch genommen. Sie schafften einen fantastischen Umschwung im Projekt. Ich habe die offene und effiziente Zusammenarbeit mit dem Unternehmen genossen und schätze ihre Arbeit. Jetzt hat RheinBrücke IT Consulting eine Betriebsstätte im Nahen Osten eröffnet und ich bin überzeugt, dass sie nach ihrem Motto „guter Service" viel Erfolg haben werden.</p>

                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>
                <!--EOF popup Rizwanulla -->

                <!--popup Syed -->
                <div class="modal fade po" id="myModal-Syed" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header1">
                                <button type="button" class="close close-popup redColor" data-dismiss="modal" aria-label="Close" data-backdrop="false"><span aria-hidden="true">&times;</span></button>
                                <div class="col-md-12">
                                    <div class="col-md-2">
                                        <img class="testimonial-img1 img-circle1 ld-mag2" src="/Assets/images/Testimonial/wajid.png" alt="Testimonial by Syed Waseem Wajid" style="margin-right: 10px; width: 80px; height: 80px;" />
                                    </div>
                                    <div class="col-md-10 ">
                                        <div class="deco-header2">
                                            <p class="redBottom1"><span class="bgcol1">Syed Waseem Wajid |</span> <span class="redColor">IT HEAD at Global Glass Manufacturer | KSA, Middle East </span></p>
                                        </div>
                                    </div>
                                    <div class="row col-md-12 padd-top-20">
                                        <p class="ldr-marg text-justify">„Wir waren sehr beeindruckt, wie RheinBrücke ihre Arbeit erfüllt hat. Von der Prozessanalys über die Einführung bis hin zur Unterstützung nach dem Go-Live war ihre Analyse immer detailliert und vollständig.Sie war leicht verständlich für Benutzer, so dass verschiedene Möglichkeiten für Systemerweiterungen mit allen relevanten Informationen bewertet werden konnten.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <!--EOF popup Syed -->

                <!--popup Vinit -->
                <div class="modal fade po" id="myModal-Vinit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header1">
                                <button type="button" class="close close-popup redColor" data-dismiss="modal" aria-label="Close" data-backdrop="false"><span aria-hidden="true">&times;</span></button>
                                <div class="col-md-12">
                                    <div class="col-md-2">
                                        <img class="testimonial-img1 img-circle1 ld-mag2" src="/Assets/images/Testimonial/vinit_agarwal.gif" alt="Testimonial by Vinit Agarwal" style="margin-right: 10px; width: 80px; height: 80px;" />
                                    </div>
                                    <div class="col-md-10 ">
                                        <div class="deco-header2">
                                            <p class="redBottom1">
                                                <span class="bgcol1">Vinit Agarwal |</span>
                                                <span class="redColor">CEO at RAY International, Sultanate of  Oman</span>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="row col-md-12 padd-top-20">
                                        <p class="ldr-marg text-justify">Wegen steigender Herausforderungen begaben wir uns auf die Suche nach einer passenden ERP-Sftware. Nach einer Vielzahl von Analysen entschieden wir uns für EPICOR ERP für die RAY-Group. Während der Implementierung traten anfängliche Probleme auf. Folglich wandten wir uns an RheinBrücke IT-Consulting und nutzten ihre Unterstützung in den vergangenen 12 Monaten. Das Ergebnis war ein fantastischer Turnaround des Projekts. Ich genoss die offene, transparente und effiziente Zusammenarbeit und ich bin dankbar für die erfolgreiche Umsetzung. Für die neuen Niederlassungen in Middle-East und Afrika wünsche ich ihnen viel Glück und Erfolg.</p>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>
                <!--EOF popup Vinit -->

                <!--popup Kiranjit -->
                <div class="modal fade po" id="myModal-Kiranjit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header1">
                                <button type="button" class="close close-popup redColor" data-dismiss="modal" aria-label="Close" data-backdrop="false"><span aria-hidden="true">&times;</span></button>
                                <div class="col-md-12">
                                    <div class="col-md-2">
                                        <img class="testimonial-img1 img-circle1 ld-mag2" src="/Assets/images/Testimonial/kiran.gif" alt="Testimonial by Kiranjit Kaur" style="margin-right: 10px; width: 80px; height: 80px;" />
                                    </div>
                                    <div class="col-md-10 ">
                                        <div class="deco-header2">
                                            <p class="redBottom1">
                                                <span class="bgcol1">Kiranjit Kaur |</span> <span class="redColor">Finance Manager at NGC Companies Malaysia & Oman </span>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="row col-md-12 padd-top-20">
                                        <p class="ldr-marg text-justify">NGC Energy’s EPICOR Go-Live-Implementierung erfolgte Anfang Januar und wir schlossen das Finanzjahr schließlich erfolgreich mit Hilfe von EPICOR im Januar 2015 ab. Für uns alle ist dies ein großer Meilenstein. Wahrhaftig war es ein langer Prozess – angefangen mit dem Inkrafttreten, gefolgt von der Systemstudie, der Einarbeitung, der Pilot-Phase und schließlich der erste Monatsabschluss. Während jeder Phase erhielten wir uneingeschränkte Unterstützung von RheinBrücke IT-Consulting. Ihre Arbeit war geprägt von großem Einsatz und positiver Energie, um das Projekt erfolgreich zu realisieren. Der Prozess war herausfordernd und schwierig, jedoch arbeiteten beide Teams konzentriert und engagiert, sodass auftretende Hindernisse gemeistert werden konnten.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <!--EOF popup Kiranjit -->
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterScript" runat="server">
    <script type="text/javascript">     function autoPlayYouTubeModal() { var trigger = $("body").find('[data-toggle="modal"]'); trigger.click(function () { var theModal = $(this).data("target"), videoSRC = $(this).attr("data-videoid"), videoSRCauto = "https://www.youtube.com/v/" + videoSRC + "?rel=0&amp;autoplay=0"; $(theModal + ' embed').attr('src', videoSRCauto); $(theModal + ' button.close').click(function () { $(theModal + ' embed').attr('src', videoSRC); }); }); } $(document).ready(function () { autoPlayYouTubeModal(); }); </script>

</asp:Content>
