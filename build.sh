apt-get --yes update
apt-get --yes install wget equivs curl git


deps=$(sed -e '/^#.*$/d; /^$/d; /^\s*$/d; s/$/,/' deps)

git_version=$(git rev-parse --short HEAD)

printf "%s\n" \
	"Section: misc" \
	"Priority: optional" \
	"Homepage: https://nxos.org" \
	"Package: adduser-nitrux" \
	"Version: 0.0.1-$git_version" \
	"Maintainer: Luis Lavaire <llavaire01@gmail.com>" \
	"Depends: $deps" \
	"Architecture: all" \
	"Description: Default user for the Nitrux system." \
> config

equivs-build config
