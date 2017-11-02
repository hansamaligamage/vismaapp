using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exf.InvAppr.Common
{
    public enum VoucherStatus
    {
        [Description("To Be Verified")]
        ToBeVerified,
        [Description("Verified")]
        Verified,
        [Description("Verifier Rejected")]
        VerifierRejected,
        [Description("Verifier More Info Requested")]
        VerifierMoreInfoRequested,
        [Description("Approved")]
        Approved,
        [Description("Approver Rejected")]
        ApproverRejected,
        [Description("Approver More Info Requested")]
        ApproverMoreInfoRequested,
        [Description("Transferred")]
        Transferred
    }

    public enum VoucherType
    {
        Invoice
    }

    public enum UserRoles
    {
        Admin,
        Approver,
        Verifier
    }

    public enum AccountStatus
    {
        None,
        InProgerss,
        Completed
    }

}
