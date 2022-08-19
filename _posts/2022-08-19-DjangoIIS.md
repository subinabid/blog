---
layout: post
title: Deploy Django app on IIS on Windows Server 
tags: python django
categories: python
---

I have a Django enterprise app which needs to be deployed on a Windows server with IIS. There are a lot of articles on the internet on how to do it, but I am going to focus on issues I faced during the deployment.

### Virtual Environment
Python (Django in this case) will have a virtual environment folder where the required libraries are maintained. The default behavior of Windows is to have the folder in ```C:\Users\UserName\.virtualenvs\```. While this should not be a issue during development, the deployment may be difficult. On your Windows server, the virtual environment will be created inside the user folder of the user who spins up the venv. It is not necessary that IIS will have access to this folder. So, the Venv folder shall be created at a location which is accesable to IIS and one such location is the application itself. You can explicitly tell Python to create the virtual env folder within the app folder itself.  

Set Environment variable ```PIPENV_VENV_IN_PROJECT = 1```

The virtual environment folder will be created within the project folder

### FastCGI and wfastcgi
``` pipenv install wfastcgi ``` installs ```wfastcgi``` module. FastCGI links the Http requests to python code. 