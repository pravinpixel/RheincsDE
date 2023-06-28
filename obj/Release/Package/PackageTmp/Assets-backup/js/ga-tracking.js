jQuery(document).ready(function ($) {
    RCS = {
        analytics: {
            init: function () {
                this.initPageInteraction();
                this.initHomeVideo();
                this.initContactClicked();
                this.initHeader();
                this.initFooter();
                this.initCareers();
                this.initOther();
                console.log("Analytics init");
            },
            getEventType: function (t) {
                _type = "Click";
                switch (t) {
                    case "c": case "C": _type = "Click"; break;
                    case "p": case "P": _type = "Played"; break;
                }
                return _type;
            },
            addNewEvent: function (Category, Action, Label) {
                __gaTracker('send', 'event', Category, Action, Label);
            },
            addHomeVideoEvent: function (Title) {
                if (GetCurrentULRName() == "index")
                    this.addNewEvent("Home-Video", Title, "Played");
                else
                    this.addNewEvent("Video", Title, "Played");
            },
            initHomeVideo: function () {
                $(".ETvideo").click(function (e) {
                    RCS.analytics.addHomeVideoEvent($(this).attr["title"]);
                });
            },
            initContactClicked: function () {
                $(".ETcallout").click(function (e) {
                    RCS.analytics.addNewEvent("Contact-Click", GetCurrentULRName(), "Click");
                });
            }
            ,
            contactSubmit: function () {
                this.addNewEvent("Contact-Submit", GetCurrentULRName(), "Submit");
            },
            initPageInteraction: function () {
                Frequency = 25;
                GA_EventCategory = 'Page Interaction';
                GA_EventAction = 'Scroll Down';
                _frequency = Frequency;
                _repentance = 100 / Frequency;
                var _scrollMatrix = new Array();
                for (ix = 0; ix < _repentance; ix++) {
                    _scrollMatrix[ix] = [_frequency, 'false'];
                    _frequency = Frequency + _frequency;
                }
                _scrollMatrix[0][1] = 'true';
                RCS.analytics.addNewEvent(GA_EventCategory, GetCurrentULRName(), _scrollMatrix[0][0] + '%');

                $(window).scroll(function (e) {
                    for (iz = 0; iz < _scrollMatrix.length; iz++) {
                        if (($(window).scrollTop() + $(window).height() >= $(document).height() * _scrollMatrix[iz][0] / 100) && (_scrollMatrix[iz][1] == 'false')) {
                            _scrollMatrix[iz][1] = 'true';
                            RCS.analytics.addNewEvent(GA_EventCategory, GetCurrentULRName(), _scrollMatrix[iz][0] + '%');
                        }
                    }
                });

            },
            initHeader: function () {
                $(".ETlogo").click(function (e) {
                    RCS.analytics.addNewEvent("Logo", GetCurrentULRName(), "Click");
                });
                $(".ETMenu a").click(function (e) {
                    _pagename=$(this).text();
                    RCS.analytics.addNewEvent("Menu-Click", _pagename , GetCurrentULRName());
                });
                $(".ETMenu a").hover(function (e) {
                   _pagename = $(this).text();
                    RCS.analytics.addNewEvent("Menu-Over", _pagename, GetCurrentULRName());
                });
                $("#search_box_container input[type=text]").on("keypress", function (e) {
                    if (e.which == 13) {
                        RCS.analytics.addNewEvent("Search", $(this).val() , "");
                    }
                    else
                        RCS.analytics.addNewEvent("Search-Started", GetCurrentULRName(), "");
                });
                

                                
            },
            initOther: function () {
                $(".ETleadership").click(function (e) {
                    _pagename = $(this).attr("title");
                    RCS.analytics.addNewEvent("Leadership", _pagename, "Click");
                });
                $(".ETleadershipemail").click(function (e) {
                    _pagename = $(this).attr("title");
                    RCS.analytics.addNewEvent("Leadership-Email", _pagename, "Click");
                });
                $(".ETepicor").click(function (e) {
                    _pagename = $(this).attr("title");
                    RCS.analytics.addNewEvent("EPICOR", _pagename, "Click");
                });
                $(".ETnews").click(function (e) {
                    _pagename = $(this).attr("title");
                    RCS.analytics.addNewEvent("News", _pagename, "Click");
                });
                $(".ETmicrosoft").click(function (e) {
                    _pagename = $(this).attr("title");
                    RCS.analytics.addNewEvent("Microsoft-Technology", _pagename, "Click");
                });
                $(".ETsmall").click(function (e) {
                    _pagename = $(this).attr("title");
                    RCS.analytics.addNewEvent("Small-Business", _pagename, "Click");
                });
                $(".ETmid").click(function (e) {
                    _pagename = $(this).attr("title");
                    RCS.analytics.addNewEvent("Mid-Market-Companies", _pagename, "Click");
                });
                $(".ETenterprise").click(function (e) {
                    _pagename = $(this).attr("title");
                    RCS.analytics.addNewEvent("Enterprise", _pagename, "Click");
                });
                $(".ET-hbanner").click(function (e) {
                    _pagename = $(this).attr("title");
                    RCS.analytics.addNewEvent("Home-Banner-Smallbusiness", _pagename, "Click");
                });
                $(".ET-hbanner1").click(function (e) {
                    _pagename = $(this).attr("title");
                    RCS.analytics.addNewEvent("Home-Banner-Midmarket", _pagename, "Click");
                });
                $(".ET-hbanner2").click(function (e) {
                    _pagename = $(this).attr("title");
                    RCS.analytics.addNewEvent("Home-Banner-Enterprise", _pagename, "Click");
                });
                $(".ET-hbanner3").click(function (e) {
                    _pagename = $(this).attr("title");
                    RCS.analytics.addNewEvent("Home-Banner-Microsoft", _pagename, "Click");
                });
                $(".ET-hbanner4").click(function (e) {
                    _pagename = $(this).attr("title");
                    RCS.analytics.addNewEvent("Home-Banner-Contact", _pagename, "Click");
                });
                $(".ETjobfilter").click(function (e) {
                    _pagename = $(this).attr("id");
                    RCS.analytics.addNewEvent("Jobfilter", _pagename, "Click");
                });
                 $(".ETjobsearch_keywords").click(function (e) {
                    _pagename = $(this).attr("id");
                    RCS.analytics.addNewEvent("Job search keywords", _pagename, "Click");
                });
                 $(".ETjobsearch_location").click(function (e) {
                    _pagename = $(this).attr("id");
                    RCS.analytics.addNewEvent("Job search location", _pagename, "Click");
                });
            },
            AMSsubmit:function(){
                RCS.analytics.addNewEvent("AMS-Submit", GetCurrentULRName(), "Submit");
            },
            contactMapClick: function (val) {
                RCS.analytics.addNewEvent("Map", val, "Click");
            },
            initCareers: function () {
                $(".ETopenings").on("click", function (e) {
                    console.log("in")
                    _title = $(this).attr("title");
                    console.log(_title)
                    RCS.analytics.addNewEvent("Careers", _title, "Click");
                });
                $(".ETapplynow").click(function (e) {
                    _title = $(this).attr("title");
                    RCS.analytics.addNewEvent("Careers-Apply", _title, "Click");
                });
                $(".ETAMS").click(function (e) {
                    RCS.analytics.addNewEvent("AMS", GetCurrentULRName(), "Click");
                });
              
            },
            initFooter: function () {
                $(".ETsocialicon").click(function (e) {
                    _title = $(this).attr("title");
                  RCS.analytics.addNewEvent("Social", _title, "Click");
                });
                $(".ETdownload").click(function (e) {
                    RCS.analytics.addNewEvent("Downloads", "EPICOR Partner Enablement Program", "Click");
                });
                $(".ETtopconsultant").click(function (e) {
                    RCS.analytics.addNewEvent("Top Consultant", GetCurrentULRName(), "Click");
                });
            }

        }
    };


    function GetCurrentULRName() {
        var pathArray = location.pathname.split('/');
        var filename = (pathArray[1].length > 2) ? pathArray[1] : "index";
        return filename;

    }

    RCS.analytics.init();
});