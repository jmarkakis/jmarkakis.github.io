---
title: "Publications"
permalink: /publications/
---

{% assign base_path = site.url | append: site.baseurl %}

{% for post in site.publications reversed %}
* {{ post.authors }}.
  "{{ post.title }}"
  *{{ post.venue }}*
  ({{ post.date | date: "%Y" }})
  doi: {{ post.doi }}
  [<i class="fas fa-fw fa-link" aria-hidden="true"></i>](https://doi.org/{{ post.doi }})
  [<i class="fas fa-fw fa-file-pdf" aria-hidden="true"></i>]({{ base_path }}/files/{{ post.paperurl }})
  > {{ post.excerpt }}
{% endfor %}
