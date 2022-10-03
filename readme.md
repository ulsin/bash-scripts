## readme

These are bash scripts that i source in my `.bashrc` with a command like this:

```bash
# sourcing files in bash functions, only reading files that end i .sh
for f in ~/code/bash-scripts/*; do if [[ $f == *.sh ]]; then source $f; fi; done
```

If you clone it down to a different folder then make sure to change the path in the above command.