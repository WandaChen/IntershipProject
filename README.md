#Practical SQA

Sofia created this project for study purposes.

##Chapter 1.

// 1. Based on “master” branch create your own branch using
    “Terminal”. type: git branch name_of_your_branch

// 2. Type command “git branch” to verify that you created branch
    (in a green color appear your currently branch where you located)

// 3. In order to switch into your created branch
    type: git checkout name_of_your_branch
    (use “git branch” to check that you switched)

// 4. Before switch you must save all changes that you added.
    type: "git status" to see your changes. It will appear in red color

// 5. To save all changes that you added use command "git add ."

// 6. Instead “git add .” You can assign path to file which
    you want to commit after adding
    Example: "git add /Users/sofia/IdeaProjects/AssessmentControl/src/test/resources/features/1.ObjectsPropertiesMethods/firstTest.feature"

// 7. Type again "git status" to check
    that you added all the changes
    (they will be displayed in a green color)

// 8. Type: git commit -m"[ADDED] your message(explain what you modified"
    in order to add your changes from stage to your branch. Use different tag
    [ADDED] [CHANGED] [IMPROVED] [FIXED] [DELETED]
    to better understand what you did on branch

// 9. Type: "git merge master" to check that your changes didn’t broke your branch.
    You will se "Already up to date" in terminal


// 10. After you can push to github
    Type: "git push origin name_of_your_branch"
    The name local you branch must match with your remote branch.
    Example (You can see in terminal):
    * [new branch]      nik -> nik


// 11. Switch to master to update code on master branch
    Type: "git checkout master"
    And then: "git pull"

// 12. Switch to your branch to update code
       Type: git checkout name_of_your_branch
       And then: git merge master

// 13. Repeat steps 4-12 to each changes





##Chapter 2.
//Some instructions here
# AssessmentControl
# AssessmentControl
