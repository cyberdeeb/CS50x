#include <cs50.h>
#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <stdlib.h>

//Prototypes
bool only_digits(string key);

int main(int argc, string argv[])
{
    //Verifying there is only one command line argumnent
    if (argc != 2)
    {
        printf("Usage: ./caesar key\n");
        return 1;
    }

    string key = argv[1];
    if (only_digits(key) == 1)
    {
        return 1;
    }

    //Get Plaintext
    string plaintext = get_string("plaintext:  ");

    //Convert key to an integer
    int k = atoi(key);
    printf("ciphertext: ");

    //Calculate Ciphertext
    for (int i = 0; i < strlen(plaintext); i++)
    {
        if (isupper(plaintext[i]))
        {
            printf("%c", (((plaintext[i] - 65) + k) % 26) + 65);
        }
        else if (islower(plaintext[i]))
        {
            printf("%c", (((plaintext[i] - 97) + k) % 26) + 97);
        }
        else
        {
            printf("%c", plaintext[i]);
        }
    }
    printf("\n");
}

//Function verifying that user only inputs int
bool only_digits(string key)
{
    for (int i = 0; i < strlen(key); i++)
    {
        if (!isdigit(key[i]))
        {
            printf("Usage: ./caesar key\n");
            return 1;
        }
    }
    return 0;
}

