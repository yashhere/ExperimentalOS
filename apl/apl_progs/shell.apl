integer main() {
    integer status;
    string input;

    print("shell:-$");
    read(input);

    while(input != "exit") do
        status = Fork();
        if(status == -2) then
            status = Exec(input);

            if(status == -1) then
                print("Exec failed");
            endif;
        endif;

        if(status == -1) then
            print("Fork failed");

        else
            status = Wait(status);
        endif;

        print("shell:-$");
        read(input);
    endwhile;

    print("Shell exiting");
    return 0;
}
