#include <iostream>

template <class T>
void each(T array[], int size, void (*callback)(T))
{
    for (int i = 0; i < size; i++)
    {
        callback(array[i]);
    }
}

template <class T>
void print(T n)
{
    std::cout << n << std::endl;
}

const int SIZE = 3;

int main()
{
    int array[SIZE] = {1, 2, 3};
    each<int>(array, SIZE, print);
}
