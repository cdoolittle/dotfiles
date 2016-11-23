# Casey's dotfiles
# Repo moved to bitbucket.org
Initially copied from [phillipuniverse](https://github.com/phillipuniverse/dotfiles)

## Usage

Same steps as Holman's:
- `brew install zsh`
- `brew install rbenv`
- `brew install autojump`
- `brew install coreutils # These are the gnu versions of stuff for coloring`
- `brew install hub # GitHub CLI: https://hub.github.com/`
- `git clone git://github.com/cdoolittle/dotfiles ~/.dotfiles`
- `cd ~/.dotfiles`
- Modify `~/.dotfiles/git/gitconfig.symlink` and put your real information there.
- `brew install grc` (optional, will add color to a few utilities)
- `rake install`
- `chsh -s /bin/zsh` (make sure this path exists on your machine or you're gonna have a bad time)


The install rake task will symlink the appropriate files in `.dotfiles` to your
home directory. Everything is configured and tweaked within `~/.dotfiles`,
though.

## Items of note <Section blatantly ripped off>

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `rake install`.
- **topic/\*.completion.sh**: Any files ending in `completion.sh` get loaded
  last so that they get loaded after we set up zsh autocomplete functions.

## Private items

Items that are in `private/` will not get committed into git should you choose to share your repo.
Files inside that end in .zsh or .symlink will still function however.

Also, `git/gitconfig.symlink` is set to be ignored as well, and I recommend you move your private
`~/.gitconfig` into `git/gitconfig.symlink` for consistency.

## Credit

Thanks to [Zach Holman](http://github.com/holman/dotfiles). Seriously, go check
out his repository and theory on dotfiles. I agree with all of it, and would
never have created this without seeing his first.

## Possible problems
You might get some problems with curl and certificates, an error like this:
 `SSL: can't load CA certificate file /usr/local/opt/curl-ca-bundle/share/ca-bundle.crt`
If you do, run this:
```
echo $SSL_CERT_FILE
# output will likely be SSL_CERT_FILE=/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt which is wrong
# Run this to fix it
export SSL_CERT_FILE=
```
Then retry the brew install commands. When you’re done setting things up, put the export command inside of `~/.dotfiles/system/env.sh`
