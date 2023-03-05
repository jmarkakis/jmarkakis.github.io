---
title: "Presentations"
permalink: /presentations/
---

{% for post in site.presentations reversed %}
* ### {{ post.title }}.
  {{ post.type }} in {{ post.venue }} ({{ post.date | date: "%b %d, %Y"}})
[<i class="fas fa-fw fa-file-pdf" aria-hidden="true"></i>]({{ base_path }}/files/{{ post.paperurl }})
  > {{ post.excerpt }}

{% endfor %}
