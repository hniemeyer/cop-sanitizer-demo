# Valgrind

Memcheck and leak check can be run via (memcheck is the default tool and does not need to be specified):

```
valgrind --leak-check=full ./programm 
```

Thread behavior can be checked via:

```
valgrind --tool=drd ./programm
valgrind --tool=helgrind ./programm
```