{% with id.depiction as dep %}
{% if dep and dep.id.is_a.image %}
{% if (id.body or id.blocks) and not is_landscape %}
    <div class="depiction {% if dep.width < 400 or 10*dep.width / dep.height < 18 %}portrait{% else %}landscape{% endif %}">
        {% if dep.width < 400 %}
            <img class="product" src="{% image_url dep mediaclass="base-page-main-small" %}" alt="{{ dep.id.title }}" />
        {% else %}
            <img class="product" src="{% image_url dep mediaclass="base-page-main" %}" alt="{{ dep.id.title }}" />
        {% endif %}
        {% if dep.id.summary %}
            <p class="caption"><span class="icon glyphicon glyphicon-camera"></span> {{ dep.id.summary }}</p>
        {% endif %}
    </div>
{% else %}
    <div class="depiction landscape">
        <img class="product" src="{% image_url dep mediaclass="base-page-main" %}" alt="{{ dep.id.title }}" />
        {% if dep.id.summary %}
            <p class="caption"><span class="icon glyphicon glyphicon-camera"></span> {{ dep.id.summary }}</p>
        {% endif %}
    </div>
{% endif %}
{% endif %}
{% endwith %}
