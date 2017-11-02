using Exf.InvAppr.Data.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exf.InvAppr.Data.Repository
{
    interface IRepository<T>
    {

        IEnumerable<T> GetAll();
        void Insert(T entity);
    }
}
