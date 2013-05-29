using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using AAP.Web.Filters;

namespace AAP.Web.Controllers
{
	[InitializeSimpleMembership]
    public class BaseController : Controller
    {
		// common controller stuff if required
    }
}
