decl
    integer des1, des2, des3, des4, des5, des6, des7, i, a, b, c;
    string value;
enddecl

integer main()
{
    des1 = Open("1.dat");
    des2 = Open("2.dat");
    des3 = Open("3.dat");
    des4 = Open("4.dat");

    a = Create("temp1.dat");
    des5 = Open("temp1.dat");

    a = Create("temp2.dat");
    des6 = Open("temp2.dat");

    a = Seek(des1, 0);
    a = Seek(des2, 0);
    a = Seek(des3, 0);
    a = Seek(des4, 0);

    i = 0;
    while i < 25 do
        a = Read(des1, value);
        a = Write(des5, value);

        b = Read(des2, value);
        b = Write(des5, value);

        a = Read(des3, value);
        a = Write(des6, value);

        b = Read(des4, value);
        b = Write(des6, value);
        i = i + 1;
    endwhile;

    a = Close(des1);
    a = Close(des2);
    a = Close(des3);
    a = Close(des4);

    a = Seek(des5, 0);
    a = Seek(des6, 0);

    a = Create("temp.dat");
    des7 = Open("temp.dat");

    i = 0;
    while i < 50 do
        a = Read(des5, value);
        a = Write(des7, value);

        b = Read(des6, value);
        b = Write(des7, value);
        i = i + 1;
    endwhile;

    a = Close(des5);
    print("closing temp1");
    print(a);
    a = Close(des6);
    print("closing temp2");
    print(a);

    a = Close(des7);
    print("closing temp");
    print(a);

    a = Delete("temp1.dat");
    a = Delete("temp2.dat");
    return 0;
}
