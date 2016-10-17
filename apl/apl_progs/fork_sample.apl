integer main()
{
    integer pid;
    print ("Before Fork");

    pid = Fork();
    print(pid);

    breakpoint;
    pid = Fork();
    print(pid);
    print("here");


    pid = Fork();
    print(pid);

    breakpoint;
    pid = Fork();
    print(pid);

    print("aFTER");
    integer e,a;

    if(pid == -2) then
        print("Child");
        a=1;
        while(a<=20) do
            print(a);
            a=a+2;
        endwhile;

    else
        print("Parent");

        a=2;
        while(a<=20) do
            print(a);
            a=a+2;
        endwhile;
    endif;
    return 0;
}
