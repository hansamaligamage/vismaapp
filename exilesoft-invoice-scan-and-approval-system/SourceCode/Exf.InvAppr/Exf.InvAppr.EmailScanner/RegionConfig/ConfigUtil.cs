using System;

namespace Exf.InvAppr.EmailScanner.RegionConfig
{
    public class ConfigUtil
    {
        internal static VoucherInfo GetEmailDetailsByAddress(string toAddress, RegionsCollection regions)
        {
            //System.Diagnostics.Debugger.Launch();
            VoucherInfo voucherInfo = null;

            try
            {
                    foreach (Region region in regions)
                    {
                        foreach (Email item in region)
                        {
                            if (toAddress.ToLower() == item.Address.ToLower())
                            {
                                return new VoucherInfo
                                {
                                    VoucherType = item.Voucher,
                                    Region = region.Name
                                };
                            }
                        }
                    }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return voucherInfo;
        }
    }
}
