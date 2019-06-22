ChildProcess = require 'child_process'

process.env.STARTED_FISH = 'yes'

# This command should generate a list of all exports from a login shell:
exportsCommand = process.env.SHELL + ' -lic "env; exit"'

# Run the command and update the local process environment:
ChildProcess.exec exportsCommand, (error, stdout, stderr) ->
  for definition in stdout.trim().split('\n')
    [key, value] = definition.split('=', 2)
    process.env[key] = value
