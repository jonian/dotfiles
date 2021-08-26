function pgexport
  command pg_dump -Fc --no-acl --no-owner -h localhost -U postgres $argv
end
