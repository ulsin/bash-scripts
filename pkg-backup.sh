backupdir=$HOME/code/bash-scripts/pkg-backups

package-backup() {
  # make sure we have a backup directory
  mkdir -p $backupdir

  pacman -Qqen > $backupdir/pkglist-$HOSTNAME.txt
  pacman -Qqem > $backupdir/aur-pkglist-$HOSTNAME.txt
}

package-diff() {
  # diff the current package list with the last one
  diff $backupdir/pkglist-$HOSTNAME.txt $backupdir/pkglist-*.txt
  diff $backupdir/aur-pkglist-$HOSTNAME.txt $backupdir/aur-pkglist-*.txt
}