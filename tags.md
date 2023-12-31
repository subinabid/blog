---
layout: page
title: Tags
permalink: /tags/
---
  
{% assign sorted_tags = site.tags | sort %}
{% for tag in sorted_tags %}
  {% assign sorted_posts = tag[1] | sort: 'title' %}
  <h3 id="{{ tag[0] }}">{{ tag[0] }}</h3>
  <ul>
    {% for post in sorted_posts %}
      <li><a href="{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
  </ul>
{% endfor %}