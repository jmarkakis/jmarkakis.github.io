<h2 id="teaching" style="margin: 20px 0px 10px;">Conferences</h2>

<ul style="margin:0 0 5px;">

  {% for conference in site.data.conferences.main %}
    
  <li><autocolor>
    <a href="{{ conference.url }}">{{ conference.title }}</a>, {{ conference.location}} ({{conference.date}})
  </autocolor></li>
  
  {% endfor %}

</ul>