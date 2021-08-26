function pgdump
  command pg_dump -Fc --no-acl --no-owner --column-inserts --data-only -h localhost -U postgres $argv
end
