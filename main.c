#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <stdlib.h>

void encrypt(char *string, int offset) {
    unsigned len = strlen(string);
    for (int i = 0; i < len; ++i) {
        char cha = string[i]; //create a local var of the character to save assignment and typing, will set to in string later
        tolower(cha); // set the character to lower case
        if (isalpha(cha) == 0) { //skip if the character is not alphabetical
            continue;
        }
        if (cha + offset > 'z') {
            cha = 'a' + (offset - ('z' - cha) - 1);
        } else {
            cha += offset;
        }

        string[i] = cha;
    }
}

void decrypt(char *string, int offset) {
    unsigned len = strlen(string);
    for (int i = 0; i < len; ++i) {
        char cha = string[i]; //create a local var of the character to save assignment and typing, will set to in string later
        tolower(cha); // set the character to lower case
        if (isalpha(cha) == 0) { //skip if the character is not alphabetical
            continue;
        }
        if (cha - offset < 'a') {
            cha = 'z' - (offset - (cha - 'a') - 1);
        } else {
            cha -= offset;
        }

        string[i] = cha;
    }
}


int main(int argc, char *argv[]) {
    setbuf(stdout, NULL);

    //caeser -d/e/b "string" offset
    //   0      1       2       3

    if (argc == 1) {
        printf("Format: caeser -c/-d/-b \"string\" offset\n");
        printf("-d: decrypt. Subtracts the offset from the characters.\n");
        printf("-e: encrypt. Adds the offset to the characters.\n");
        printf("-b: brute-force. Decrypts with all offsets from 0-25, and prints them out.\n\n");

        printf("String. The string to be worked on. If it contains spaces, enclose in double quotes.\n\n");

        printf("Offset. The amount to encrypt or decrypt by. Unnecessary for brute-force mode.\n\n");
        return 1;
    }

    if (argc < 3) {
        printf("Incorrect number of arguments. Provide no argument for help.\n");
        return 1;
    }

    //get the string to use from the third argument
    unsigned len = strlen(argv[2]);
    char str[len];
    strcpy(str, argv[2]);

    int offset;


    if (argv[1][0] == '-' && argv[1][1] == 'e') {
        //encrypt
        offset = strtol(argv[3], NULL, 10);
        encrypt(str, offset);
        puts(str);
    }
    if (argv[1][0] == '-' && argv[1][1] == 'd') {
        //decrypt
        offset = strtol(argv[3], NULL, 10);
        decrypt(str, offset);
        puts(str);
    }
    if (argv[1][0] == '-' && argv[1][1] == 'b') {
        //brute force
        char hold[len]; //keeps hold of original as encrypt/decrypt works in place
        strcpy(hold, str);
        for (int i = 0; i < 26; ++i) {
            decrypt(str, i);
            printf("Offset: %02d. Result: %s\n", i, str);
            strcpy(str, hold);
        }

    }


}
