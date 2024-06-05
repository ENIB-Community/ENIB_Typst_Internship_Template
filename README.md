# Typst Intership Template

<!-- This sentence is from the typst repo -->
> [Typst](https://github.com/typst/typst) is a new markup-based typesetting system
> that is designed to be as powerful as LaTeX while being much easier to learn and use.
I recommend that you check it out, if you don't know it yet.

This repo contains a template for ENIB internship reports. 

## Install typst

Either:

- Get an executable from the [Typst releases page](https://github.com/typst/typst/releases).
- Install [cargo](https://doc.rust-lang.org/cargo/getting-started/installation.html) and then run `cargo install --locked --git https://github.com/typst/typst typst-cli` (this will compile the latest version of typst).

## Build the document

```shell
typst compile main.typ main.pdf
```

If you want to edit your internship report and get a (nearly) instant feedback: run `typst watch main.typ`.

> NOTE: `typst watch` does not recompile the whole pdf each time you make a document change to the source files. It use incremental compilation, meaning `typst watch` recompile only the Abstract Syntax Tree part that need recompiling.
