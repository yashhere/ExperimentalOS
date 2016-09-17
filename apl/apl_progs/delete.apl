decl
    integer status, a;
enddecl

integer main()
{
    status = Delete("a.dat");
    print(status);
    return 0;
}
