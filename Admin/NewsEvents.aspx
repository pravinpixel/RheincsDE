<%@ Page Title="Manage News and Events" Language="C#" MasterPageFile="~/AdminMaster.Master" validateRequest="false" AutoEventWireup="true" CodeBehind="NewsEvents.aspx.cs" Inherits="RheinBrucke.Admin.NewsEvents" %>

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
    .eventdate
    {
            padding-top: 15px;
    text-align: center;
    color: #7b1315;
    }
    .eventTitle{
     font-size: 15px;
    font-variant: petite-caps;
    font-weight: bold;
    text-align: center;
    }
    .write-to-us-input
    {
        font-size:12px !important;
    }
    .addnewsform{
        padding:10px; border:1px solid #ccc; margin-top:30px;
    }
</style>
      <script type="text/javascript">
          $(document).ready(function () {
              $("#ContentPlaceHolder1_txtEventDate").datepicker({ dateFormat: 'dd-mm-yy' });
              $('#example').DataTable({
              });
          })
         
           
  </script>   
    <div class="container" id="container-top" style="padding-top:12px;">     
        <div class="col-md-12">
            <h5 class="deco-header">
                <span class="redBottom">Add/Edit News and events</span></h5>
            <div class="col-md-12 addnewsform">
           <div id="divSuccessMessage" runat="server" style="color:green; font-size:16px;"></div> 
                <div id="divErrorMessage" runat="server" class="validator"></div>
                <div class="clearfix"></div>
            <div class="col-md-6">
                <div class="col-md-12 nopadding">
                    <input type="text" id="txtTitle" placeholder="*Title" class="write-to-us-input" runat="server" />
                </div>
                <div class="clearfix">&nbsp;</div>
                <div class="col-md-12 nopadding">
                    <textarea cols="45"  rows="5" placeholder="*Description" name="message" id="txtDescription" class="write-to-us-input" runat="server"></textarea>
                </div>
                <div class="clearfix">&nbsp;</div>
                <div class="col-md-12 nopadding">
                    <input type="text" id="txtEventDate" placeholder="*Event Date" class="write-to-us-input" runat="server" />
                </div>
                <div class="clearfix">&nbsp;</div>
                </div>
                <div class="col-md-6">
                <div class="col-md-12 nopadding">
                    <label>
                        ThumbNail Image
                    </label>
                    <asp:FileUpload ID="fileThumbnail" runat="server" />
                </div>
                 <div class="clearfix">&nbsp;</div>
                <div class="col-md-12 nopadding">
                    <label>
                        ThumbNail Position Left
                    </label>
                   <asp:RadioButtonList ID="txtPosition" runat="server">
                       <asp:ListItem Text="Yes" Value="1"  /> 
                       <asp:ListItem Text="No" Value="0" Selected="True"/> 
                   </asp:RadioButtonList>
                </div>
                <div class="clearfix">&nbsp;</div>
                <div class="col-md-12 nopadding">
                    <label>
                        Image
                    </label>
                    <asp:FileUpload ID="fileImage" runat="server" />
                </div>
                     <div class="clearfix">&nbsp;</div>
                     <div class="col-md-12 nopadding">
                    <input type="text" id="txtUrl" placeholder="*Url Details" class="write-to-us-input" runat="server" />
                </div>
            </div>           
            <br />
                  <input type="hidden" id="hdnNewsid" value='<%# Eval("NewsAndEventsID") %>' runat="server" />
            <div class="col-md-12">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="submit-button" OnClick="btnSubmit_Click" />
            </div>
                </div>
        </div>
            
    
    <!--FORM-->
    <div class="clearfix">&nbsp;&nbsp;</div>
   
               <h5 class="deco-header" style="margin-left: 20px;">
                <span class="redBottom">List of News and events</span></h5>
       
        <div class="col-md-12 padd-top-20 deco-header-dotnet" style="line-height: 30px;">
            <table id="example" class="display responsive" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th style="padding-left: 10px;">News and Events Title
                        </th>
                        <th>Date Added
                        </th>
                        <th>Edit
                        </th>
                         <th>Delete
                        </th>
                    </tr>
                     </thead>
        <tbody>
                     <asp:Repeater ID="rptNewsEvents" runat="server">
                    <ItemTemplate>                     
                    <tr>
                        <td>
                              <%# Eval("Title") %>
                        </td>
                        <td> <%# Eval("NewsEventsDate") %></td>                    
                        <td class="text-center">
                            <asp:LinkButton  OnClick="btnEdit_Click" CommandArgument='<%# Eval("NewsAndEventsID") %>' runat="server">
                            <i class="fa fa-edit"></i>
                                </asp:LinkButton>
                        </td>                        
                        <td class="text-center">
                            <asp:LinkButton OnClick="btnDelete_Click" CommandArgument='<%# Eval("NewsAndEventsID") %>' runat="server">
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
