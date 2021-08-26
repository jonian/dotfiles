function _frum_env_autoload_hook --on-variable PWD --description 'Change Ruby env variables on directory change'
  set -gx GEM_HOME (ruby -e 'puts Gem.user_dir')
end
