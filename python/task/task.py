import sys

# WARNING: This code has nothing to do with the task at hand. Feel free to delete it.

if __name__ == '__main__':
    with open(sys.argv[1], "r") as i, open(sys.argv[2], "w") as o:
        value = i.read()
        o.write("ANSWER" + value)
