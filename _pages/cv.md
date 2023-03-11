---
title: "CV"
permalink: /cv/
---

Education
---
* **University of Cambridge**, Fitzwilliam College, Cambridge, UK
  * Ph.D. in Computer Science, Sep 2024 (expected)
* **University of Maryland**, College Park, MD, USA
  * M.A. in Mathematics, Jun 2020
  * GPA: 4.00 / 4.00
  * Master's thesis: Cardinal powers and Silver's theorem
* **University of Crete**, Heraklion, Greece
  * Ptychion in Mathematics, June 2017
  * GPA: 9.3 4 / 10 (Valedictorian)
  * Erasmus exchange in University of Barcelona (2015-2016)

Publications
---
{% for post in site.publications reversed %}
* {{ post.authors }}.
  "{{ post.title }}"
  *{{ post.venue }}*
  ({{ post.date | date: "%Y" }})
  doi: {{ post.doi }}
  [<i class="fas fa-fw fa-link" aria-hidden="true"></i>](https://doi.org/{{ post.doi }})
  [<i class="fas fa-fw fa-file-pdf" aria-hidden="true"></i>]({{ base_path }}/files/{{ post.paperurl }})
{% endfor %}

Presentations
---
{% for post in site.presentations reversed %}
* {{ post.title }}. {{ post.venue }} ({{ post.date | date: "%b %d, %Y"}})
[<i class="fas fa-fw fa-file-pdf" aria-hidden="true"></i>]({{ base_path }}/files/{{ post.paperurl }})
{% endfor %}

Teaching
---
{% for post in site.teaching reversed %}
* {{ post.type }}, [{{ post.title }}]({{ post.paperurl }}), {{ post.venue }} ({{ post.date | date: "%Y" }})
{% endfor %}


Awards
---
* College Senior Scholarship, Fitzwilliam College, Nov 2022
* College Senior Scholarship, Fitzwilliam College, Mar 2022
* Departmental Studentship, University of Cambridge, Sep 2020
* Ph.D. Scholarship, Onassis Foundations, Sep 2020
* "Stilianos Pichoridis" Award, University of Crete, Nov 2016
* "Chrisanthos and Anastasia Karidi" Scholarship, University of Crete, Sep 2013
* "Moving Education Forward" Award, Eurobank Group, Aug 2013

Languages
---
* Native in Greek
* Fluent in English
* Fluent in Spanish
* Beginner in German


