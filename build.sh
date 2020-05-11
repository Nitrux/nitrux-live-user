git_version=$(git rev-parse --short HEAD)

> config printf "%s\n" \
	"Section: misc" \
	"Priority: optional" \
	"Homepage: https://nxos.org" \
	"Package: nitrux-live-user" \
	"Version: 0.0.1-$git_version" \
	"Maintainer: Luis Lavaire <llavaire01@gmail.com>" \
	"Depends: nitrux-minimal,adduser" \
	"Architecture: all" \
	"Description: Default user for the Nitrux system."

equivs-build config
