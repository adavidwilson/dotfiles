"""Make Python history respect XDG."""
import atexit
import os
import readline

default_dir = os.path.join(os.path.expanduser("~"), ".local", "state")
path = os.path.join(os.getenv("XDG_STATE_HOME", default=default_dir), "python")

os.makedirs(path, mode=0o755, exist_ok=True)
_histfile = os.path.join(path, "history")

try:
    readline.read_history_file(_histfile)
    H_LEN = readline.get_current_history_length()
except FileNotFoundError:
    # Create the file
    with open(_histfile, "wb"):
        pass
    H_LEN = 0


def save(prev_h_len, histfile):
    """Readline save method for Python history."""
    new_h_len = readline.get_current_history_length()
    readline.set_history_length(1000)
    readline.append_history_file(new_h_len - prev_h_len, histfile)


atexit.register(save, H_LEN, _histfile)
