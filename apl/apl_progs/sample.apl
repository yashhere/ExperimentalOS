integer main()
{
    integer childpid, i, retval;
    i = 0;
    childpid = Fork();
    if(childpid == -2) then
        retval = Exec("odd.xsm");
    else
        retval = Exec("even.xsm");
    endif;
    return 0;
}
