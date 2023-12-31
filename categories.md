---
layout: page
title: Categories
permalink: /categories
---

{% assign sorted_categories = site.categories | sort %}
{% for category in sorted_categories %}
  {% assign sorted_posts = category[1] | sort: 'title' %}
  <h3 id="{{ category[0] }}">{{ category[0] }}</h3>
  <ul>
    {% for post in sorted_posts %}
      <li><a href="{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
  </ul>
{% endfor %}