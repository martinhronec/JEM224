## Installation, setup & getting help

* check if installed in terminal/command-line by `git --version`
* [official source](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
    * you can go with the *Git Credential Manager Core* option
* register a [Github](https://github.com/) account
* set up your Git using `git config`
    * name: `git config --global user.name "<your name>"`
    * email: `git config --global user.email <your email>`
    * text editor: `git config --global core.editor "code --wait" (for VS code)`
    * diff tool:  `git config --global merge.tool vimdiff`
        * don't worry about the diff tool, we will talk about it later
* configuration variables stored in 3 different places:
    * /etc/gitconfig file - values for every user on the system and all repositories
        * `git config --system`
    * ~/.gitconfig file - specific to the user
        * `git config --global`
    * .git/config in the specific repository
        * each level overrides values in the previous level
        
* check your settings using `git config --list` or `git config <specific key>` 
 
* to get help even offline use`git help <verb>` or `git <verb> --help`
    * e.g. `git help config`