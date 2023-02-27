backupdir=$HOME/.package-lists
countFile=$HOME/code/bash-scripts/.pkg-count.txt

package-backup() {
  # make sure we have a backup directory
  mkdir -p $backupdir

  pacman -Qqen > $backupdir/pkglist-$HOSTNAME.txt
  pacman -Qqem > $backupdir/aur-pkglist-$HOSTNAME.txt
}

package-update-count() {
  printf "  Pacman packages to update:    $(checkupdates | wc -l) \n  AUR packages to update:       $(yay -Qu | wc -l)" > $countFile
  # echo "Aur packages to update:       $(yay -Qu | wc -l)"
}

package-diff() {
  for file in $backupdir/pkglist-*.txt; do
    # make this work for aur packages too
    if [[ $file != $backupdir/pkglist-$HOSTNAME.txt ]]; then
      echo "Packages $(basename $file | cut -d'-' -f2 | cut -d'.' -f1) has, but $HOSTNAME doesn't:"
      diff $backupdir/pkglist-$HOSTNAME.txt $file | grep -E '^[>]'
    fi
    # echo "Diff for $file"
    # diff $file $backupdir/pkglist-$HOSTNAME.txt
  done



  # gotta use a for loop to fix this one
  # diff the current package list with the last one
  # diff $backupdir/pkglist-$HOSTNAME.txt $backupdir/pkglist-*.txt
  # diff $backupdir/aur-pkglist-$HOSTNAME.txt $backupdir/aur-pkglist-*.txt
}