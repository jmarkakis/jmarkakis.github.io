<h2 id="talks" style="margin: 2px 0px -15px;">Talks</h2>

<div class="publications">
<ol class="bibliography">

{% for link in site.data.talks.main %}

<li>
  <div class="col-sm-9" style="position: relative;padding-right: 15px;padding-left: 20px;">
    <div class="title"><a href="{{ link.pdf }}">{{ link.title }}</a></div>
    <div class="venue"><em>{{ link.venue }}</em></div>
    <div class="location"><em>{{ link.location }} ({{ link.date }})</em></div>
    <div class="links">
      {% if link.pdf %} 
      <a href="{{ link.pdf }}" class="btn btn-sm z-depth-0" role="button" target="_blank" style="font-size:12px;">SLIDES</a>
      {% endif %}
      {% if link.page %} 
      <a href="{{ link.page }}" class="btn btn-sm z-depth-0" role="button" target="_blank" style="font-size:12px;">WEBPAGE</a>
      {% endif %}
    </div>
  </div>
</li>

{% endfor %}

</ol>
</div>