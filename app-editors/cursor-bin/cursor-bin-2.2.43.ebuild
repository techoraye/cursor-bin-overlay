EAPI=8

DESCRIPTION="Cursor AI Code Editor (binary)"
HOMEPAGE="https://cursor.sh"
SRC_URI="https://downloads.cursor.com/production/32cfbe848b35d9eb320980195985450f244b303d/linux/x64/deb/amd64/deb/cursor_2.2.43_amd64.deb -> cursor_2.2.43_amd64.deb"

LICENSE="Cursor-EULA"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="strip mirror"

BDEPEND="sys-devel/binutils app-arch/tar"
RDEPEND=""

S="${WORKDIR}"

src_unpack() {
	ar x "${DISTDIR}/cursor_2.2.43_amd64.deb"
	tar -xf data.tar.*
}

src_install() {
	cp -r usr "${D}"
	dosym /usr/bin/cursor /usr/bin/cursor-editor
}
