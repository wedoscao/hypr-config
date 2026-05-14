-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--
-- hl.on("hyprland.start", function ()
--   hl.exec_cmd(terminal)
--   hl.exec_cmd("nm-applet")
--   hl.exec_cmd("waybar & hyprpaper & firefox")
-- end)

hl.on("hyprland.start", function()
	hl.exec_cmd(terminal)
	hl.exec_cmd("nm-applet")
	hl.exec_cmd("waybar")
	hl.exec_cmd("wl-paste --type text --watch cliphist store")
	hl.exec_cmd("wl-paste --type image --watch cliphist store")
	hl.exec_cmd("elephant")
	hl.exec_cmd("walker --gapplication-service")
	hl.exec_cmd("awww-daemon")
	hl.exec_cmd("fcitx5")
	hl.exec_cmd("hypridle")
	hl.exec_cmd("systemctl link --user ~/.config/hypr/awww-random-wallpaper.service")
	hl.exec_cmd("systemctl link --user ~/.config/hypr/awww-random-wallpaper.timer")
	hl.exec_cmd("systemctl enable --user awww-random-wallpaper.timer")
	hl.exec_cmd("steam -silent")
	hl.exec_cmd("~/.config/hypr/scripts/otd_switcher.sh")

	hl.exec_cmd("gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'")
	hl.exec_cmd("gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3'")
end)
