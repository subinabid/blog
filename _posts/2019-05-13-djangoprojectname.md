---
layout: post
title: How to change a Django Project name
tags: software, python, django
categories: software, python, django
---

If you are reading this, then, most probably you are already working on your project in Django. Running the command  `django-admin startproject ProjectName` easily starts the project for you. Nothing complicated here. Imagine you have already worked on your project for a while and you want to rename it.

The default project structure is:
```
ProjectName/
         manage.py
         ProjectName/
                 __init__.py
                 settings.py
                 urls.py
                 wsgi.py
```

The root `ProjectName` can easily be renamed in your file explorer. Renaming this folder wont affect your project in anyway, except, having to relocate your git repository folder. Renaming the second `ProjectName` can also be done in your file explorer, but this has to be followed by these steps:

1. Change `setting.py`
```
ROOT_URLCONF = 'NewProjectName.urls'
WSGI_APPLICATION = 'NewProjectName.wsgi.application'
```
2. Change `wsgi.py`
```
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "NewProjectName.settings")
```
3. Change `manage.py` in the root folder
```
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "NewProjectName.settings")
```

Renaming the apps is much more complicated. More on that, later.
