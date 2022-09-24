## Seminar 1 

1. Initialize new repo locally.
2. Create (or copy in) new script written in your favourite programming language.
3. Start tracking your file in Git.
4. Make multi-line changes to your code and commit them.
5. Repeat 4th point 2 more times.
6. Revert the changes from the previous commit.
7. Make .gitignore ignore all (make changes 1-by-1 and commit in between):
    * Files in `log` directory, which can be located in any subdirectory in your repository. 
    * Files containing `_test` in root directory of your repository.
    * Any files with `6, 9, 1` as 2nd character.

8. Demonstrate 3 types of resets.
9. Add remote to your repository.
10. Push your local changes to remote repository.
11. Prepare one question regarding your repo, which can be answered by looking at your git log.

## Seminar 3

1. Create new (public) repository on GitHub.
2. Clone this repository to your local machine.
3. Make one commit locally.
4. Get difference between state of your local and remote repos.
5. Push your changes back to the remote.
6. Create new branch locally.
    * Add new file and commit it.
7. Create new branch on GitHub (named differently than the branch you've created in the previous step). 
    * Add new file named the same as file created locally in step 6. (still in GitHub)
    * Make content of the file "conflicting" with content of the file created locally in step 6.
8. Push local branch (from step 6) to the remote. 
9. Pull remote branch (from step 7) to your local machine.
10. On your local machine, merge the branch you've pulled from remote (from step 7) to your local branch (from step 6).
    * Solve merge conflicts (if any).
11. On your local machine, merge the branch from step 10 to your main branch.\
    * Add some new file and commit it.
    * Push your main branch to remote.
12. On GitHub, merge the branch you've pushed from local (from step 6) to your remote branch (from step 7).
    * (hint: create a pull request first)
13. Create an issue in your GitHub repository for your colleague.