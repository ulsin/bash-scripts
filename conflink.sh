# my custom conf linking thing
conflink () {
  ln -sf $(realpath $*) /home/ulsin/.sync-config
}
