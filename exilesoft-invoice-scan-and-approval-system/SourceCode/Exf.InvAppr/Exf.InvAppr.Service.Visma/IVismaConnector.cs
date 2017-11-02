using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Exf.InvAppr.Service.Visma.Dto;
using Exf.InvAppr.Data.Entities;

namespace Exf.InvAppr.Service.Visma
{
    public interface IVismaConnector
    {
        List<Account> GetGeneralLedgers();


        List<Account> GetAccounts();


        List<EntityBase> GetDepartments();


        List<EntityBase> GetProjects();


        List<EntityBase> GetStaff();

        List<EntityBase> GetCostAllocation();


        List<EntityBase> GetTaxCodes();


        List<EntityBase> GetcurrencyList();

        List<Account> GetSuppliers();

        bool SaveVoucher(ICollection<AccountMapping> mappingList);

   }
}
