#!/bin/sh

#
# git-reset-author.sh
# @natebwangsut <nate.bwangsut@gmail.com>
# ---
# Reset the author of all git commits
#

git filter-branch --env-filter '
OLD_EMAIL="natebwangsut@gmail.com"
CORRECT_NAME="natebwangsut"
CORRECT_EMAIL="nate.bwangsut@gmail.com"
if [ "$GIT_COMMITTER_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_COMMITTER_NAME="$CORRECT_NAME"
    export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"
fi
if [ "$GIT_AUTHOR_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_AUTHOR_NAME="$CORRECT_NAME"
    export GIT_AUTHOR_EMAIL="$CORRECT_EMAIL"
fi
' --tag-name-filter cat -- --branches --tags
