# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/www/ps-develop"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "ps-develop"; then

  # Create a new window inline within session layout definition.
  new_window "git"
  new_window "editor"
  new_window "shell"

  select_window 0
  run_cmd "lazygit"

  select_window 1
  run_cmd "nvm use 18"
  run_cmd "nvim"
fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
