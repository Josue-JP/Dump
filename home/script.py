import sys

def get_file_contents(file):
    with open(file, "r") as f:
        content = f.read()

    return content

file = sys.argv[1]

print(get_file_contents(file))
