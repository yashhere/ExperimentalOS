decl
    integer status, a, b, c;
enddecl

integer main()
{
    a = Create("a.dat");
    print(a);
    b = Open("a.dat");
    print(b);
    status = Delete("a.dat");
    print(status);
    c = Close(b);
    print(c);
    status = Delete("a.dat");
    print(status);

    return 0;
}
