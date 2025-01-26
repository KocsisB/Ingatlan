using System;
using System.Collections.Generic;

namespace dlblakaskulcs.Models;

public partial class FelhasznaloBejelentkeze
{
    public string BejelentkezoSzolgaltato { get; set; } = null!;

    public string SzolgaltatoKulcs { get; set; } = null!;

    public string? SzolgaltatoMegjelenitettNev { get; set; }

    public string FelhasznaloId { get; set; } = null!;
}
