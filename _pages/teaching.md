---
title: "Teaching"
permalink: /teaching/
---

{% for post in site.teaching reversed %}
* {{ post.type }} for [{{ post.title }}]({{ post.paperurl }}), {{ post.venue }} ({{ post.date | date: "%Y" }})
{% endfor %}
