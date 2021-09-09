function cleanup
  command profile-cleaner f
  command profile-cleaner b
  command profile-cleaner gc

  command rm -rf ~/.bundle/cache
  command rm -rf ~/.frum/versions/.downloads

  command yarn cache clean
  command npm cache clean --force

  command flatpak uninstall --unused
  command yay -Scc --noconfirm

  command sudo journalctl --rotate
  command sudo journalctl --vacuum-time 1s
end
