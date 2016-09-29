decl
    integer des1, des2, des3, des4, des5, des6, des7, i, a, b, c;
    string value;
enddecl

integer main()
{
    a = Create("1.dat");
    des1 = Open("1.dat");

    a = Create("2.dat");
    des2 = Open("2.dat");

    a = Create("3.dat");
    des3 = Open("3.dat");

    a = Create("4.dat");
    des4 = Open("4.dat");

    i = 0;
    while i < 100 do
        a = Write(des1, i);
        a = Write(des2, i + 1);
        a = Write(des3, i + 2);
        a = Write(des4, i + 3);

        i = i + 4;
    endwhile;

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
    a = Close(des6);

    a = Delete("temp1.dat");
    a = Delete("temp2.dat");

    return 0;
}
