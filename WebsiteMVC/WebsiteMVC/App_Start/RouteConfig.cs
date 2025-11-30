using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace WebsiteMVC
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            var adminRoute = routes.MapRoute(
                name: "Admin",
                url: "admin/{controller}/{action}/{id}",
                defaults: new { area = "AdminCP", controller = "Login", action = "Index", id = UrlParameter.Optional },
                namespaces: new[] { "WebsiteMVC.Areas.AdminCP.Controllers" }
            );
            adminRoute.DataTokens = new RouteValueDictionary(new { area = "AdminCP" });

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { area = "", controller = "House", action = "Index", id = UrlParameter.Optional },
                namespaces: new string[] { "WebsiteMVC.Controllers" }
            );
        }
    }
}
