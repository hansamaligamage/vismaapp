using Exf.InvAppr.Data.Context;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Exf.InvAppr.Data.Entities;
using System.Data.Entity;

namespace Exf.InvAppr.Data.Repository
{
    class VoucherRepository : IRepository<Voucher>, IDisposable
    {
        protected DbSet<Voucher> vouchersDataSet;
        private AuthContext _dbContext;

        public VoucherRepository(AuthContext _authContext)
        {
            try
            {
                vouchersDataSet = _authContext.Set<Voucher>();
            }
            catch (Exception ex)
            {

                System.Diagnostics.Trace.TraceError(ex.ToString());
            }
        }
        public void Dispose()
        {

        }

        public IEnumerable<Voucher> GetAll()
        {
           //return _ctx.Vouchers.Where(vc => vc.Status.Equals(status));
           return vouchersDataSet;
        }

        public void Insert(Voucher entity)
        {
            vouchersDataSet.Add(entity);
        }  
    }
}
