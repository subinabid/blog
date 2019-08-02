---
layout: post
title: Why version controlling is critical for Word documents
tags: IT VersionControl
categories: IT
---

For those who are new to the concept, version controlling is an efficient method of maintaining multiple versions of the same file. This is more significant when a team is working on the same file. [Git](https://git-scm.com/) is a common tool used for version controlling and [Github](https://github.com/) is an easy to use free web service.  

I have been working on a critical document during last week and the document ran into multiple versions based on inputs from different reviewers. Each version had multiple revisions. I ended up having 30 - 40 files getting confused every time. The final cleaned up folder looks like this, with 5 different versions and the final one which was used.

![VC_word](/assets/media/version/Version_control.png)

You can imagine how cluttered the drafting stage was.

Version control using git / Github was primarily focused on code / developers. It tells you precisely what was changed, who changed, how and why. An example is as below:

![VC_git](/assets/media/version/Version_control_example.png)

It shows 449 commits (changes) made to a project. The changes may be in a single file or multiple files. An example of change to a file ias a below:

![VC_demo](/assets/media/version/Version_control_demo.png)

As clearly indicated, line 6 has been modified.

When it comes to drafting documents in MS word, wont it be great if there is some system which keeps track of all changes to a file, so that I can maintain just 1 file instead of multiple copies of different versions. This method is not very popular with MS Word yet. Word has an inbuilt review system, but it is not as efficient as git.
