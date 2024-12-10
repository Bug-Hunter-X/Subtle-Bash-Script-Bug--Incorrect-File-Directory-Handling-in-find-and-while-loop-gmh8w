# Bash Script Bug: Incorrect File/Directory Handling

This repository demonstrates a common but subtle bug in bash scripts that involve processing files within a directory. The script uses `find` to locate files and a `while` loop to iterate through them.  The issue arises when the script encounters a subdirectory – instead of skipping it, the script attempts to process it as a file, potentially leading to unexpected behavior or errors depending on the commands within the loop.

The bug is demonstrated in `bug.sh`. The solution, which correctly handles subdirectories and processes only regular files, is provided in `bugSolution.sh`.

## How to reproduce:

1. Clone this repository.
2. Run `bug.sh`. Observe the output, noting that it attempts to process the subdirectory as a file.
3. Run `bugSolution.sh`. Observe the corrected output, showing only regular files are processed.

## Lessons Learned:

* Always explicitly check the file type using `-type f` within the `find` command.
* Use `-print0` with `find` and `read -r -d $'\0'` in the `while` loop for robust handling of filenames that might contain special characters.
*  Be mindful of potential errors when processing files. Test with various file types and directory structures.