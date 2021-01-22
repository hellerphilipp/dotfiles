# .dotfiles

Dotfiles for my Mac.

## Setup a new Mac

- Update Apple Software: `sudo softwareupdate -i -a`

- Install Dev Tools: `xcode-select --install`

- Configure iCloud and Internet Account Settings in System Preferences
  
  * iCloud: Disable all but "Notes" and "Find My Mac"
  
  * Google: Disable all but "Contacts"
* Map Caps Lock to Esc
- Open Finder once to create its configuration

- Clone this repo and exec bootstrap.sh
  
  ```
  # clone this repo & cd into it
  git clone https://github.com/hellerphilipp/dotfiles.git ~/.dotfiles && cd ~/.dotfiles
  
  # make it executable & run it
  chmod +x *.sh && ./setup.sh
  ```

- Install Vim plugins: `:PlugInstall`

- Restart the system

- Configure display scaling

- Enable Finder integrations under System Preferences > Extensions

- Disable Guest User under System Preferences > Users & Groups

- [Generate a new SSH key and add it to the ssh-agent](https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

- Setup applications
  
  - Alfred
  
  - iTerm2
    
    - Set settings to load from ./iterm2/
  
  - Google Chrome
    
    - Sign in to Google
  
  - Mimestream
  
  - CoconutBattery
  
  - Rocket
  
  - Magnet
  
  - TermHere
  
  - Bartender
  
  - Google Drive / Backup and Sync
  
  - Adobe Creative Cloud
  
  - Spotify
    
    - Setup Local Files
    
    - Set stream quality
  
  - Signal
  
  - Wire
  
  - WhatsApp

- Manually install [Mimestream](https://mimestream.com/download)

- Configure Finder sidebar icons

- Configure Menubar icons in Bartender

- Associate the new SSH and GPG keys [GitHub](https://github.com/settings/keys) 
  
  * Copy SSH key
    
    ```bash
    # Copy the public key from the file
    pbcopy < ~/.ssh/id_ed25519.pub
    ```
  - Copy GPG key
    
    ```shell
    # List GPG keys
    gpg --list-secret-keys --keyid-format LONG
    
    # Make Git sign commits by default
    git config --global user.signingkey <key-ID>
    git config --global commit.gpgsign true
    
    # Copy key to clipboard
    gpg --armor --export <key-ID> | pbcopy
    ```

## Keep the repo up to date

### New Brews installed

1. Run `brew bundle dump` inside of the repo's root directory to update the Brewfile

### Track new configuration files

> ***Source**: [orrsella/dotfiles](https://github.com/orrsella/dotfiles)*
> 
> ---
> 
> To add a new .file (or any other config file for that matter):
> 
> 1. Copy the existing file to anywhere in the repo, chose the most logical path (the place you save the file in the repo doesn't have to correspond to the actual real path on the system where the original file is – chose whatever's most convenient for you). It makes sense to group multiple related files into appropriately named folders. File names must be identical to the actual ones on the system.
> 
> 2. Add a new entry to the `links` file. The format is:
> 
> ```
> /path/on/system/.my-file1, /path/in/repo/.my-file1
> /path/on/system/with\ space/.my-file2 /path/in/repo/.my-file2
> ```
> 
> See `links` for more details and examples.
