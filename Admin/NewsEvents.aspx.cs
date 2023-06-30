using RheinBrucke.Data;
using RheinBrucke.Library;
using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RheinBrucke.Admin
{
    public partial class NewsEvents : System.Web.UI.Page
    {

        private MasterRepository masterRep = new MasterRepository();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                GetListOfNewsAndEvents();
            }
        }

        private void GetListOfNewsAndEvents()
        {
            rptNewsEvents.DataSource = masterRep.GetNewsEvents();
            rptNewsEvents.DataBind();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                using (RheinBruckeDevEntities context = new RheinBruckeDevEntities())
                {

                    string picExtension = fileImage.PostedFile.ContentType;
                    string ImageName = string.Empty;
                    string Thumbnail = string.Empty;
                    int id = 0;

                    if ((picExtension == "image/jpeg") || (picExtension == "image/jpg") || (picExtension == "image/png"))
                    {
                        if ((!System.IO.Directory.Exists(Server.MapPath("~/Assets/images/NewsEvents"))))
                        {
                            System.IO.Directory.CreateDirectory(Server.MapPath("~/Assets/images/NewsEvents"));
                        }

                        if ((!System.IO.Directory.Exists(Server.MapPath("~/Assets/images/NewsEvents/Thumbnail"))))
                        {
                            System.IO.Directory.CreateDirectory(Server.MapPath("~/Assets/images/NewsEvents/Thumbnail"));
                        }

                        if ((!System.IO.Directory.Exists(Server.MapPath("~/Assets/images/NewsEvents/Image"))))
                        {
                            System.IO.Directory.CreateDirectory(Server.MapPath("~/Assets/images/NewsEvents/Image"));
                        }

                        ImageName = System.IO.Path.GetFileName(fileImage.FileName);
                        Thumbnail = System.IO.Path.GetFileName(fileThumbnail.FileName);

                        string Imagepath = System.IO.Path.Combine(
                                               Server.MapPath("~/Assets/images/NewsEvents/Image"), ImageName);
                        string Thumbnailpath = System.IO.Path.Combine(
                                                    Server.MapPath("~/Assets/images/NewsEvents/Thumbnail"), Thumbnail);
                        // file is uploaded
                        if (ImageName != string.Empty)
                            fileImage.SaveAs(Imagepath);

                        if (Thumbnail != string.Empty)
                            fileThumbnail.SaveAs(Thumbnailpath);
                    }


                    if (hdnNewsid.Value != string.Empty)
                    {
                        id = Convert.ToInt32(hdnNewsid.Value);
                    }
                    var urlExits = context.NewsEvents.Where(c => c.UrlDetails.Contains(txtUrl.Value));

                    divSuccessMessage.InnerHtml = "";
                    divErrorMessage.InnerHtml = "";
                    //else
                    //{
                    if (id != 0)
                    {
                        if (urlExits.Count() > 1)
                        {
                            divErrorMessage.InnerHtml = "URL details already exits, please suggest another URL";
                        }
                        else
                        {
                            var getItem = context.NewsEvents.Where(d => d.NewsAndEventsID == id).FirstOrDefault();
                            getItem.Title = txtTitle.Value;
                            getItem.Description = txtDescription.Value;
                            getItem.NewsEventsDate = DateTime.ParseExact(txtEventDate.Value, "dd-mm-yyyy", CultureInfo.InvariantCulture);
                            getItem.ThumbnailImage = Thumbnail;
                            getItem.NewsImage = ImageName;
                            getItem.Status = true;
                            getItem.CreatedOn = DateTime.Now;
                            getItem.ThumbnailPositionLeft = Convert.ToBoolean(Convert.ToInt32(txtPosition.SelectedValue));
                            getItem.UrlDetails = txtUrl.Value;
                            context.SaveChanges();
                            divSuccessMessage.InnerHtml = "Changes saved successfully";
                        }

                    }
                    else
                    {
                        if (urlExits.Count() >= 1)
                        {
                            divErrorMessage.InnerHtml = "URL details already exits, please suggest another URL";
                        }
                        else
                        {
                            var Insertnews = context.NewsEvents.Create();
                            Insertnews.Title = txtTitle.Value;
                            Insertnews.Description = txtDescription.Value;
                            Insertnews.NewsEventsDate = DateTime.ParseExact(txtEventDate.Value, "dd-mm-yyyy", CultureInfo.InvariantCulture);
                            Insertnews.ThumbnailImage = Thumbnail;
                            Insertnews.NewsImage = ImageName;
                            Insertnews.Status = true;
                            Insertnews.CreatedOn = DateTime.Now;
                            Insertnews.ThumbnailPositionLeft = Convert.ToBoolean(Convert.ToInt32(txtPosition.SelectedValue));
                            Insertnews.UrlDetails = txtUrl.Value;
                            context.NewsEvents.Add(Insertnews);
                            context.SaveChanges();
                            divSuccessMessage.InnerHtml = "Successfully saved";
                        }
                    }


                    txtTitle.Value = "";
                    txtDescription.Value = "";
                    txtEventDate.Value = "";
                    txtUrl.Value = "";
                    //}
                }

                GetListOfNewsAndEvents();
            }
            catch (DbEntityValidationException ex)
            {
                var errorMessages = ex.EntityValidationErrors
                   .SelectMany(x => x.ValidationErrors)
                   .Select(x => x.ErrorMessage);
                // Join the list to a single string.
                var fullErrorMessage = string.Join("; ", errorMessages);
                var exceptionMessage = string.Concat(ex.Message, " The validation errors are: ", fullErrorMessage);
                throw new DbEntityValidationException(exceptionMessage, ex.EntityValidationErrors);

            }
        }

        //Delete News And Events
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            using (RheinBruckeDevEntities context = new RheinBruckeDevEntities())
            {
                divErrorMessage.InnerHtml = "";
                divSuccessMessage.InnerHtml = "";
                LinkButton btn = (LinkButton)(sender);
                int ID = Convert.ToInt32(btn.CommandArgument);
                var getNewsItem = context.NewsEvents.Where(i => i.NewsAndEventsID == ID).FirstOrDefault();
                //context.NewsEvents.Remove();
                getNewsItem.Status = false;
                context.SaveChanges();
                txtTitle.Value = "";
                txtDescription.Value = "";
                txtEventDate.Value = "";
                txtPosition.ClearSelection();
                GetListOfNewsAndEvents();
                divSuccessMessage.InnerHtml = "Deleted Sucessfully";

                txtTitle.Value = "";
                txtDescription.Value = "";
                txtEventDate.Value = "";
            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            using (RheinBruckeDevEntities context = new RheinBruckeDevEntities())
            {
                divErrorMessage.InnerHtml = "";
                divSuccessMessage.InnerHtml = "";
                LinkButton btn = (LinkButton)(sender);
                int ID = Convert.ToInt32(btn.CommandArgument);
                var getNewsItem = context.NewsEvents.Where(i => i.NewsAndEventsID == ID).FirstOrDefault();
                txtTitle.Value = getNewsItem.Title;
                txtDescription.Value = getNewsItem.Description;
                txtEventDate.Value = getNewsItem.NewsEventsDate.Value.GetDateTimeFormats()[5];
                DateTime dt = DateTime.ParseExact(txtEventDate.Value, "yyyy-MM-dd", CultureInfo.InvariantCulture);
                string convertedDate = dt.ToString("dd-MM-yyyy", CultureInfo.InvariantCulture);
                txtEventDate.Value = convertedDate;
                txtUrl.Value = getNewsItem.UrlDetails;
                hdnNewsid.Value = Convert.ToString(getNewsItem.NewsAndEventsID);
                txtPosition.ClearSelection();
                GetListOfNewsAndEvents();
            }
        }
    }
}
