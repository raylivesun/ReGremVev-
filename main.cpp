#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>


// Function to check if a string contains a substring
bool containsSubstring(const char* str, const char* substr) {
    // Convert both strings to lowercase for case-insensitive comparison
    char* lowercaseStr = strdup(str);
    char* lowercaseSubstr = strdup(substr);
    for (char* c = lowercaseStr; *c != '\0'; ++c) {
        *c = tolower(*c);
    }
    for (char* c = lowercaseSubstr; *c != '\0'; ++c) {
        *c = tolower(*c);
    }

    // Find the first occurrence of the substring in the string
    const char* found = strstr(lowercaseStr, lowercaseSubstr);
    free(lowercaseStr);
    free(lowercaseSubstr);

    // Return true if the substring is found, false otherwise
    return found != NULL;
}


int main() {
    char str[] = "Hello, World!";
    char substr[] = "world";

    if (containsSubstring(str, substr)) {
        printf("%s contains the substring %s\n", str, substr);
    } else {
        printf("%s does not contain the substring %s\n", str, substr);
    }

    return 0;
}
