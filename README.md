# dotfiles

### Git ignore files. ###
# It’s safe to make all projects ignore all files called tags. I recommend setting up a global git ignore list.
echo "tags" >> ~/.global_ignore
git config --global core.excludesfile $HOME/.global_ignore

### CTags ###
Refer: https://ricostacruz.com/til/navigate-code-with-ctags
Troubleshoot: when "Ctags -R ." if you get illegal option -R then refer https://gist.github.com/nazgob/1570678

### Auto update ctag files ###
Use vim-autotag to automatically update tags files. This will only work on projects that have already had ctags -R performed before.
Refer: https://github.com/craigemery/vim-autotag
