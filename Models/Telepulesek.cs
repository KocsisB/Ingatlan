using System;
using System.Collections.Generic;

namespace dlblakaskulcs.Models;

public partial class Telepulesek
{
    public int Id { get; set; }

    public string? Varosok { get; set; }

    public string Megye { get; set; } = null!;
}
