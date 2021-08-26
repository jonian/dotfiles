function cleanup
  command profile-cleaner f
  command profile-cleaner b
  command profile-cleaner gc

  command sudo journalctl --rotate
  command sudo journalctl --vacuum-time 1s

  command yay -Scc --noconfirm
end
