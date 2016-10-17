decl
    integer status;
enddecl
integer main()
{
    print("current pid");
    status = Getpid();
    print(status);

    print("parent pid");
    status = Getppid();
    print(status);

    print("before fork");
    status = Fork();
    print(status);
    print("after fork");

    if (status == -2) then
        print(" Exec in action");
        status = Exec("odd.xsm");
    endif;

    print("Parent process.");
    return 0;
}
