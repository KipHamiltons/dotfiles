if ! which rg;
then
	echo "RIPGREP AIN'T INSTALLED. Fix that."
	exit 1
fi

if ! which nvim;
then
	echo "NVIM AIN'T INSTALLED. Fix that."
	exit 1
fi

cp -R $(dirname $0)/.config/* $HOME/.config

PACKER_PATH="$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim"

mkdir -p $PACKER_PATH

git clone --depth 1 https://github.com/wbthomason/packer.nvim $PACKER_PATH

nvim +PackerSync

echo 'alias vi=nvim' >> ~/.bashrc
echo 'alias vim=nvim' >> ~/.bashrc

