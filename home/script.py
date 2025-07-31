def get_file_contents(file):
    with open(file, "r") as f:
        content = f.read()

    return content



print(get_file_contents("bashrc"))
print("<<<DELIMITER>>>")
print(get_file_contents("vimrc"))
print("<<<DELIMITER>>>")
print(get_file_contents("tmux.conf"))
