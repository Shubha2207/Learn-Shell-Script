# Automation using Shell Scripting

## Overview

https://guide.bash.academy/
https://www.youtube.com/watch?v=x7dNujJOQLc&list=PL2qzCKTbjutJRM7K_hhNyvf8sfGCLklXw&index=3

### What is Automation?

Completing task with less or without manual intervention

### What is Shell Scripting?

Group of commmands written in a sequency to complete the regular/repetitive task.

### What is Shell?

It is a program/interpreter that provides an interface between user and OS kernel.
OS starts shell for each user when he/she opens a terminal or login to system.

Shells on UNIX/Linux OS:

+ Bash Shell
+ Sh Shell
+ Ksh Shell
+ C Shell etc

Shells on Windows OS :

+ Command Shell
+ Power Shell

Shells on MAC OS:

+ Zsh Shell

When you type any command in terminal, the command is given to OS to perform required operation. The computer program that does this task is Shell.

To check which shell you are using
> which $SHELL

To check all available shells
> cat /etc/shells

### Bash Shell

Advanced Shell.
Default shell for unix/linux system.
sh-compatible shell that incorporates useful feature of Korn Shell (Ksh) and C Shell (Csh)

+ #!/bin/bash

Shebang line. It is the first line of script file.
It tells the OS which interpreter to use to parse the script.

You can create file with/without .sh extension to write script.
To execute shell script

> /bin/bash shell_script.sh

> bash shell_script.sh

> ./shell_script.sh

Provide execution permission

> chmod +x shell_script.sh

## Concepts

### How to run user defined shell script as a system command?

Eg. Get free RAM size using shell-command and run it as a system command

```bash
#!/bin/bash

free -m 

```

If run `which ls` command, you will see the ls executable is in `bin` folder. So if we copy our bash file at this location, we can use the script as a system command.

Another way is to create your own directory eg `/home/user/custom_shell/bin` and create script there without .sh extension.
And provide the path in system-variable PATH.

> export PATH=${PATH}:/home/user/custom_shell/bin
// This path is temporarily added.

## Hello World! program in shell

```bash
#!/bin/bash
echo "Hello, World!"
```

echo command works differently with double-quote, single-quote and no quotes

> echo "$(ls)"

display output of ls cmd

> echo '$(ls)'

display $(ls), considered as string and not expression

> echo $(ls)

display output of ls command

So if you want to display the output of another command use double-quotes around the expression.

> chmod +x file_name.sh
> ./file_name.sh


> /bin/echo --help
Use this command to get more details about echo

### Variables in Shell

```bash
#!/bin/bash

num=100
first_name="John"

# Single Line Comment
#last_name="Rudd"

# Multi Line Comments

<< Comments
echo "The way to add"
echo "multi-line command is"
echo "less than symbol twice then a literal"
echo "and same literal at the end"
Comments

echo "Display Variables"
echo "Num: ${num}"
echo "First Name: ${first_name}"

# To enable echo command to recognize \n character use -e option

echo -e "Num: ${num} \nFirst Name: ${first_name}"

```

While defining variables, there shouldn't be any space on either sides of `=` symbol

if variable is not present, then shell will return empty value and not the error.

Variable name should start with either letter or underscore symbol only. And variable name can only contain a-z, A-Z, 0-9 and _ character . Shell script is case sensitive.



## Extras

### bin vs sbin

/sbin contains utilities that would normally only be run by a sysadmin with root, and /bin contains everything else.

## Interactive and Non-Interactive Shells

An interactive shell reads user input typed on a keyboard. Commands run in the current shell and the system waits for further instructions from the user. A Bash shell is an interactive shell.

A non-interactive shell executes commands read from a file in a new subshell. The shell executes commands from the file and exits. Init, startup, and executed shell scripts start non-interactive shells.

## Login Shell vs Non-Login Shell

> echo $0
tells you if you are in login/non-login shell
if output contains -bash then it's interactive-login shell else interactive non-login shell.

Shell is called as:

Login shell if the user:

Logs in from the terminal remotely (for example, via SSH).
Logs in from the terminal locally (for example, using the login command).
Launches Bash with the -l option (bash -l).

So before typing commands we need to provide username and password.
eg. ssh to another server

Non-login shell if the user:

First opens the terminal.
Opens a new terminal tab.
Launches Bash from a login shell with the bash command.

So before typing command, we don't have to privide any credentials because linux system has already completed the authentication.
eg. normal linux terminal


### .bashrc and .bash_profile

The .bashrc and .bash_profile startup files help customize the Unix command-line environment. The configuration files hold useful custom information, such as PATH directories, command aliases, and custom styles.

.bashrc defines the settings for a user when running a subshell. Add custom configurations to this file to make parameters available in subshells for a specific user.  The file executes automatically in both interactive and non-interactive non-login shells(subshell).

.bash_profile defines the settings for a user when running a login shell. Add custom configurations to this file to make parameters available to a specific user when running a login shell.  The file automatically executes in Bash interactive login shells.
We can add script in .bash_profile to force reading .bashrc in an interactive login shell.

After modifying .bashrc or .bash_profile files, you need to run below command to update the latest changes

> source ~/.bash_profile

### Linux Commands

> https://www.youtube.com/watch?v=JMT5CGFxa_4&list=PLy7Kah3WzqrHPrgkBgwzXyfDDCvthdUfl


> cmd --help
get more details about command

> uname
Writes to std output the name of OS

> which
to search the list of paths in the $PATH environment variable and outputs the full path

> history
history of commands used

> free -m
RAM storage details
