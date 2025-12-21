# cursor-bin-overlay

Gentoo Portage overlay providing a **binary ebuild for Cursor**, the AI-powered
code editor.

This overlay repackages the **official upstream `.deb`** into a Gentoo-friendly
Portage install, with clean dependency handling and uninstall support.

---

## Features

- Native Gentoo Portage integration
- Works on OpenRC and systemd
- No AppImage required
- Clean install and uninstall
- Minimal system impact

---

## Installation

### Add the overlay

```sh
eselect repository add cursor-bin-overlay git https://github.com/techoraye/cursor-bin-overlay.git
````

### Sync the overlay

```sh
emaint sync -r cursor-bin-overlay
```

### Accept the keyword

Cursor is provided as a `~amd64` binary package.

```sh
echo "app-editors/cursor-bin ~amd64" >> /etc/portage/package.accept_keywords/cursor
```

### Install Cursor

```sh
emerge app-editors/cursor-bin
```

---

## Usage

Launch Cursor from a terminal:

```sh
cursor
```

Cursor may also appear in your desktop menu depending on your environment.

---

## Uninstall

```sh
emerge -C app-editors/cursor-bin
```

---

## Notes

* Cursor is proprietary, binary-only software
* The ebuild extracts the official upstream `.deb`
* Version updates require bumping the ebuild
* This overlay is not affiliated with Cursor

---

## Maintainer

GitHub: [https://github.com/techoraye](https://github.com/techoraye)
