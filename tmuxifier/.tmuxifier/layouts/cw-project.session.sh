# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/cw-project"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "cw-project"; then

  # Create a new window inline within session layout definition.
  new_window "skeleton"
  new_window "cli"
  new_window "shell"

  select_window 0
  run_cmd "cd skeleton/"
  run_cmd "nvm use 18"
  run_cmd "nvim"

  select_window 1
  run_cmd "cd cli/"
  run_cmd "nvm use 18"
  run_cmd "nvim"

  select_window 2
  run_cmd "cd cli/"
  run_cmd "clear"

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
