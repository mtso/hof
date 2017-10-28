import std.stdio;

int delegate(int) add(int x)
{
    return delegate(int y) { return x + y; };
}

void each(int[] list, void function(int) callback)
{
    foreach (item; list)
    {
        callback(item);
    }
}

void main()
{
    writef("%d\n", add(1)(2));
    each([1, 2, 3], function void(int n) { writef("%d\n", n); });
}
