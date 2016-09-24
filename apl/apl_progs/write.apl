integer main()
{
    integer a, x, descriptor;
    x = Create("write.dat");
    descriptor = Open("write.dat");

    a = Write(descriptor,"Yash");
    a = Write(descriptor, "Agarwal");
    return 0;
}
