## hsh 
hsh stands for "~ sweet ~".

#### Initial setup:

Clone this repo to anywhere but `~/.hsh` and make a symlink to it from `~/.hsh`.
Run the scripts in `~/.hsh/init`. Their order is important and not documented
heh heh he.

If you have `~/.hsh_confidential` pointing to a valid `hsh_confidential`
directory, good for you. Otherwise create the structure by:

    mkdir -p ~/.hsh_confidential/{bashconf,link_at_home}
    touch ~/.hsh_confidential/launch_list

Note that if everything works as intended, your bash history will go to
`~/.hsh_confidential/link_at_home`. So if you don't have a valid
`hsh_confidential` directory structure, at least that would 

#### Structure:

`~/.hsh_confidential` contains the stuff that could not be in this repo due to
privacy reasons but is in fact a part of `hsh`.

Example contents:
```
/home/a1ea321/.hsh_confidential/
├── bashconf
│   └── servers.sh → Aliases to IP addresses of my servers
├── launch_list → Commands I don't want to put into a public repo 
└── link_at_home
    ├── .eternal_bash_history
    └── .ssh
        ├── authorized_keys
        ├── id_rsa
        ├── id_rsa.pub
        └── known_hosts
```

`~/.hsh` and `~/.hsh/confidential` have a similar structure. `~/.hsh/bashconf`
contains bash "shorthands", as you can see in this repo; whereas
`~/.hsh_confidential/bashconf` contains private shorthands, such as aliases for
IPs of the user's private computers. Or for instance
`~/.hsh_confidential/link_at_home/.ssh` is supposed to be pointed to by the
symlink `~/.ssh` (`~/.hsh/init/init_hsh_confidential.sh` creates this link).
That directory surely shouldn't be on Github.
