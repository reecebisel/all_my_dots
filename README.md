To use this just run:
```
git clone git@gitlab.com:reecebisel/all_my_dots.git 
```
Then create symlinks for your `bash_profile` && `vimrc` using:
```
ln -s path/to/all_my_dots/vimrc ~/.vimrc
ln -s path/to/all_my_dots/bash_profile ~/.bash_profile
```
Also create symlinks for the `~/.vim/bundle` && `~/.vim/colors` as this can sometime cause issues with vundle.
```
ln -s path/to/all_my_dots/vim/bundle ~/.vim/bundle
ln -s path/to/all_my_dots/vim/colors ~/.vim/colors
```
Finally run: 
```
echo source ~/.bash_profile > ~/.bashrc
```

Here is a quick view of what my bash profile looks like. 
![bash preview](bash_preview.png)

Here is a quick view of the vim setup with my selected theme
![vim preview](vim_preview.png)
