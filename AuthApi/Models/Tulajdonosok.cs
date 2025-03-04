using System;
using System.Collections.Generic;

namespace AuthApi.Models
{

    public partial class Tulajdonosok
    {
        public int Id { get; set; }

        public int? IngatlanId { get; set; }

        public string Nev { get; set; } = null!;

        public string? Email { get; set; }

        public string? Telefon { get; set; }
    }
}
