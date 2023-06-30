<%@ Page Title="" Language="C#" MasterPageFile="~/Rheincs.Master" AutoEventWireup="true" CodeBehind="NewTestimonial.aspx.cs" Inherits="RheinBrucke.Management.Testimonials.NewTestimonial" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headerPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" id="container-top">
        <div class="col-md-12">
            <h5 class="deco-header">
                <span class="redBottom">Testimonial</span></h5>
            <div id="divSuccessMessage" runat="server" style="color:green"></div>
            <br />
            <div class="col-md-4 nopadding">
                <div class="col-md-12 nopadding">
                    <input type="text" id="txtName" placeholder="*Name" class="write-to-us-input" runat="server" />
                </div>
                <div class="clearfix">&nbsp;</div>
                <div class="col-md-12 nopadding">
                    <textarea cols="45" rows="5" placeholder="*Content" name="message" id="txtDescription" class="write-to-us-input" runat="server"></textarea>
                </div>
                <div class="clearfix">&nbsp;</div>
                <div class="col-md-12 nopadding">
                    <input type="text" id="txtCompanyName" placeholder="*Company Name" class="write-to-us-input" runat="server" />
                </div>
                <div class="clearfix">&nbsp;</div>
                <div class="col-md-12 nopadding">
                    <input type="text" id="txtDesignation" placeholder="*Designation" class="write-to-us-input" runat="server" />
                </div>
                 <div class="clearfix">&nbsp;</div>
                <div class="col-md-12 nopadding">
                    <textarea cols="45" rows="5" placeholder="*Address" name="message" id="txtAddress" class="write-to-us-input" runat="server"></textarea>
                </div>
                <div class="clearfix">&nbsp;</div>
                <div class="col-md-12 nopadding">
                    <label>
                        Photo
                    </label>
                    <asp:FileUpload ID="filePhoto" runat="server" />
                </div>
            </div>
            <div class="clearfix">&nbsp;</div>
            <br />
            <div class="col-md-12 nopadding">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="submit-button" OnClick="btnSubmit_Click" />
            </div>
        </div>
    </div>
</asp:Content>
