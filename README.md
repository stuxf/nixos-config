<div align="center">
  <h1>nixos-config</h1>
  <img src="https://img.shields.io/github/last-commit/stuxf/nixos-config?style=for-the-badge&logo=github&logoColor=FF9796&color=FF9796">
  <img src="https://img.shields.io/badge/NixOS-24.11-FF9796?style=for-the-badge&logo=NixOS">
</div>

My config. It is what it is. Work in progress!

Decided to try Nix after my friend @airwuu hopped on it a couple months ago.

I used https://nixos-and-flakes.thiscute.world/ to get started, which I found to be a really great resource.

## Non-declaratively set things

Not everything is declaratively set via my config. Here is a small (likely non-inclusive list). Some of these are intentional, others are not, and some I intend to get to when I have more time.

- Discord settings
- Web browser login details
- Browser extensions being pinned
- Extensions enabled in private/incognito windows
- GPU enabled or not (use `asusctl`)
- Have to run `fc-cache -fr` to clear font cache
- Games (Steam, Heroic, Minecraft) are installed inside the launchers
- GNOME Online Accounts need to be logged into manually
- VSCode user settings (font has been changed to Jetbrains Mono)
