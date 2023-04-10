if ! which rg;
then
	echo "RIPGREP AIN'T INSTALLED. Fix that."
	exit 1
fi
PACKER_PATH="$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim"

mkdir -p $PACKER_PATH

git clone --depth 1 https://github.com/wbthomason/packer.nvim $PACKER_PATH

