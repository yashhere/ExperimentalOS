integer main()
{
    integer status;
    print("current pid");
    status = Getpid();
    print(status);

    print("parent pid");
    status = Getppid();
    print(status);
    print("");

    print(1);
    print(3);
    print(5);
    print(7);
    print(9);
    return 0;
}
