# use with https://github.com/casey/just
#

# define a variable or two
root_dir := "create"

list-files:
  ls -al

create-directories:
  mkdir -vp {{ root_dir }}/some/path/

touch-files:
  #!/usr/bin/env bash
  for i in one two three four five; do
    touch {{ root_dir }}/some/path/${i}
  done
        
clean-up:
  rm -Rvf {{ root_dir }}


all: list-files create-directories touch-files clean-up