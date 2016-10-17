integer main()
{
    integer pid;

    print ("Before Fork");
    pid = Fork();
    integer e,a;
    if(pid == -2) then
        e = Exec("odd.xsm");
        print(e);
    else
        a=0;
        while(a<=10) do
            print(a);
            a=a+2;
        endwhile;
    endif;
    return 0;
}
