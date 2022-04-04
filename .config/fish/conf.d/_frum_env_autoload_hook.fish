function _frum_env_autoload_hook --on-variable PWD --description 'Change Ruby env variables on directory change'
  command frum --log-level quiet local

  set -gx GEM_HOME (ruby -e 'puts Gem.user_dir')
  set -gx PATH "$GEM_HOME/bin" $PATH
end

_frum_env_autoload_hook
