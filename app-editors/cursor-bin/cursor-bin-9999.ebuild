EAPI=8

DESCRIPTION="Cursor AI Code Editor (binary)"
HOMEPAGE="https://cursor.sh"


LICENSE="Cursor-EULA"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="strip mirror"

S="${WORKDIR}"

src_install() {
    exeinto /opt/cursor
    doexe "${DISTDIR}/cursor.AppImage"

    dosym /opt/cursor/cursor.AppImage /usr/bin/cursor
}
