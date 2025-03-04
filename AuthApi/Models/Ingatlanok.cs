using System;
using System.Collections.Generic;
using System.Text.Json.Serialization;

namespace AuthApi.Models
{

    public partial class Ingatlanok
    {
        public int Id { get; set; }

        public string Cim { get; set; } = null!;

        public decimal Alapterulet { get; set; }

        public int SzobakSzama { get; set; }

        public decimal? TelekMerete { get; set; }

        public int? EpitesVege { get; set; }

        public string? Allapot { get; set; }

        public string? KepUrl { get; set; }

        public string? Tipus { get; set; }

        public string Varos { get; set; } = null!;

        public string Megye { get; set; } = null!;

        public int Ar { get; set; }
        public bool Berelheto {  get; set; }
        public bool Eladható { get; set; }

        public string UserId { get; set; }

        [JsonIgnore]
        public virtual ApplicationUser? User { get; set; }

    }
}
