# Introduction

Create a collaborative environment inside GitHub Actions for solving CTF
problems. Conveniently save progress with git.

# Quick start

- Create a repo from the template ("Use this template")
- Navigate to the "Actions" tab
- Choose the correct workflow on the left ("Run Collaborative CTF Environment")
- Run it using the button in the top right ("Run workflow")
  - Optionally enter a webhook that it can send POST data to
- View the output; wait for it to print and/or send the tmate connection info
- SSH in or connect from the Web

# Graphical

**Don't use the graphical workflow unless absolutely necessary!**

- Sign up for ngrok and get an authentication token
- Run the workflow and pass in the ngrok authentication token
- Wait for ngrok to run, and look in your ngrok dashboard for the server and
  port to connect to
- Connect using an [RDP](https://en.wikipedia.org/wiki/Remote_Desktop_Protocol)
  client if using the graphical workflow
  - Username `runner`
  - Password `password`
  - There is a default RDP client installed on Windows
  - For Linux [Remmina](https://remmina.org/how-to-install-remmina/)

# Be a Good Citizen

This project uses generously-offered, free resources in a way that was likely
not intended by GitHub. Please do not abuse them.

I claim no responsibility for how you use this project. Based on my reading of
GitHub's:

- [Terms of
  Service](https://docs.github.com/en/free-pro-team@latest/github/site-policy/github-terms-of-service#the-github-terms-of-service)
- [Acceptable Use
  Policy](https://docs.github.com/en/free-pro-team@latest/github/site-policy/github-acceptable-use-policies)
- and [Actions Usage
  Policy](https://docs.github.com/en/free-pro-team@latest/github/site-policy/github-additional-product-terms)

I have concluded that using this Actions workflow to do productive work,
particularly if you don't have the ability to run a Linux computer of your own,
is probably permissible if done in good faith, and with an effort made to
reduce excessive resource consumption. For example, don't use the graphical
workflows unless absolutely necessary, because they are considerably more
resource intensive to set up and run.

That being said, I may be reading the policies wrong, and GitHub has the right
to change them at any time. In particular, if this is abused, it is likely that
its use will be limited by GitHub. **If you like it, don't ruin it for
others.**

Users get [3,000 minutes of private Actions
time](https://docs.github.com/en/free-pro-team@latest/actions/reference/usage-limits-billing-and-administration#usage-limits)
per month per user. Check your own usage
[here](https://github.com/settings/billing).

# Acknowledgments

This project makes use of several great software packages that have made their
services available for free:
- [tmate.io](https://tmate.io/)
- [ngrok](https://ngrok.com)
