using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Exf.InvAppr.Service.API.Models
{
    public class ResetPasswordModel
    {
        [Display(Name = "Email address")]
        [Required(ErrorMessage = "The username(email) is required")]
        [EmailAddress(ErrorMessage = "Invalid Email Address. Username should be an email.")]
        public string Username { get; set; }

        [Required]
        [StringLength(100, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 6)]
        [DataType(DataType.Password)]
        [Display(Name = "Password")]
        public string Password { get; set; }

        [DataType(DataType.Password)]
        [Display(Name = "Confirm password")]
        [Compare("Password", ErrorMessage = "The password and confirmation password do not match.")]
        public string ConfirmPassword { get; set; }

        public string ResetToken { get; set; }
    }
}