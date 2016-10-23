integer main()
{
    integer childpid, retval;
    childpid = Fork();
    print(childpid);
    return 0;
}
