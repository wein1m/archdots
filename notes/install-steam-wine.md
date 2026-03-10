> [!important]
> this notes contain some additional info about how to do it on mac.
> But it's mostly the same on Linux.

# Install Tools (for Apple Silicon)

first install **Rosetta 2** (for x86)

```bash
softwareupdate --install-rosetta
```

install Wine via Homebrew:

```bash
brew install --cask --no-quarantine wine-stable
brew install winetricks
```


---

# Create a Wine Prefix

just do:

```bash
export WINEPREFIX=$HOME/.wine-steam
wineboot
```

you should now have:

```
~/.wine-steam/
```

---

# Install Dependencies

```bash
WINEPREFIX=$HOME/.wine-steam winetricks corefonts vcrun2019 dxvk
```

if `dxvk` complains, thats okay, macos Vulkan support depends on MoltenVK.

---

# Install Steam

```bash
WINEPREFIX=$HOME/.wine-steam wine ~/Downloads/steamsetup.exe
```

Then launch:

```bash
WINEPREFIX=$HOME/.wine-steam wine "$HOME/.wine-steam/drive_c/Program Files (x86)/Steam/Steam.exe"
```

EOF 🐇
