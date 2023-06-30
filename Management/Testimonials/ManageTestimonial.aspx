<%@ Page Title="" Language="C#" MasterPageFile="~/Rheincs.Master" AutoEventWireup="true" CodeBehind="ManageTestimonial.aspx.cs" Inherits="RheinBrucke.Management.Testimonials.ManageTestimonial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headerPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" id="container-top">
        <div class="col-md-12">
            <asp:ScriptManager ID="ScriptManagerNews"
                runat="server" />
            <asp:UpdatePanel ID="updNews" runat="server">
                <ContentTemplate>
                    <h5 class="deco-header">
                        <span class="redBottom">Manage Testimonial</span></h5>
                    <div id="divSuccessMessage" runat="server" style="color: green"></div>
                    <br />
                    <div class="col-md-4 nopadding">
                        <input id="hdnID" runat="server" type="hidden" />
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
                            <div class="fileupload fileupload-new" data-provides="fileupload">
                                <div id="divThumbnailImage" class="fileupload-preview thumbnail" runat="server" style="width: 200px; height: 150px;">
                                    <asp:Image ID="ImageTestimonial" runat="server"  />
                                </div>
                                <div>
                                    <%--<span class="btn btn-file"><span class="fileupload-new">Select image</span><span class="fileupload-exists">Change</span>--%><asp:FileUpload ID="fileTestimonial" runat="server" /></span>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix">&nbsp;</div>
                        <br />
                        <div class="col-md-12 nopadding">
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="submit-button" OnClick="btnSubmit_Click" />
                            <asp:Button ID="btnDelete" runat="server" Text="Delete" class="submit-button" OnClick="btnDelete_Click" />
                            <asp:Button ID="btnCancel" runat="server" Text="Cancel" class="submit-button" OnClick="btnCancel_Click" />
                        </div>
                    </div>
                    <br />
                    <asp:GridView ID="grdTestimonial" runat="server" CssClass="table table-bordered table-striped table-highlight-head" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="false" GridLines="None" OnPageIndexChanging="OnPageIndexChanging" PageSize="4" PagerStyle-BorderStyle="None" OnRowCommand="grdTestimonial_RowCommand">
                        <Columns>
                                <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="60">
                                    <ItemTemplate>
                                        <asp:LinkButton CommandName="NewsEdit" CommandArgument='<%# string.Format("{0}$${1}$${2}$${3}$${4}$${5}$${6}", Eval("TestimonialID").ToString(), Eval("Name").ToString() , Eval("Content").ToString() , Eval("CompanyName").ToString(), Eval("Designation").ToString(), Eval("Address").ToString(), Eval("ImageName").ToString()) %>' ID="anhocr" runat="server"><i class="fa fa-pencil fa-lg lightblue"></i></asp:LinkButton>

                                    </ItemTemplate>
                                    <ControlStyle CssClass="gridSelectCol" />
                                    <ItemStyle CssClass="gridSelectCol" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Name">
                                    <HeaderStyle />
                                    <ItemTemplate>

                                        <asp:Label ID="lblTitle" runat="server" ToolTip='<%# Eval("Name") %>' Text='<%# Eval("Name").ToString() %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Content">
                                    <ItemTemplate>

                                        <asp:Label ID="lblShortDescription" runat="server" ToolTip='<%# Eval("Content") %>' Text='<%# Eval("Content").ToString() %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Company Name">
                                    <ItemTemplate>
                                        <input type="hidden" id="hdnID" value='<%# Eval("TestimonialID") %>' />
                                        <asp:Label ID="lblCompanyName" runat="server" ToolTip='<%# Eval("CompanyName") %>' Text='<%# Eval("CompanyName").ToString() %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            <asp:TemplateField HeaderText="Designation">
                                    <ItemTemplate>
                                        <asp:Label ID="lblDesignation" runat="server" ToolTip='<%# Eval("Designation") %>' Text='<%# Eval("Designation").ToString() %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <EmptyDataTemplate>
                                <table cellpadding="0" cellspacing="0" width="100%" class="table table-bordered table-striped table-highlight-head">

                                    <tr>
                                        <th scope="col">&nbsp;</th>
                                        <th scope="col">Name</th>
                                        <th scope="col">Content</th>
                                        <th scope="col">Company Name</th>
                                        <th scope="col">Designation</th>
                                    </tr>
                                    <tr>
                                        <td colspan="5">No Records found
                                        </td>
                                    </tr>
                                </table>

                            </EmptyDataTemplate>
                            <HeaderStyle CssClass="" />
                            <EmptyDataRowStyle CssClass="gridemptyrow" />
                            <PagerStyle CssClass="paging" HorizontalAlign="Right" />
                    </asp:GridView>

                </ContentTemplate>
                <Triggers>
                    <asp:PostBackTrigger ControlID="btnSubmit" />
                </Triggers>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>
