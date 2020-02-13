This project allows you to pseudo-compile source code
using the standard build systems
and defer the actual compilation to runtime.

## How to use

```bash
export PATH=/path/to/instantcompile/bin:$PATH
export CC=cc

make # or whatever you use to normally build your source code
```

Using this setup produces .o files and executables that all contain source code
with references to the original source files,
so any change to sources will be used for the next execution.
