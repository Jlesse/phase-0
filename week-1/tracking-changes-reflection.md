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

A git commit message should beggin with a capitalized 50 char or less summary as the header, followed by a blank line. More detailed text may be included below the blank line if necesary, but should be wrapped to about 72 chars. The commit message should be written in the imperative.

HEAD refers to the current commit or current branch. HEAD^ is last commit. You may use " fit reset --soft HEAD^ " if you commit files, and then decide that you actually would like change them.

There are 3 main sections of a git project: the working directory, the staging area, and the repository. To start, you check out a branch from the local git repo with " git co branch-name ". This moves a copt to your working directory. you can then make whatever changes are necessary. Once you are satisfied with changes,  you can add a file, directory, or all files and directories in the branch, to the staging. This is known as adding snap shots of them to the staging area. It basically locks in the changes that have been made and prepares them to be commited. You can do this with " git add filname " to add just one file to the staging area, or you can can use "git add ." to add all the folders and files that have been checked out to the staging area. Next you can commit. When you commit, you move a snapshot of everything from the staging area to the repository, but this does not include any changes made to things since you last added them to the staging area. you commit with "git commit -m "insert message about change " "

Pull requests basically let other people know about changes you have pushed to a repo on GitHub, and that you would like to merge.Pull requests are used when there are differences between your branch and an ancestor branch. You specify which branch you would like to merge with when you create your pull request. To initiate a pull request, go to github, and go your repo with the changes you want to someone to pull, and press pull request. You are then taken to a review page where you can see the changes between your branch and the repo's master branch. When you are ready to submit your request, click Create Pull Request.
Anyone with push access to the repo being pushed to can can merge the pull request. In the repo's side bar pres Pull Requests. From the drop down menu, select the one you want to merge. Click Merge pull request. Type a commit message, or keep the default one. Click confirm merge. Now you should delete the old to keep the repository clean.

Pull requests are helpful when working with teams becuase they help code to be less buggy. Ideally team mates or supervisors review pull requests before they are merged with the target branch, which leads to more cohesiveness, and less errors.


