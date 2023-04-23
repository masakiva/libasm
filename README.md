# libasm

This is a project for the 42 curriculum, in which you are asked to implement a small library of basic functions using Assembly language. The library should be called `libasm` and should contain the following functions:

- `ft_strlen`
- `ft_strcpy`
- `ft_strcmp`
- `ft_strdup`
- `ft_read`
- `ft_write`

Sure, here's an updated version of the `Getting Started` section that includes information about the `nasm` assembler:

### Getting Started

Before you can build the library, you will need to ensure that the `nasm` assembler is installed on your system. You can install it using the following command on Debian-based systems:

```
sudo apt-get install nasm
```

Once you have `nasm` installed, you can clone this repository and navigate to the project directory:

```
git clone https://github.com/masakiva/libasm.git
cd libasm
```

You can then build the library using the following command:

```
make
```

This will assemble the source code for the library and create a static library file named `libasm.a`.

I left the main_* files in the repository, you can use them to test the functions.
