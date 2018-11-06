{% extends "page.tpl" %}
{% inherit %}

{% block depiction %}
    {% include "_page_depiction.tpl" %} 
    <p></p>
    <p class="lead">
        {% include "_price_and_stock_info.tpl" %}
    </p>
{% endblock %}

{% block thumbnails %}
{% endblock %}
