# Random Reader

Some scripts to make it easier to read random old journal entries.

## Install

- Add something like the following to your `.bashrc` or `.bash_profile`:

```bash
alias random-file="bash ~/path/to/random-reader/random-file.sh"
alias random-write="bash ~/path/to/random-reader/write.sh"
alias til-read="random-file '*.md' ~/path/to/til | xargs cat"
alias til="random-write ~/path/to/til"
```