
# 🐇 Adding a Custom File Handler (Linux MIME + .desktop)

---

## 🐇 Create MIME XML

Path:

```
~/.local/share/mime/packages/osk.xml
```

Content:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<mime-info xmlns="http://www.freedesktop.org/standards/shared-mime-info">
  <mime-type type="application/x-osu-skin">
    <comment>osu! Skin File</comment>
    <glob pattern="*.osk"/>
  </mime-type>
</mime-info>
```

Update database:

```bash
update-mime-database ~/.local/share/mime
```

---

## 🐇 Create .desktop Handler

Path:

```
~/.local/share/applications/osk-handler.desktop
```

Content:

```ini
[Desktop Entry]
Name=OSK Skin Installer
Exec=/full/path/to/script %f
Type=Application
MimeType=application/x-osu-skin;
NoDisplay=true
```

🐰 `%f` = opened file path

Note: remember to match the MimeType with the one you add on the xml

---

## 🐇 Associate Handler

Set default opener:

```bash
xdg-mime default osk-handler.desktop application/x-osu-skin
```


EOF 🐇

