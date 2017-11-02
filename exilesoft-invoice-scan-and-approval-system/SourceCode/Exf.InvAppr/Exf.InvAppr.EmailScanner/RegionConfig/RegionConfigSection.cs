using System.Configuration;

namespace Exf.InvAppr.EmailScanner.RegionConfig
{
    public class Email : ConfigurationElement
    {
        [ConfigurationProperty("address", IsRequired = true)]
        public string Address
        {
            get
            {
                return (string)this["address"];
            }
            set
            {
                this["address"] = value;
            }
        }

        [ConfigurationProperty("voucher", IsRequired = true)]
        public string Voucher
        {
            get
            {
                return (string)this["voucher"];
            }
            set
            {
                this["voucher"] = value;
            }
        }
    }

    public class Region : ConfigurationElementCollection
    {
        [ConfigurationProperty("name", IsRequired = true, IsKey = true)]
        public string Name
        {
            get
            {
                return (string)this["name"];
            }
            set
            {
                this["name"] = value;
            }
        }

        protected override ConfigurationElement CreateNewElement()
        {
            return new Email();
        }

        public void AddEmail(Email email)
        {
            LockItem = false;
            BaseAdd(email);
        }

        protected override object GetElementKey(ConfigurationElement element)
        {
            return (element as Email).Address;
        }

        public Region()
        {
            AddElementName = "Email";
        }
    }

    public class RegionsCollection : ConfigurationElementCollection
    {

        protected override ConfigurationElement CreateNewElement()
        {
            return new Region();
        }

        protected override object GetElementKey(ConfigurationElement element)
        {
            return (element as Region).Name;
        }

        public void AddNewRegion(Region region)
        {
            LockItem = false;
            BaseAdd(region);
        }

        public RegionsCollection()
        {
            AddElementName = "Region";
        }
    }

    public class RegionConfigSection : ConfigurationSection
    {
        [ConfigurationProperty("Regions", IsRequired = true)]
        public RegionsCollection Regions
        {
            get
            {
                return base["Regions"] as RegionsCollection;
            }
        }
    }
}
