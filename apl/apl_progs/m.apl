decl
integer pid;
enddecl
integer main()
{
pid=Fork();
pid=Fork();
pid=Fork();
pid=Fork();
pid=Fork();
pid=Exec("hello.xsm");
return 0;
}
