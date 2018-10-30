begin
  require 'pry-bloodline'
  require 'pry-coolline'
  require 'pry-stack_explorer'
  require 'pry-tree'
  require 'pry-rescue'

  PryBloodline.setup!
rescue LoadError
  warn 'Plugins not Installed!'
end
