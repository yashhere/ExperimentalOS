decl
    integer pid,i,s;
enddecl
integer main()
{
    pid = Fork();
    pid = Fork();
    pid = Fork();
    pid = Fork();
    pid = Fork();
    pid = Exec("odd.xsm");
    return 0;
}
