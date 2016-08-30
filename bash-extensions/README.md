# bash-extensions
Bash-extensions is a way to split your __.bashrc__ into little pieces. It loads files matching ~/.bash-extensions/*.bashext into the .bashrc

## Installation

``` shell
# Clone this repository into your home dir
git clone https://github.com/Basask/bash-extensions.git ~/bash-extensions

# Backup the current .bashrc
cp ~/.bashrc ~/.bashrc.backup

# Replace the current bashrc with bash-extensions .bashrc
cp ~/bash-extensions/.bashrc ~/.bashrc

```

You will probably need to migrate some configurations already present in your old __.bashrc__.


## Adding new configurations

By default the bash-extension comes with the configs I use.
Feel free to delete or add your own configs (It's very personal though :yum:)

To Create a new config just create a file with ___.bashext___ extension in ~/bash-extensions directory.
All instructions in this file will be loaded into your __.bashrc__

Alternatively you can just copy an existing config and change it.

You need to reload your bash to changes to take effect.

``` shell
# Reload bashrc
source ~/.bashrc
```
