decl
    integer status, a, b, c, i;
enddecl

integer main()
{
    a = Create("a.dat");
    print(a);
    a = Create("b.dat");
    print(a);
    b = Open("a.dat");
    print(b);
    c = Open("b.dat");
    print(c);
    while i < 100 do
        a = Write(b, i);
        i = i + 1;
    endwhile;
    status = Delete("a.dat");
    print(status);
    i = Close(b);
    print(i);
    status = Delete("a.dat");
    print("deleting");
    print(status);
    i = Close(c);
    print(i);
    status = Delete("b.dat");
    print("deleting");
    print(status);

    return 0;
}
