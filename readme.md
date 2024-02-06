# Overview
WAT is 
the human-readable text representation of WebAssembly 
code. It serves as an intermediate representation
that can be easily read and written by developers, 
providing a bridge between the binary WebAssembly 
format and high-level programming languages. 
While developers will usually not write code 
directly in WAT, it is fun and has a very 
functional feeling! 🤠

# Running Examples
Each directory in the top-level directory has a 
WebAssembly binary file `example.wat` and a 
corresponding JavaScript test file `example-test.js`.

Use your preferred toolchain (e.g. 
[wabt](https://github.com/WebAssembly/wabt)) 
to compile the WebAssembly binary from the 
corresponding Wat file.

```
wat2wasm example.wat
```

This creates a file `example.wasm` in the same 
directory which `example-test.js` expects to find this
file in its directory. To test the WASM a recent Node.js
installation is required, and then it can be run with:

```
node example-test.js  
```
