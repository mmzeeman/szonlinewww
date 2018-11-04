{% extends "page.tpl" %}
{% inherit %}

{% block body %}
    {% include "_product_depiction.tpl" %}
    <p></p>
    <p class="lead">
        {% include "_price_and_stock_info.tpl" %}
    </p>

    <div class="body">
        {{ m.rsc[id].body|show_media }}
        {% include "_blocks.tpl" %}
    </div>
{% endblock %}

{% block thumbnails %}
{% endblock %}
~
