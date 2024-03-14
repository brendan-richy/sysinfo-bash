# Bash System Monitor - Overview

This is a simple command-line powered system monitor that keeps a tab on important information about your system such as CPU temperature, memory load, and charging status.

This project is to help increase my understanding of using bash scripts in the command line, and learn about package managers and distributing software with other people.

[Software Demo Video](http://youtube.link.goes.here)

# Usage

After downloading navigate to the directory containing [install.sh](https://github.com/brendan-richy/sysinfo-bash/blob/main/install.sh), run:

```bash
sudo ./install.sh
```

This will add all files to /bin/sysinfo-bash and alias 'sysinfo' to run [main.sh](https://github.com/brendan-richy/sysinfo-bash/blob/main/main.sh)

To run sysinfo, enter

```bash
sysinfo
```

# Development Environment

This project was written in Visual Studio Code, in Ubuntu 22.04.4. Tested in shell.

Written in bash using no libraries.

# Useful Websites

- [How to program with Bash, Syntax &](https://opensource.com/article/19/10/programming-bash-syntax-tools)
- [Introduction to the command-line interface](https://tutorial.djangogirls.org/en/intro_to_command_line/)

# Future Work

- Increase scope and accuracy of collected information
- Run in the background and alert user if stats are outside of acceptable range
- Better compatibility with other non-kde desktop environments.