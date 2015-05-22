Vim-Dotenv-Error-Demo
=====================

A short example demo application which I figure should show something I
*expect* to work, but which does not. It is meant to supplement a GitHub issue
on a particular repository with a concrete example.

What I Expect
=============

When opening a file in this project with Vim inside of a tmux session and the
current versions of the `vim-projectionist`, `vim-dispatch`, and
`vim-projectionist` plugins installed, that I can issue a `:Start` command to
Vim and a `foreman start` will begin in an alternate window/pane of Tmux.
Alternately, if I am editing the `Procfile` itself, I expect `:Dispatch` to
run `foreman check`.

What Happens
============

When I issue the `:Start` command, an alternate window opens, but it is a
plain shell, with no ENV manipulations and no command executed.

If I am editing the `Procfile` and run `:Dispatch`, it attempts to run a bare
`make` command, which fails.

Environment
===========

 * I am on Mac OS 10.10.3.
 * I am using Tmux 2.0_0 from MacPorts, and Vim "7.4.258_1+huge+perl+ruby19"
   (also from MacPorts).
 * I am using my RC files from my GitHub repository at revision 2bdb848:
   https://github.com/sycobuny/rc://github.com/sycobuny/rcfiles/commit/2bdb8480c83174f683eb1deeadbd85a2b23c16c3
 * I am using rbenv and ruby-build at revisions 5b9e4f0 and a5d0479,
   respectively:
   https://github.com/sstephenson/rbenv/commit/5b9e4f05846f6bd03b09b8572142f53fd7a46e62
   https://github.com/sstephenson/ruby-build/commit/a5d0479af7ca59e9b31f52156d6b38887f68bf24
 * The `vim-projectionist` plugin is at revision d6e419c:
   https://github.com/tpope/vim-projectionist/commit/d6e419c7bee07efa2a7c1d12ef6b0ced8160ba2f
 * The `vim-dispatch` plugin is at revision e7ed067:
   https://github.com/tpope/vim-dispatch/commit/e7ed067185a32ab776095b71442b55c044de5361
 * The `vim-dotenv` plugin is at revision 0dc2d71:
   https://github.com/tpope/vim-dotenv/commit/0dc2d715d9b85bf1da5bc56a5976eeb63e4f4f49
 * I am using the ruby-version as specified in this repository (2.0.0-p645),
   with RubyGems at version 2.0.14, and the following gem list (the only `gem`
   installation command I have run is `gem install bundler foreman`):
   ```
   *** LOCAL GEMS ***

   bigdecimal (1.2.0)
   bundler (1.9.9)
   foreman (0.78.0)
   io-console (0.4.2)
   json (1.7.7)
   minitest (4.3.2)
   psych (2.0.0)
   rake (0.9.6)
   rdoc (4.0.0)
   test-unit (2.0.0.0)
   thor (0.19.1)
   ```
 * I ran `bundle install --path=vendor --path=binstubs` within the current
   directory to install the dependencies for this app.
 * I opened `app.rb` with `vi app.rb` under a tmux session named `demo`, and
   issued `:Start` with no arguments.
 * Running `:echo g:projectionist_heuristics` in the same file outputs the
   following:
   `{'Procfile': {'Procfile': {'dispatch': 'foreman check'}, '*': {'start': 'foreman start'}}}`

Author
======

Stephen Belcher, for what it's worth - this is just an app skeleton.

License
=======

Well, I'm not gonna bother, cause this app doesn't really do anything.
