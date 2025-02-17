---
layout: homepage
---

<h2>About Me</h2>

I am a Research Assistant at the [Computer Lab](https://www.cst.cam.ac.uk/) of the [University of Cambridge](https://www.cam.ac.uk/), working with [Prof. Jamie Vicary](https://www.cl.cam.ac.uk/~jv258/). My research interests lie in the intersection of mathematics and theoretical computer science. I am working on higher category theory using ideas from logic and dependent type theory. I am interested in applications of higher categories to topology and to the semantics of programming languages. Moreover, I am interested in the homotopy theory of higher categories, in particular the comparison of different models, and the homotopy hypothesis for globular models.

<h2 style="margin: 0px 0px -15px;">Publications</h2>

<div class="publications">
<ol class="bibliography" >
{% for paper in site.data.papers.main %}
<li>
  <div class="col-sm-9" style="position: relative;padding-right: 15px;padding-left: 20px;">
    <div class="title"><a href="{{ paper.pdf }}">{{ paper.title }}</a></div>
    <div class="author">{{ paper.authors }}</div>
    <div class="periodical"><em>{{ paper.journal }} ({{ paper.date }})</em></div>
    {% if paper.abstract %}<div class="abstract"><details><summary>Abstract</summary><p style="margin-left: 15px">{{ paper.abstract }}</p></details></div>{% endif %}
    <div class="links">
      {% if paper.pdf %}<a href="{{ paper.pdf }}" style="font-size:20px;"><i class="fa fa-file-pdf"></i></a>{% endif %}
      {% if paper.arxiv %}<a href="{{ paper.arxiv }}" style="font-size:20px;"><i class="ai ai-arxiv"></i></a>{% endif %}
      {% if paper.doi %}<a href="{{ paper.doi }}" style="font-size:20px;"><i class="ai ai-doi"></i></a>{% endif %}
      {% if paper.code %}<a href="{{ paper.code }}" style="font-size:20px;"><i class="fab fa-github"></i></a>{% endif %}
    </div>
  </div>
</li>
{% endfor %}
</ol>
</div>

<h2 style="margin: 0px 0px -15px;">Talks</h2>

<div class="publications">
<ol class="bibliography">
{% for talk in site.data.talks.main %}
<li>
  <div class="col-sm-9" style="position: relative;padding-right: 15px;padding-left: 20px;">
    <div class="title"><a href="{{ talk.pdf }}">{{ talk.title }}</a></div>
    <div class="venue"><em>{{ talk.venue }}</em></div>
    <div class="location"><em>{{ talk.location }} ({{ talk.date }})</em></div>
    <div class="links">
      {% if talk.pdf %}<a href="{{ talk.pdf }}" style="font-size:20px;"><i class="fa fa-file-pdf"></i></a>{% endif %}
      {% if talk.page %}<a href="{{ talk.page }}" style="font-size:20px;"><i class="fa fa-globe"></i></a>{% endif %}
    </div>
  </div>
</li>
{% endfor %}
</ol>
</div>

<h2>Teaching</h2>

<ul style="margin: -5px -10px 0; list-style-type: none">

{% for university in site.data.teaching.main %}
<li><h4><a href="{{ university.url }}">{{ university.title }}</a></h4>
  <ul style="margin: -15px 0 5px;">
    {% for course in university.courses %}
      <li>{{ course.role }} for <a href="{{ course.url }}">{{ course.title }}</a> ({{ course.date }})</li>
    {% endfor %}
  </ul>
</li>
{% endfor %}
</ul>

<h2 style="margin-top: 20px">Conferences</h2>

<ul style="margin:0 0 5px;">
  {% for conference in site.data.conferences.main %}
  <li><a href="{{ conference.url }}">{{ conference.title }}</a>, {{ conference.location}} ({{conference.date}})</li>
  {% endfor %}
</ul>

<h2 style="margin-top: 20px">Conference Organisation</h2>

<ul style="margin:0 0 5px;">
  <li><autocolor>
    Member of the programme committee for <a href="https://www.cl.cam.ac.uk/events/syco/12/">SYCO 12</a>
  </autocolor></li>
  <li><autocolor>
    Local organiser for the <a href="https://conferences.leeds.ac.uk/yamcats/meeting-28/">28th</a> and <a href="https://conferences.leeds.ac.uk/yamcats/meeting-32/">32nd YaMCATS</a> meetings
  </autocolor></li>
  <li><autocolor>
    Local organiser for the <a href="https://www.cl.cam.ac.uk/events/act2021/">Applied Category Theory 2021</a> conference
  </autocolor></li>
</ul>
