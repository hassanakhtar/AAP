using AAP.Web.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebMatrix.WebData;

namespace AAP.Web.Security
{
	public class AuthorizeAttribute : System.Web.Mvc.AuthorizeAttribute
	{
		public AuthorizeAttribute()
		{
		}

		protected override bool AuthorizeCore(HttpContextBase httpContext)
		{
			if (!WebSecurity.IsAuthenticated)
			{
				WebSecurity.Logout();
				return false;
			}

			return base.AuthorizeCore(httpContext);
		}

		public override void OnAuthorization(AuthorizationContext filterContext)
		{
			base.OnAuthorization(filterContext);
		}

		protected override void HandleUnauthorizedRequest(AuthorizationContext filterContext)
		{
			filterContext.Result = new AjaxAwareRedirectResult("/account/login");
		}
	}
}