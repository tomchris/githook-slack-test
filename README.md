# githook-slack-test

This Repo demonstrates the usages of a GIT post-commit hook and a slack incoming webhook.
* post-commit.sh is called by .git/hooks/post-commit for ease of learning only *
As the files within the .git/ directory are hidden in inital repo view this allows viewing of the working code easy from the repo main page.
The contents of .post-commit.sh would normally be contained directly within .git/hooks/post-commit

### To use:
First you must have a slack incoming webhook configed.
  Please see: https://get.slack.help/hc/en-us/articles/115005265063-Incoming-WebHooks-for-Slack
Now clone the repo and move into it:
``` bash
git clone https://github.com/tomchris/githook-slack-test.git
cd githook-slack-test
```
Once you have the webhook configured you can insert the webhook URL into webhook.txt
echo "http://_your-slack-webhook-url_" > ./webhook
Now you can add your changes and commit:
``` bash
git add .
git commit -m "This is a commit message"
```
A slack message will now be sent via the webhook.

### How it works:
Once a commit is made locally, `.git/hooks/post-commit` is automatically called by git.
This runs the BASH commands within it of two echo commands and then calls ./post-commit.sh.
The webhook url is read from ./webhook and is included in the .gitignore to ensure a personal webhook url is not commited to a public repo.
post-commit.sh obtains the values of the current user, hostname, git branch, git commit message.
This is built a json payload which is sent as a POST to the webhook url for your Slack account.

## TODO:
- Check why '.git/hooks/post-commit' file seems to have go away. Need to confirm if this is a clone issue and how to address. 
