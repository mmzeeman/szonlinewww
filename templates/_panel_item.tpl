{% if id.is_visible and id.is_published and not id|member:exclude %}
{% with id.depiction as dep %}

<div class="col-md-4 col-lg-4">
<div class="panel panel-default">
<div class="panel-heading">{{ id.title|default:"&mdash;" }}</div>
<div class="panel-body">
{% if dep %}
    <div {% include "_language_attrs.tpl" id=id class="do_clickable has-depiction" %}>
        {% if dep.id.is_a.document %}
            <a href="{{ id.page_url }}">
                <img class="img-responsive" src="{% image_url dep mediaclass="base-list-item-small-document" %}" alt="" />
            </a>
        {% else %}
            <a href="{{ id.page_url }}">
                <img class="img-responsive" src="{% image_url dep mediaclass="product-list-item-small" %}" alt="" />
            </a>
        {% endif %}
    </div>
{% endif %}

{% if is_large %}{{ id|summary:300 }} {% else %}{{ id|summary:120 }} {% endif %}
<a href="{{ id.page_url with in_collection=in_collection }}">{_ Goto page _} &raquo;</a>
</div>
</div>
</div>

{% endwith %}
{% endif %}
