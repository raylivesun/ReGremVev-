# ReGremVev! ([rlang](https://rlang.r-lib.org/))

The selected code is a function named containsSubstring that checks if a given string (str) contains a specific substring (substr). The function performs a case-insensitive comparison by converting both the input string and the substring to lowercase.

Here's a step-by-step explanation of the selected code:

1. The function takes two parameters: str (the input string) and substr (the substring to search for).
2. It allocates memory for two new strings, lowercaseStr and lowercaseSubstr, using strdup to duplicate the input strings.
3. It iterates over each character in lowercaseStr and lowercaseSubstr using a pointer c. For each character, it converts it to lowercase using the tolower function.
4. It uses the strstr function to find the first occurrence of lowercaseSubstr within lowercaseStr. The function returns a pointer to the first occurrence or NULL if the substring is not found.
5. After the search, it frees the allocated memory for lowercaseStr and lowercaseSubstr using free.
6. Finally, the function returns true if the substring is found (i.e., if found is not NULL), and false otherwise.


This function can be used to check if a given string contains a specific substring in a case-insensitive manner.


The selected code within the open file is the main function. This function is the entry point of the C++ program. It initializes two character arrays, str and substr, with the strings "Hello, World!" and "world" respectively.

The containsSubstring function is then called with str and substr as arguments. This function checks if the string str contains the substring substr by converting both strings to lowercase and using the strstr function to find the first occurrence of the substring in the string.

If the substring is found, the program prints a message indicating that str contains the substring substr. Otherwise, it prints a message indicating that str does not contain the substring substr.

Finally, the program returns 0 to indicate that it has executed successfully.

# Makefiles 
```makefile
CXX = g++
CXXFLAGS = -Wall -Werror -Wextra -pedantic -std=c++17 main.cpp
LDFLAGS =  main.cpp

SRC = 
OBJ = $(SRC:.cc=.o)
EXEC = 'regremvev!'

all: $(EXEC)

$(EXEC): $(OBJ)
	$(CXX) $(LDFLAGS) -o $@ $(OBJ) $(LBLIBS)

clean:
	rm -rf $(OBJ) $(EXEC)
```

# C++ Library Reference
```c++
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
```

# install makefile
$-> make all

