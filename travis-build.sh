#! /bin/sh

apt-get --yes update
apt-get --yes install wget equivs curl git

git_version=$(git rev-parse --short HEAD)

> config printf "%s\n" \
	"Section: misc" \
	"Priority: optional" \
	"Homepage: https://nxos.org" \
	"Package: nitrux-live-user-minimal" \
	"Version: 0.0.2-$git_version" \
	"Maintainer: Luis Lavaire <llavaire01@gmail.com>" \
	"Depends: adduser" \
	"Conflicts: nitrux-live-user" \
	"Architecture: all" \
	"Postinst: postinst" \
	"Postrm: postrm" \
	"Description: Default user for the Nitrux system."

equivs-build config
