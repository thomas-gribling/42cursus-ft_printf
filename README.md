<h1 align="center">
        ft_printf
</h1>

<p align="center">
        <i>42 cursus - Rank 1</i><br>
        Final grade: <b>100/100</b>
</p>

# 📝 Subject
This project consists in recoding the `printf` function in a simplified way. The function must be prototyped like following:<br>
```c
int  ft_printf(const char *, ...);
```
This project introduces us to **variadic functions**, which we recognize by the three dots in the arguments, meaning we can provide as much arguments as we want.

Like the original `printf`, we must be able to display the content of the string passed in argument, but also manage the following conversions:<br>
- %c: character
- %s: string
- %p: pointer's address
- %d / %i: integer
- %u: unsigned integer
- %x / %X: hexadecimal (with the letters capitalized or not, following the one we use)
- %%: displays a percentage

Except for `%%`, any conversion must use the next variadic argument. So the first conversion of the string will take the first argument, etc...

Example:
```c
input:  ft_printf("Hello %s%c Welcome to %d school! %u%% quality school!", "World", '!', 42, 100);
output: "Hello World! Welcome to 42 school! 100% quality school!"
```
Finally, we must manage the return value of `printf`, which is basically the total length of the displayed string.

The bonus for this project consists in managing the following flags from the original function: `#` ` ` `.` `-` `+` `0`.<br>
Most of these flags are used for text padding.

# 🖥️ Usage
To compile the project, you simply need to type `make` in your shell terminal.<br>
You will get a library you can use for your projects.

To use this function in your own projects, you must copy the library and include its header:
```c
#include <ft_printf.h>
```
