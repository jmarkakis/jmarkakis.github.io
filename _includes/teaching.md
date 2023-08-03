<h2 id="teaching" style="margin: 20px 0px 10px;">Teaching</h2>

{% for university in site.data.teaching.main %}

<h4 style="margin:0 10px 0;"><a href="{{ university.url }}">{{ university.title }}</a></h4>

<ul style="margin:0 0 5px;">
  
  {% for course in university.courses %}
  
  <li><autocolor>
    {{ course.role }} for <a href="{{ course.url }}">{{ course.title }}</a> ({{ course.date }})
  </autocolor></li>
  
  {% endfor %}

</ul>

{% endfor %}







