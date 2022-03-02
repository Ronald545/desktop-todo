dev :
	reflex -r main.go -s -- go run main.go

package :
	fyne package --icon icon.png --name desktop-todo main.go && mv desktop-todo.tar.xz bin
	fpm -s tar -t deb bin/desktop-todo.tar.xz && mv *.deb bin
	fpm -s tar -t pacman bin/desktop-todo.tar.xz && mv *.pkg.tar.zst bin

build :
	go build main.go && mv main bin
