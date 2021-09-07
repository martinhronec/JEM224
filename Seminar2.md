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
11. On GitHub, merge the branch you've pushed from local (from step 6) to your remote branch (from step 7).
12. On your local machine, merge the branch from step 10 to your main branch.\
    * Add some new file and commit it.
    * Push your main branch to remote.
13. Create a pull request of branch from step 11 to the main branch.
    * Accept it and merge.
14. Create an issue in your GitHub repository for your colleague.