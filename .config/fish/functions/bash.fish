function bash
  set -lx STARTED_FISH "yes"

  if test (count $argv) -gt 0
    command bash $argv
  else
    set -lx STARTED_BASH "yes"
    exec bash $argv
  end
end
