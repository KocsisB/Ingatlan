﻿using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace dlb_lakaskulcs.Models;

public partial class DlbLakaskulcsContext : DbContext
{
    public DlbLakaskulcsContext()
    {
    }

    public DlbLakaskulcsContext(DbContextOptions<DlbLakaskulcsContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Ingatlanok> Ingatlanoks { get; set; }

    public virtual DbSet<Jogihatter> Jogihatters { get; set; }

    public virtual DbSet<Telepulesek> Telepuleseks { get; set; }

    public virtual DbSet<Tulajdonosok> Tulajdonosoks { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseMySQL("server=localhost;database=dlb_lakaskulcs;user=root;password=;sslmode=none;");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Ingatlanok>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PRIMARY");

            entity.ToTable("ingatlanok");

            entity.Property(e => e.Id)
                .HasColumnType("int(11)")
                .HasColumnName("id");
            entity.Property(e => e.Alapterulet)
                .HasPrecision(10)
                .HasColumnName("alapterulet");
            entity.Property(e => e.Allapot)
                .HasMaxLength(255)
                .HasDefaultValueSql("'NULL'")
                .HasColumnName("allapot");
            entity.Property(e => e.Cim)
                .HasMaxLength(255)
                .HasColumnName("cim");
            entity.Property(e => e.EpitesVege)
                .HasDefaultValueSql("'NULL'")
                .HasColumnType("int(11)")
                .HasColumnName("epites_vege");
            entity.Property(e => e.KepUrl)
                .HasMaxLength(255)
                .HasDefaultValueSql("'NULL'")
                .HasColumnName("kep_url");
            entity.Property(e => e.SzobakSzama)
                .HasColumnType("int(11)")
                .HasColumnName("szobak_szama");
            entity.Property(e => e.TelekMerete)
                .HasPrecision(10)
                .HasDefaultValueSql("'NULL'")
                .HasColumnName("telek_merete");
            entity.Property(e => e.Tipus)
                .HasMaxLength(255)
                .HasDefaultValueSql("'NULL'")
                .HasColumnName("tipus");
            entity.Property(e => e.Varos)
                .HasMaxLength(20)
                .HasColumnName("varos");
        });

        modelBuilder.Entity<Jogihatter>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PRIMARY");

            entity.ToTable("jogihatters");

            entity.HasIndex(e => e.IngatlanId, "ingatlan_id");

            entity.Property(e => e.Id)
                .HasColumnType("int(11)")
                .HasColumnName("id");
            entity.Property(e => e.DokumentumDatum)
                .HasDefaultValueSql("'NULL'")
                .HasColumnType("date")
                .HasColumnName("dokumentum_datum");
            entity.Property(e => e.DokumentumTipus)
                .HasMaxLength(255)
                .HasColumnName("dokumentum_tipus");
            entity.Property(e => e.DokumentumUrl)
                .HasMaxLength(255)
                .HasDefaultValueSql("'NULL'")
                .HasColumnName("dokumentum_url");
            entity.Property(e => e.IngatlanId)
                .HasDefaultValueSql("'NULL'")
                .HasColumnType("int(11)")
                .HasColumnName("ingatlan_id");

            entity.HasOne(d => d.Ingatlan).WithMany(p => p.Jogihatters)
                .HasForeignKey(d => d.IngatlanId)
                .OnDelete(DeleteBehavior.Restrict)
                .HasConstraintName("jogihatters_ibfk_1");
        });

        modelBuilder.Entity<Telepulesek>(entity =>
        {
            entity
                .HasNoKey()
                .ToTable("telepulesek");

            entity.Property(e => e.Id)
                .HasDefaultValueSql("'NULL'")
                .HasColumnType("int(255)")
                .HasColumnName("id");
            entity.Property(e => e.Varosok)
                .HasMaxLength(255)
                .HasDefaultValueSql("'NULL'")
                .HasColumnName("varosok");
        });

        modelBuilder.Entity<Tulajdonosok>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PRIMARY");

            entity.ToTable("tulajdonosok");

            entity.HasIndex(e => e.IngatlanId, "ingatlan_id");

            entity.Property(e => e.Id)
                .HasColumnType("int(11)")
                .HasColumnName("id");
            entity.Property(e => e.Email)
                .HasMaxLength(255)
                .HasDefaultValueSql("'NULL'")
                .HasColumnName("email");
            entity.Property(e => e.IngatlanId)
                .HasDefaultValueSql("'NULL'")
                .HasColumnType("int(11)")
                .HasColumnName("ingatlan_id");
            entity.Property(e => e.Nev)
                .HasMaxLength(255)
                .HasColumnName("nev");
            entity.Property(e => e.Telefon)
                .HasMaxLength(15)
                .HasDefaultValueSql("'NULL'")
                .HasColumnName("telefon");

            entity.HasOne(d => d.Ingatlan).WithMany(p => p.Tulajdonosoks)
                .HasForeignKey(d => d.IngatlanId)
                .OnDelete(DeleteBehavior.Restrict)
                .HasConstraintName("tulajdonosok_ibfk_1");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}