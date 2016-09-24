integer main()
{
    integer a, x, descriptor;
    //x = Create("write.dat");
    descriptor = Open("write.dat");

    a = Write(descriptor, "Yash");
    a = Write(descriptor, "Agarwal");
    a = Seek(descriptor, 10);
    string b;
    a = Read(descriptor,b);
    print(b);
    return 0;
}
