# Task 3: Finding Files and Searching File Contents

## Purpose of find

The `find` command is used to locate files and directories by name, type, and location.

## Purpose of grep

The `grep` command searches for specific words or patterns inside files.

## Difference Between find and grep

- `find` searches for files and directories.
- `grep` searches for specific text inside files.

## Combining find and grep

The command below searches all text files for the word JavaScript:

`find practice/search-lab -type f -name "*.txt" -exec grep -n "JavaScript" {} \;`

It uses `find` to locate text files and `grep` to search inside them.

## What I Learned

I learned how to locate files, find directories, search for specific words, perform recursive searches, combine find and grep, and save search results into a file.
