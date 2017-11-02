using Exf.InvAppr.Data.Entities;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exf.InvAppr.Data.Models
{
    public class UserModel
    {
        public string Id { get; set; }

        [Required]
        [Display(Name = "Display Name")]
        public string DisplayName { get; set; }

        [Display(Name = "Email address")]
        [Required(ErrorMessage = "The email address is required")]
        [EmailAddress(ErrorMessage = "Invalid Email Address")]
        public string EmailAddress { get; set; }

        [Required(ErrorMessage = "The user roles is required")]
        public string Role { get; set; }

        [Required]
        [StringLength(100, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 6)]
        [DataType(DataType.Password)]
        [Display(Name = "Password")]
        public string Password { get; set; }


        [DataType(DataType.Password)]
        [Display(Name = "Confirm password")]
        [Compare("Password", ErrorMessage = "The password and confirmation password do not match.")]
        public string ConfirmPassword { get; set; }

        [Required(ErrorMessage = "User account approver is required.")]
        public ApplicationUser AccountApprover { get; set; }

        [EnsureOneElement(ErrorMessage = "At least a region is required.")]
        public IList<Region> Regions { get; set; }

        public bool IsRegionsUpdated { get; set; }

        public bool IsRolesUpdated { get; set; }

        [Required(ErrorMessage = "Default region is required.")]
        public Region DefaultRegion { get; set; }


    }
}
