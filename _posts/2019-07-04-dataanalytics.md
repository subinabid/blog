---
layout: post
title: Why data analytics, business analytics and IT are very different jobs
tags: DataAnalytics
categories: Analytics Data IT
---

IT department is a confusing affair (where I work). What exactly do they do?
*	Procure servers, computers, laptops, printers, toners, peripherals, networking equipment – NO – that is purchase department. IT may be giving the specs
*	Maintain and offer tech support for PCs printers – YES – one of their jobs
*	Maintain networks – YES – they do that too
*	Develop and maintain beautiful websites – YES, definitely yes
*	Develop and maintain applications for web and mobile - YES, that who we generally call as software engineers
*	Maintain our SAP, email, data centers, databases, communications etc – YES
*	Procuring software – that is a confusing affair
*	Data analytics and BI – NO – definitely no

Data analytics is definitely not an IT affair. A data scientist may or may not require IT support for certain activities, beyond that IT doesn’t have much role. The support will be mostly setting up the environment, network, database, connectivity etc.

DA requires coding skills, which is trainable or can be achieved with effort. Training someone in coding is easier than teaching the business logic to someone who can code. Knowing the environment is more important than coding skills.  

Let us see an example. Regression is popular method in DA. We model a continuous variable Y as a mathematical function of one or more X variable(s), so that we can use this regression model to predict the Y when only the X is known. Is simple terms, it is a prediction model. This mathematical equation can be generalized as follows:

```Y = β1 + β2X + ϵ```

where, β1 is the intercept and β2 is the slope. Collectively, they are called regression coefficients. ϵ is the error term.

While building a regression model, we need to choose the model variables correctly, Correlation analysis can give relationship between 2 independent variables. Correlation can take values between -1 to +1, -1 being perfect inverse relationship (y α 1/x) and 1 being a perfect direct relationship (y α x). 0 is a weak relationship. If I was using ‘R’ (software)for doing an analysis, I would write 

```cor($variable1, $variable2)```

Consider a project where we are trying to create a model which predicts NTPC’s Revenue, Expenses and Profit (REPModel) for the coming years. We have historic data with us, using which, we are building a model.

|FY Ending|	2015|	2016|	2017|	2018|	2019|
|:---|	---:|	---:|	---:|	---:|	---:|
|PAT|	9,957|	10,769|	 9,385|	 10,343|	12,633|

To make a mathematical model we need to choose the variables that contribute to the model wisely. The accuracy of the model depends on accuracy of the variables – correctness as well as significance. Let us say, we are starting to work on the REPModel with 1000 different variables. Some of them relevant and some irrelevant. One of the variables in the initial model is age of Japanese population. There is no restriction on what variables can be considered initially. They can be retained or removed in subsequent iterations. Someone might ask why Japanese age is relevant here. Who knows? Maybe because we have Japanese contractors?, may be because we take JBIC loan? We don’t know for sure if it is relevant or not, yet.
  
|Year	|2015|	2016|	2017|	2018|	2019 Est|
|:---|	---:|	---:|	---:|	---:|	---:|
|% above age 65|	23.0|	23.9|	24.7|	25.4|	26.7|

If we run correlation model, with NTPC’s profits and Japan’s average age, we will get a very high value of correlations. 

![Correlation_graph](/assets/media/others/DA_Profit_vs_age.png)


Pure mathematically, we could build a predictive model with these 2 variables. But someone who has knowledge of finance / business would definitely know that Japanese are not increasing our profits. To understand that “correlation doesn’t meant causation”, someone needs to understand the business model. If we were trying to build a model to predict the profit for some company who makes adult diapers, then this would have been a perfect fit. And, to appreciate the difference between 2 models, the analyst needs to know the business environment. 

And hence, for data analytics / business analytics to provide valuable insights to the higher management to act upon, the same shall be done by people with knowledge on the subject being handled. Coding skills can be acquired with practice. Having said this, I am not of the opinion that an IT person cannot be a data analyst, but emphasizing that they are different jobs altogether. One can be smart at both.
