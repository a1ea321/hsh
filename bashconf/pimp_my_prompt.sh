force_color_prompt=YES

git_branch() {                                                                  
    git branch 2> /dev/null |                                                   
                                                                                
    # filter out other branches                                                 
    sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'                                       
                                                                                
    # show first 6 characters of branch name                                    
    # sed -r 's/^(.{6}).*$/\1.../'                                              
}                                                                               

shortened_pwd() {                                                               
    pwd |                                                                       
                                                                                
    # Show home folder as ~                                                     
    sed "s|^$HOME|~|" |                                                         
                                                                                
    # Cut out the middle, if path is too long                                   
    sed -r 's/^(\/*[^\/]*\/[^\/]*\/).*(\/[^\/]*)$/\1...\2/'                     
    # Alternative: sed -r 's/^(.{6}).{3}.*(.{6})$/\1...\2/'                     
}    

GREEN="\[$(tput setaf 2)\]"                                                     
BLUE="\[$(tput setaf 4)\]"                                                     
MAGENTA="\[$(tput setaf 13)\]"                                                      
WHITE="\[$(tput setaf 15)\]"                                                     
BOLD="\[$(tput bold)\]"                                                     
RESET="\[$(tput sgr0)\]"                                                        

# Username and hostname
PS1="${GREEN}${BOLD}\u@\h${RESET}"                                                     

# Separator
PS1="$PS1:"

# Working directory
PS1="$PS1${BLUE}${BOLD}\$(shortened_pwd)${RESET}"                                   

# Git branch, if possible
PS1="$PS1${MAGENTA}\$(git_branch)${RESET}"                                         

# Perhaps TODO: If PS1 is 60% of current screen width, add a \n in between.

# Mark the end
PS1="$PS1\$ "
