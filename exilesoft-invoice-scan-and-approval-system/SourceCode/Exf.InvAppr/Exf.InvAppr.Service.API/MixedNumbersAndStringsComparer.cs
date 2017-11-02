using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Exf.InvAppr.Service.API
{
    public class MixedNumbersAndStringsComparer:IComparer<string>
    {
        public int Compare(string x, string y)
        {
            int xVal, yVal;

            if (int.TryParse(x, out xVal) && int.TryParse(y, out yVal))
                return xVal.CompareTo(yVal);
            else
                return string.Compare(x, y);
        }
    }
}