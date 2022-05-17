# Randomized_String_Generator
This shell script generates a randomized string from a given alphabets. The script takes count, length and string parameters as input. The strings are generated according to the following rules:

1. The string shall have a length no more than the specified length.
2. There may be any number of character substrings. However at no time the length of such a substring may exceed the count. So with count 4 and with alphabet a, b we may have any number of character strings like a, aa, aaa, b, bb, bbb appearing anywhere in the final string.
3. There are 2 random number generators. The first one determines the character to be repeated and the second one determines the number of times it repeated.
