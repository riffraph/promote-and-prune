# Promote and Prune

Purpose of this script is to simplify directory structures which have subfolders organised using varying conventions (e.g. naming and structure).

The goal is to extract and consolidate the key files into a single folder.


How this will work is as follows:

1. find files in all subfolders matching a certain criteria, regardless of depth. The expected output is a list of matching files with their relative or absolute paths.

2. given a list of files, move each file to a target location

3. delete all the subfolders


## Testing

run the tests using `make`

clean up after running the tests using `make clean`