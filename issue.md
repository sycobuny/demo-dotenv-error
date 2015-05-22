What I Expect
=============

  1. Running `:Start` in Vim, inside of tmux and a project with both a
     `Procfile` and `.env`, will create a new window/pane in tmux that is
     running `foreman start`.
  2. Running `:Dispatch` similarly, but only editing the `Procfile` in
     particular, will run `foreman check` and output the results into a
     quickfix window which will automatically open.

What Happens
============

  1. Running `:Start` with no arguments creates a new tmux window on a regular
     shell with no environment modifications.
  2. Running `:Dispatch` while editing the `Procfile` runs a basic `make`
     command, and does not automatically open the Quickfix window (though the
     results **are** outputted there).

Environment
===========

I've written a fairly exhaustive documentation of my current setup, inside of
the `README` file for a small demo application at
https://github.com/sycobuny/demo-dotenv-error, but here are the highlights:

I'm running the latest version of the various plugins involved on OS X
Yosemite, with the latest versions of Vim and tmux from MacPorts, and rbenv.
I also have an overly-elaborate Vim configuration setup
[here](https://github.com/sycobuny/rcfiles/tree/2bdb8480c83174f683eb1deeadbd85a2b23c16c3/configs/vim),
all loaded from a stripped-down `.vimrc`
[here](https://github.com/sycobuny/rcfiles/blob/2bdb8480c83174f683eb1deeadbd85a2b23c16c3/configs/vimrc).
