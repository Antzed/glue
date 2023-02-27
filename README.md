# Read me

This is a small script that i created to combine n numbers amount of previous commands together.

This is designed for the moment when you type a bunch of commands and you go: "I really wish i could just combine all i've just typed into one command

## Install

```bash
git clone https://github.com/Antzed/glue.git
cd glue
. ./install.sh
```

## Use

after you typed a bunch of command, in this case i'm going to use git as an example:

```bash
git add .
git commit -m "ha, i commited"
git push
```
you will then do:

```bash
glue 3
```
and then it will ask you to enter a name for this new combined command, so you will type a name
```bash
Enter the name for the new file: <the name you thought of>
```

and then it will install it for you.


