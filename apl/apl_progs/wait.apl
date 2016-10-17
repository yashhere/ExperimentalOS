integer main() {
    integer status;
    status = Wait(0);
    // print(status);
    print("on waiting");
    status = Signal();
    print("releasing");
    print(status);
    return 0;
}
