function pgimport
  command pg_restore --verbose --clean --no-acl --no-owner -h localhost -U postgres -d $argv
end
