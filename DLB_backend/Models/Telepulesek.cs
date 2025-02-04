using System;
using System.Collections.Generic;

namespace DLB_backend.Models;

public partial class Telepulesek
{
    public int Id { get; set; }

    public string? Varosok { get; set; }

    public string Megye { get; set; } = null!;
}
