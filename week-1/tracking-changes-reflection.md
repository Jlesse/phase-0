## Tracking Changes Reflection

- How does tracking and adding changes make developers' lives easier?
- What is a commit?
- What are the best practices for commit messages?
- What does the HEAD^ argument mean?
- What are the 3 stages of a git change and how do you move a file from one stage to the other?
- Write a handy cheatsheet of the commands you need to commit your changes?
- What is a pull request and how do you create and merge one?
- Why are pull requests preferred when working with teams?

Tracking and adding changes is helpful becuase it allows developers to see what work has been done and the details about the changes that have been made. It also makes it more clear what is in developement, why, and where a bug may be.

A commit includes all of the changes the have been made to the files in your local repository. It also includes the files themselves. A commit should be accomonied by an descriptive message written in the imperitive. You commit files that you have added to the staging area before you push your local repo to github.

A git commit message should beggin with a short 50 char or less summary, followed

HEAD refers to the current commit or current branch. HEAD^ is last commit. You may use " fit reset --soft HEAD^ " if you commit files, and then decide that you actually would like change them.