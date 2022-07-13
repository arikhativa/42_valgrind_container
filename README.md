# 42 valgrind
a container with valgrind

## How to use
* look for the blue application called Docker in your Mac and click on it.
* after it started go to the terminal:
```bash
git clone <repo>
cd <repo>
make run
make enter

also:
make stop # (to stop the container)
```

after these cmds you will be inside the container.
your fs (file system) should me iside the container as well
you can run valgrind <your-exec> and see what happens.
```
valgrind ./a.out
```
NOTE - sometims you will need to compile inside the container since the container is not MAC os.
good luck!
