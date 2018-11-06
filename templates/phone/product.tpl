{% extends "page.tpl" %}
{% inherit %}

{% block body %}
<div class="row text-center">
    {% include "_page_depiction.tpl" %}
    <p></p>
    <p class="lead">
        {% include "_price_and_stock_info.tpl" %}
    </p>
</div>
<div class="body">
    {{ m.rsc[id].body|show_media }}
    {% include "_blocks.tpl" %}
</div>
{% endblock %}

{% block thumbnails %}
{% endblock %}
~
