using System;
using System.Collections.Generic;

namespace DLB_backend.Models;

public partial class Felhasznalok
{
    public int Id { get; set; }

    public string Nev { get; set; } = null!;

    public string Email { get; set; } = null!;

    public string Jelszo { get; set; } = null!;
}
