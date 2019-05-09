find . -name "preinstall.sh" -print0 |
while IFS= read -r -d $'\0' line; do
    sh $line
done

find . -name "install.sh" -print0 |
while IFS= read -r -d $'\0' line; do
    sh $line
done

echo "Setting up Dotfiles"
folder=$(cd "$(dirname "$0")" ; pwd -P)
ln -s $folder/.zshrc ~/.zshrc