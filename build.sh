apt-get --yes update
apt-get --yes install wget equivs curl git


DEPENDS=$(sed -e '/^#.*$/d; /^$/d; /^\s*$/d; s/$/,/' src/dependencies)

GIT_COMMIT=$(git rev-parse --short HEAD)

printf "%s\n" \
	"Section: misc" \
	"Priority: optional" \
	"Homepage: https://nxos.org" \
	"Package: adduser-nitrux" \
	"Version: 0.0.1-${GIT_COMMIT}" \
	"Maintainer: Luis Lavaire <llavaire01@gmail.com>" \
	"Depends: $DEPENDS" \
	"Architecture: all" \
	"Description: Default user for the Nitrux system." \
> configuration

equivs-build configuration
