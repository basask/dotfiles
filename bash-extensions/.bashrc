#!/bin/bash

# Extensions repository path
EXTREPO=~/bash-extensions

# Test extensions repository
if [ -e $EXTREPO ]; then
  for ext in $EXTREPO/*.bashext
  do
      source $ext
  done
else
  echo "$EXTREPO not found."
  echo "Point \$EXTREPO variable to your bashext repository or clone bash-extensions into $EXTREPO with the command"
  echo "    $ git clone https://github.com/Basask/bash-extensions $EXTREPO"
fi


