# steamcmd_quick_game_install

A tool that will setup steamcmd, create a user space for a specific game, and download the game to a specific location. For many games this is all you need to get it running. You can re-run the script over and over and it is designed not to screw anything up it has already done (like make user accounts, etc.). This means you can run this script over with the same settings to update the game.

## How to use

clone the repo, enter the directory to find the script

```
user@testscript:~$ git clone https://github.com/tylerwight/steamcmd_quick_game_install
Cloning into 'steamcmd_quick_game_install'...
remote: Enumerating objects: 12, done.
remote: Counting objects: 100% (12/12), done.
remote: Compressing objects: 100% (9/9), done.
remote: Total 12 (delta 3), reused 12 (delta 3), pack-reused 0
Unpacking objects: 100% (12/12), 2.15 KiB | 733.00 KiB/s, done.

user@testscript:~$ cd steamcmd_quick_game_install/
user@testscript:~/steamcmd_quick_game_install$ ls
steamcmd_quick_game_install.sh
```

edit the script with a text editor, in this case nano

```
user@testscript:~/steamcmd_quick_game_install$ nano steamcmd_quick_game_install.sh

```

change the 3 variables at the top as per the comments

![image](https://user-images.githubusercontent.com/27289794/123318700-be006780-d4ec-11eb-81f2-bd57ac338999.png)


save and then run the script



