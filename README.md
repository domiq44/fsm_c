
I saw something cool in the [GSL github page](https://github.com/imatix/gsl). You will find it in the folder called **examples**.

It is a Finite State Machine (FSM) written in Scalable C (see [Pieter Hintjens](https://en.wikipedia.org/wiki/Pieter_Hintjens)) generated by GSL tool ([iMatix](https://github.com/imatix)).

Scalable C can be found [here](https://legacy.gitbook.com/book/hintjens/scalable-c/details).

But, to play with it, it is necessary to install a certain number of libraries, and more particularly, the [libzmq](https://github.com/zeromq/libzmq) and [CZMQ](https://github.com/zeromq/czmq) libraries.

Since I did not want to do all of this stuff, I preferred to create this small patch allowing to compile it simply, and then to play with it quickly.

Have fun with this tool to understand how it works.

Note: Makefile has been built following documentation found here : [Introduction à Makefile - GL - Developpez.com](https://www.google.fr/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&cad=rja&uact=8&ved=2ahUKEwiIzMvO7fLoAhV18OAKHdWjB2AQFjAAegQIARAB&url=https%3A%2F%2Fgl.developpez.com%2Ftutoriel%2Foutil%2Fmakefile%2F&usg=AOvVaw0Jj5I61wLifQf7nR-tPdzL).

