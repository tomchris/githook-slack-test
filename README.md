# githook-slack-test

This Repo demonstrates the usages of a GIT post-commit hook and a slack incoming webhook.

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

post-commit.sh obtains the values of the current user, hostname, BASH ENV, and the webhook url from ./webhook.
This is built a json payload which is sent as a POST to the webhook url for your Slack account.

## TODO:
- Remove my token :-{
- Add variable insertion for token
