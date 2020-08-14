# shells
A repository of scripts I've used on Mac (and now Arch btw)




# instmob
(tifu and made my phone unresponsive & unrestorable using itunes/finder)
~~~~
./instmob.sh 
* installs libimobiledevice, idevicerestore,
libusbmuxd, automake, cython, gnutls, libgcrypt, libzip
* needs git + homebrew
~~~~

# setup
~~~~
./setup.sh
* explains new command to
launch docker machine as an 
executable
* for example, i have a kali docker that i use
and i can just type "kali" in my terminal
~~~~

# mkcmd
~~~~
mkcmd [-option] [args]

options:
-p : from pre-existing file
-n : create new file

args:
either the pre-existing file path or the name of the new command

* puts either a new or pre-existing script into /usr/local/bin (which makes execution just.. so much not annoying when you're cluttered and you use it a lot..)
~~~~

# fastmake
~~~~
im just fucking lazy.

fastmake (needs make)

opens a prompt that looks like this :
fastmake>

each arg you type is a directory accessible from your cwd and will make & make install everything
in those folders
~~~~
