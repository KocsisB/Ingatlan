using System;
using System.Collections.Generic;

namespace dlblakaskulcs.Models;

public partial class Felhasznalok
{
    public int Id { get; set; }

    public string Nev { get; set; } = null!;

    public string Email { get; set; } = null!;

    public string Jelszo { get; set; } = null!;

    public DateTime RegDatum { get; set; }
}
