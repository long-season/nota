# nota
An educational music theory 'mini-game' in Scheme

Nota is written in Chicken Scheme. It's possible (and probably a future goal) to make it somewhat portable by replacing the 'random' library with a function written in pure Scheme, finding a better way to iterate over the symbols in the alist, and adopting R5RS I/O.

## Running
### REPL
The Chicken interpreter needs to be up and running in your platform of choice.

It can then be run directly with: `csi -s nota.scm`

Or alternatively, loaded from within the interpreter: `#;1> (load "nota.scm")`

### Compiled 
(The compiled version currently fails to build).

Nota can be built to an executable using the Chicken compiler, `csc`. 

To do this, clone the repo and run `make -k` inside the project folder.




