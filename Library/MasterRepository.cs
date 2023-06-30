using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using RheinBrucke.Data;

namespace RheinBrucke.Library
{
    public class MasterRepository
    {
        public bool SaveContactUS(string name, string email, string message,string phone,string Services)
        {
            bool saved = false;

            EmailRequest row;
            //MstContactU newRow = new MstContactU();
            using (RheinBruckeDevEntities context = new RheinBruckeDevEntities())
            {

                row = new EmailRequest();
                row.Name = name;
                row.Email = email;
                row.Message = message;
                row.Phone = phone;
                row.Services = Services;
                row.EmailTypeID = 2;
                row.CreatedOn = DateTime.Now;
                row.ContactUsUrl = "Kontakt.aspx";
                context.EmailRequests.Add(row);
                context.SaveChanges();
                saved = true;

            }
            return saved;

        }

        public bool SaveCallout(string name, string email, string phone, string message, string ContactUsUrl,string Services)
        {
            bool saved = false;

            EmailRequest row;
            //MstContactU newRow = new MstContactU();
            using (RheinBruckeDevEntities context = new RheinBruckeDevEntities())
            {

                row = new EmailRequest();
                row.Name = name;
                row.Email = email;
                row.Phone = phone;
                row.Message = message;
                row.EmailTypeID = 1;
                row.CreatedOn = DateTime.Now;
                row.ContactUsUrl = ContactUsUrl;
                row.Services = Services;
                context.EmailRequests.Add(row);
                context.SaveChanges();
                saved = true;

            }
            return saved;

        }

        public bool SaveAms(string name, string email,string phone)
        {
            bool saved = false;

            EmailRequest row;
            //MstContactU newRow = new MstContactU();
            using (RheinBruckeDevEntities context = new RheinBruckeDevEntities())
            {

                row = new EmailRequest();
                row.Name = name;
                row.Email = email;
                row.EmailTypeID = 5;
                row.Phone = phone;
                row.CreatedOn = DateTime.Now;
                context.EmailRequests.Add(row);
                context.SaveChanges();
                saved = true;

            }
            return saved;

        }

        public bool SavePep(string name, string email,string phone)
        {
            bool saved = false;

            EmailRequest row;
            //MstContactU newRow = new MstContactU();
            using (RheinBruckeDevEntities context = new RheinBruckeDevEntities())
            {

                row = new EmailRequest();
                row.Name = name;
                row.Phone = phone;
                row.Email = email;
                row.EmailTypeID = 4;
                row.CreatedOn = DateTime.Now;
                context.EmailRequests.Add(row);
                context.SaveChanges();
                saved = true;

            }
            return saved;

        }

        public bool SavedownloadedDetails(string name, string email, string phone, string description)
        {
            bool saved = false;

            EmailRequest row;
            //MstContactU newRow = new MstContactU();
            using (RheinBruckeDevEntities context = new RheinBruckeDevEntities())
            {

                row = new EmailRequest();
                row.Name = name;
                row.Phone = phone;
                row.Email = email;
                row.Services = description;
                row.EmailTypeID = 4;
                row.CreatedOn = DateTime.Now;
                context.EmailRequests.Add(row);
                context.SaveChanges();
                saved = true;

            }
            return saved;

        }

        public bool SaveEpicpay(string name, string email,string phone)
        {
            bool saved = false;

            EmailRequest row;
            //MstContactU newRow = new MstContactU();
            using (RheinBruckeDevEntities context = new RheinBruckeDevEntities())
            {

                row = new EmailRequest();
                row.Name = name;
                row.Phone = phone;
                row.Email = email;
                row.EmailTypeID = 3;
                row.CreatedOn = DateTime.Now;
                context.EmailRequests.Add(row);
                context.SaveChanges();
                saved = true;

            }
            return saved;

        }

        public bool SaveJobApplications(string name, string email, string mobileno, string jobtitle, string documentname, string coverletter)
        {
            bool saved = false;

            JobApplication row;
            using (RheinBruckeDevEntities context = new RheinBruckeDevEntities())
            {
                row = new JobApplication();
                row.Name = name;
                row.MobileNo = mobileno;
                row.EmailId = email;
                row.JobTitle = jobtitle;
                row.DocumentName = documentname;
                row.CoverLetter = coverletter;
                row.CreatedOn = DateTime.Now;
                context.JobApplications.Add(row);
                context.SaveChanges();
                saved = true;

            }
            return saved;

        }

        public List<NewsEvent> GetNewsEvents()
        {
            List<NewsEvent> result = null;

            using (RheinBruckeDevEntities context = new RheinBruckeDevEntities())
            {
                result = context.NewsEvents.Where(m => m.Status == true).OrderBy(m => m.NewsAndEventsID).ToList<NewsEvent>();
            }

            return result.ToList();
        }

        public List<JobList> GetJobPosts()
        {
            List<JobList> result = null;

            using (RheinBruckeDevEntities context = new RheinBruckeDevEntities())
            {
                result = context.JobLists.OrderBy(j => j.Priority).ToList<JobList>();
            }

            return result.ToList();
        }

        public List<Testimonial> GetTestimonials()
        {
            List<Testimonial> result = null;

            using (RheinBruckeDevEntities context = new RheinBruckeDevEntities())
            {
                result = context.Testimonials.Where(m => m.Status == true).OrderBy(m => m.TestimonialID).ToList<Testimonial>();
            }

            return result.ToList();
        }


        public bool Landing(string firstname, string email, string phone, string ServiceType)
        {
            bool saved = false;

            LandingPage row;
            //MstContactU newRow = new MstContactU();
            using (RheinBruckeDevEntities context = new RheinBruckeDevEntities())
            {

                row = new LandingPage();
                row.FirstName = firstname;
                row.Email = email;
                row.Phone = phone;
                row.ServiceType = ServiceType;
                row.CreatedDate = DateTime.Now;
                context.LandingPages.Add(row);
                context.SaveChanges();
                saved = true;
            }
            return saved;

        }

        public bool Manufacturing(string firstname, string lastname, string email, string phone, string ServiceType)
        {
            bool saved = false;

            LandingPage row;
            //MstContactU newRow = new MstContactU();
            using (RheinBruckeDevEntities context = new RheinBruckeDevEntities())
            {

                row = new LandingPage();
                row.FirstName = firstname;
                row.LastName = lastname;
                row.Email = email;
                row.Phone = phone;
                row.ServiceType = ServiceType;
                row.CreatedDate = DateTime.Now;
                context.LandingPages.Add(row);
                context.SaveChanges();
                saved = true;
            }
            return saved;

        }

        internal bool SavePpa(string name, string email, string phone)
        {
            throw new NotImplementedException();
        }

        internal bool Landing(string firstname, string email, string phone, string comment, string serviceType)
        {
            throw new NotImplementedException();
        }

        //internal bool Landing(string firstname, string email, string phone, string serviceType)
        //{
        //    throw new NotImplementedException();
        //}
    }
}