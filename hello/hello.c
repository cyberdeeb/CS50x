#include <stdio.h>
#include <cs50.h>

int main(void)
{
    //Get user input for name
    string name = get_string("What is your name? \n");

    //Print "Hello, 'user input'"
    printf("Hello, %s\n", name);

}
