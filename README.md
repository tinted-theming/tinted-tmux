# base16 color theme for tmux

A tmux base16 theme based on the work of [tmux-colors-solarized](https://github.com/seebi/tmux-colors-solarized) and [base16](https://github.com/chriskempson/base16).

## Installation
These config snippets for the terminal multiplexer tmux should be added to your `~/.tmux.conf` configuration file.
This means you have to append the content of e.g. `colors/base16-default-dark.conf` to the end of your own config e.g. by using this oneliner (backup you config first!!):

    cat colors/base16-default-dark.conf >> ~/.tmux.conf

In most cases, you have to force tmux to assume the terminal supports 256 colours.
For this, start tmux as `tmux -2`.

This color scheme is tested with tmux >= 1.5. tmux 1.1 is reported as not working.

### Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)

Add plugin to the list of TPM plugins in `.tmux.conf`:

    set -g @plugin 'mattdavis90/base16-tmux'

Hit `prefix + I` to fetch the plugin and source it. The plugin should now be working.

All the base16 themes are provided so you can pick and choose via `.tmux.conf` option:

- `set -g @colors-base16 'default-dark'` (the default)
