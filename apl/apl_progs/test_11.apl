integer main()
{
    integer pid;
    // print("Before fork");

    pid = Fork();

    // print("After fork");
    print(pid);

    pid = Fork();

    print(pid);

    pid = Getpid();
    pid = Wait(pid);

    pid = Fork();

    pid = Getpid();

    print(pid);


    return 0;
}
