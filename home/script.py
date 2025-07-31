def get_file_contents(file):
    with open(file, "r") as f:
        content = f.readlines()

    return content



print(get_file_contents("bashrc"), get_file_contents("vimrc"), get_file_contents("tmux.conf"))
