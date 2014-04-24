# Create a folder for backed up files
mkdir -p "${HOME}/.dotfiles_backup"

# Dotfiles we'll be using
dotfiles="gitconfig gitignore_global bash_profile bashrc gemrc pryrc rspec irbrc"

for file in $dotfiles; do
  if [ -a "${HOME}/${file}" ]; then
    # move file
    mv "${HOME}/${file}" "${HOME}/.dotfiles_backup/${file}"
    # symlink file
    ln -s "$SETTINGS/dotfiles/${file}" "${HOME}/${file}"
  fi
done

# fin
