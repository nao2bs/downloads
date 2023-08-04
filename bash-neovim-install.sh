# https://www.axon.jp/entry/2018/11/15/115134
# curl -OL https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.tar.gz
# tar zxf nvim-linux64.tar.gz
# sudo mv ./nvim-linux64/bin/nvim /usr/local/bin/
# sudo -p /usr/share
# sudo cp -r ./nvim-linux64/share/* /usr/share/


# debian on Devpod
tar zxf nvim-linux64.tar.gz
mv ./nvim-linux64/bin/nvim /usr/local/bin/
cp -r ./nvim-linux64/share/* /usr/share/
# .bashrcに以下を書き込む
# export VIMRUNTIME=/usr/share/nvim/runtime 
# 読み込む
# resource .bashrc
