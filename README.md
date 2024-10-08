# Omakub

Turn a fresh Ubuntu installation into a fully-configured, beautiful, and modern web development system by running a single command. That's the one-line pitch for Omakub. No need to write bespoke configs for every essential tool just to get started or to be up on all the latest command-line tools. Omakub is an opinionated take on what Linux can be at its best.

Watch the introduction video and read more at [omakub.org](https://omakub.org).

## How to install
Run those commands
```bash
sudo apt-get update
sudo apt-get install -y git
rm -rf ~/.local/share/omakub
git clone https://github.com/JonathanPiaget/jomakub.git ~/.local/share/omakub >/dev/null
source ~/.local/share/omakub/install.sh
```

## Difference from the main repository
- firefox is the default browser
- changed dock applications to suits my needs
- installed other desktop apps :
  - proton mail
  - proton vpn
  - proton pass
- installed other terminal apps :
  - starship
- changed configuration :
  - the gnome compose key is set to right control, to avoid disabling caps lock key

## Contributing to the documentation

Please help us improve Omakub's documentation on the [basecamp/omakub-site repository](https://github.com/basecamp/omakub-site).

## License

Omakub is released under the [MIT License](https://opensource.org/licenses/MIT).

## Extras

While omakub is purposed to be an opinionated take, the open source community offers alternative customization, add-ons, extras, that you can use to adjust, replace or enrich your experience.

[⇒ Browse the omakub extensions.](EXTENSIONS.md)
