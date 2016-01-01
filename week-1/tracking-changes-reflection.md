git checkout -b Reflections 1.5
•	How does tracking and adding changes make developers' lives easier? It is a safety net. You can save “versions” and revert to a previous version if something goes bad (a bug). It does help to debug.
•	What is a commit? It is a snapshot of what you have done at a certain point. (I see it as a version)
•	What are the best practices for commit messages? The subject line should have less than 50 characters and use imperative verbs. The body should explain why the changes.
•	What does the HEAD^ argument mean? The last commit
•	What are the 3 stages of a git change and how do you move a file from one stage to the other? 1) create a branch where you will be doing your project (git checkout –b branch_name. 2) add these changes or should I say, stage these changes (git add) 3) commit these changes to the local repository (git commit)
•	Write a handy cheatsheet of the commands you need to commit your changes? 
o	git checkout –b branch_name. 
o	git add
o	git commit
•	What is a pull request and how do you create and merge one? A pull request is done by first pushing the branch onto Github (git push origin name of branch ). Then, on the Github, there are a couple of buttons to hit, one to compare & pull, the second to create the pull request which should have been given a name and a description. The project will then be in a “waiting state” for review, before it will be given a green light to be merged with the origin file.Then, the project can be merged, and to be extra sure, there is a “confirm merge” button. At the end, the branch (project) is deleted
•	Why are pull requests preferred when working with teams? Someone else is able to review the code done and make sure it is good and sound, before accepting it to be merged with the origin file.
