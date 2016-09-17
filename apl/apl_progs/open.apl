decl
    integer a, b;
    integer status;
enddecl

integer main()
{
    status = Create("File.dat");
    a = Open("File.dat");
    b = Close(a);
    return 0;
}
