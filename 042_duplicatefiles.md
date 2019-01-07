# Duplicate Files
###### December 12 2018

You left your computer unlocked and your friend decided to troll you by copying a lot of your files to random spots all over your file system. Even worse, she saved the duplicate files with random, embarrassing names.

**Write a method that returns an array of all the duplicate files.** We'll check them by hand before actually deleting them, since programmatically deleting files is really scary. To help us confirm that two files are actually duplicates, return an array of arrays where:
* the first item is the duplicate file
* the second item is the original file

For example:
```
[
  ["/tmp/parker_is_dumb.mpg", "/home/parker/secret_puppy_dance.mpg"],
  [ "/home/trololol.mov", "/etc/apache2/httpd.conf"]
]
```

You can assume each file was only duplicated once.

---

Notes:
* Are you correctly handling child folders as well as sibling folders? Be careful that you're traversing your file tree correctly.
* When you find two files that are the same, don't just choose a random one to mark as the "duplicate". Try to figure out which one your friend made!
* Does your solution work correctly if it's an empty file system (meaning the root directory is empty)?
* Is your solution order of the total size on disc of all the files? If so, you can do better!
