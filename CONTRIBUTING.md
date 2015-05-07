#How To Add New PPA's

PPAs are added as jekyll posts into this repo.

- Fork the repo
- Create a new post in _posts
- Name it YYYY-MM-DD-application-name.md structure.
- Copy the structure from this..
```
---
layout: post
title: <NAME OF THE SOFTWARE>
name: <NAME OF THE SOFTWARE IN LOWERCASE ONLY WITHOUT SPACES.>
ppa: <PPA NAME AND LINK ppa:username/ppaname > 
status: <PPA STATUS OFFICAL STABLE/ OFFICAL EXPERIMANTAL / UNOFFICAIAL>
install: <INSTALL COMMAND>
tags:
    - <ADD A TAG>
catagory: design
---
```
- Creat a Pull request.
