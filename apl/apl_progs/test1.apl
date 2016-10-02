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

    a = Close(des1);
    a = Close(des2);
    a = Close(des3);
    a = Close(des4);
    return 0;
}
