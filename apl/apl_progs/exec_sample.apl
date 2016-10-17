integer main()
{
    integer pid;

    print ("Before Fork");
    pid = Fork();
    integer e,a;
    if(pid == -2) then
        print("hello");
        e = Exec("odd.xsm");
    else
        a=0;
        print("hello1");
        while(a<=20) do
            print(a);
            a=a+2;
        endwhile;
    endif;
    return 0;
}
