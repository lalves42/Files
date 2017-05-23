echo Creating NewProject $1
mkdir ~/Incoming/$1
mkdir ~/Incoming/$1/src
mkdir ~/Incoming/$1/inc
cp -R ~/42Projects/Libft ~/Incoming/$1/libft
cp ~/.Files/Makefile ~/.Files/auteur ~/Incoming/$1
rm -rf ~/Incoming/$1/libft/.git
