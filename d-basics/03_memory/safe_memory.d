import std.stdio : writeln;
import core.stdc.stdlib : free;

void safeFun() @safe
{
    writeln("Hello World");
    // allocating memory with the GC is safe too
    int* p = new int;
    //int* fiddling = p + 5;
}

void unsafeFun()
{
    int* p1 = new int;
    int* fiddling = p1 + 5;
    //free(p1);
}

void main()
{
    safeFun();
    unsafeFun();
}
