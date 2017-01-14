# vim_tmux_config
My Vim Tmux Configureation

# pre-requirements
1. Install vundle
 ```
 git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 
 ```

2. Install TPM tmux plugin manager
 ```
 git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
 ```

3. Copy configure file
 ```
 cp -t ~/ .vimrc .tmux.conf
 ```

4. Open Vime and install plugins
 ```
 :PluginInstall
 ```
5. Reload TMUX
 ```
 # type this in terminal if tmux is already running
 $ tmux source ~/.tmux.conf
 ```
 Press prefix + I (capital I, as in Install) to fetch the plugin.
 TPM [Link](https://github.com/tmux-plugins/tpm)
