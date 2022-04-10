#include <cs50.h>
#include <stdio.h>
#include <string.h>
#include <math.h>


int main(void)
{
    //Prompt for text
    string t = get_string("Text: ");
    printf("%s\n", t);

    //# of letter in text
    int letters = 0;
    //# of words in text
    int words = 1;
    //# of sentences in text
    int sentences = 0;

    for (int i = 0; i < strlen(t); i++)
    {
        if ((t[i] >= 'a' && t[i] <= 'z') ||
            (t[i] >= 'A' && t[i] <= 'Z'))
        {
            letters++;
        }

        if (t[i] == ' ')
        {
            words++;
        }

        if ((t[i] == '.') || (t[i] == '!') || (t[i] == '?'))
        {
            sentences++;
        }
    }

    //printf("%i letters\n", letters);
    //printf("%i words\n", words);
    //printf("%i sentences\n", sentences);

    //Coleman-Liau index
    float grade = 0.0588 * (100 * ((float)letters / (float)words)) - 0.296 * (100 * ((float)sentences / (float)words)) - 15.8;
    if (grade < 1)
    {
        printf("Before Grade 1\n");
    }
    else if (grade >= 16)
    {
        printf("Grade 16+\n");
    }
    else
    {
        printf("Grade %.f\n", grade);
    }
}
