import os

files = ["bashrc", "vimrc", "tmux.conf"]

def get_file_contents(filename):
    with open(os.path.expanduser(f"~/.{filename}")) as f:
        if filename == "bashrc":
            lines = f.readlines()

            start_inde = lines.index("#### ~/.bashrc\n")
            return lines[11:]
        return f.readlines()

def paste_contents(contents, filename):
    with open(filename, "w") as f:
        f.writelines(contents)
        return

for i in files:
    paste_contents(get_file_contents(i), i)



