<%@ Page Title="Manage Careers" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="JobOpenings.aspx.cs" Inherits="RheinBrucke.Admin.JobOpenings" ValidateRequest="false"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="headerPlaceHolder" runat="server">
      <script src="Assets/js/jquery-2.1.1.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<style>
    .validator  {
        margin-top: -5px;
        margin-bottom: 5px;
        color: red;
        font-size: 14px;
        float: left;
    }
   .addnewsform{
        padding:10px; border:1px solid #ccc; margin-top:30px;
    }
   .write-to-us-input
    {
        font-size:12px !important;
    }
   .department-dropdown
   {
           width: 80%;
    height: 35px;
   }
</style>
      <script type="text/javascript">

          $(document).ready(function () {
              $("#ContentPlaceHolder1_txtEventDate").datepicker({ dateFormat: 'dd-mm-yy' });
              $('#example1').DataTable({
              });
          })
         
           
  </script>  

    <div class="container" id="container-top" style="padding-top:12px;">
        
        <div class="col-md-12">
            <h5 class="deco-header">
                <span class="redBottom">Add/Edit Job Post</span></h5>
             <div class="clearfix">&nbsp;&nbsp;</div>
             <div id="divSuccessMessage" runat="server" class="success-del"></div>
             <div id="divErrorMessage" runat="server" class="validator"></div>
             <div class="clearfix">&nbsp;&nbsp;</div>
            <div class="col-md-12 addnewsform">
           
            <div class="col-md-6">
                <div class="col-md-12 nopadding">
                    <input type="text" id="txtJTitle" placeholder="*JobTitle" class="write-to-us-input" runat="server" />
                </div>
                <div class="clearfix">&nbsp;</div>
                <div class="col-md-12 nopadding">
                    <textarea cols="45"  rows="5" placeholder="Purpose of the Role" name="txtPurpose" id="txtPurpose" class="write-to-us-input" runat="server"></textarea>
                </div>
                <div class="clearfix">&nbsp;</div>
                <div class="col-md-12 nopadding">
                    <textarea cols="45"  rows="5" placeholder="*Responsibilities" name="txtResponsibility" id="txtResponsibility" class="write-to-us-input" runat="server"></textarea>
                </div>
                
                <div class="clearfix">&nbsp;</div>
                
              
                </div>
                <div class="col-md-6">
               <div class="col-md-12 nopadding">
                    <textarea cols="45"  rows="5" placeholder="Qualifications" name="txtQualification" id="txtQualification" class="write-to-us-input" runat="server"></textarea>
                </div>
                 <div class="clearfix">&nbsp;</div>
                <div class="col-md-12 nopadding">
                    <input type="text" id="txtLocat" placeholder="*Location" class="write-to-us-input" runat="server" />
                </div>
                <div class="clearfix">&nbsp;</div>
               <div class="col-md-12 nopadding">
                    <input type="text" id="txtPrty" placeholder="*Priority" class="write-to-us-input" runat="server" />
                </div>
                    <div class="clearfix">&nbsp;</div>
               <div class="col-md-12 nopadding">
                   <label>Select Department</label>
                     <asp:DropDownList ID="ddlfield" runat="server" CssClass="department-dropdown">
                        <asp:ListItem Value="0">--Select--</asp:ListItem>
                         <asp:ListItem Value="Consulting">Consulting</asp:ListItem>
                        <asp:ListItem Value="In ERP Practice">In ERP Practice</asp:ListItem>
                        <asp:ListItem Value="IT Practice">IT Practice</asp:ListItem>
                        <asp:ListItem Value="Product Development">Product Development</asp:ListItem>
                    </asp:DropDownList>
                </div>
                     <div class="clearfix">&nbsp;</div>
               <div class="col-md-12 nopadding">
                    <input type="text" id="txtUrl" placeholder="*Url Details" class="write-to-us-input" runat="server" />
                </div>
            </div>
            
            <br />
                 <input type="hidden" id="hdnJobsid" value='<%# Eval("JobID") %>' runat="server" />
            <div class="col-md-12">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="submit-button" OnClick="btnSubmit_Click"  />
            </div>
                </div>
        </div>

    <!--FORM-->
    <div class="clearfix">&nbsp;&nbsp;</div>
   
               <h5 class="deco-header" style="margin-left: 20px;">
                <span class="redBottom">List of Job Posts</span></h5>
        <div class="clearfix">&nbsp;</div>
        <div id="divSuccessMessageList" runat="server" class="success-del"></div>
        <div class="clearfix">&nbsp;</div>
        <div class="col-md-12 padd-top-20 deco-header-dotnet" style="line-height: 30px;">
            <table id="example1" class="display responsive" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th style="padding-left: 10px;">Job Title
                        </th>
                         <th>Location
                        </th>
                         <th>Priority
                        </th>
                        
                        <th>Edit
                        </th>
                         <th>Delete
                        </th>
                    </tr>
                     </thead>
        <tbody>
                     <asp:Repeater ID="rptJobPosts" runat="server">
                    <ItemTemplate>                     
                    <tr>
                        <td>
                              <%# Eval("JobTitle") %>
                        </td>
                        <td> <%# Eval("Location") %></td>
                        <td>
                              <%# Eval("Priority") %>
                        </td>
                        <td class="text-center">
                           <asp:LinkButton OnClick="btnEdit_Click" CommandArgument='<%# Eval("JobID") %>' runat="server">
                            <i class="fa fa-edit"></i>
                                </asp:LinkButton>
                        </td>                        
                        <td class="text-center">
                            <asp:LinkButton OnClick="btnDelete_Click" CommandArgument='<%# Eval("JobID") %>' runat="server">
                                <i class="fa fa-trash"></i>
                            </asp:LinkButton>
                        </td>
                    </tr>
                          </ItemTemplate>
                </asp:Repeater>
               
           </tbody>
            </table>
        </div>
        <div class="row">
            <div class="col-md-12">
                <br />
                <br />
                <br />
                <br />
            </div>
        </div> 
</div><!--Container-->
</asp:Content>
