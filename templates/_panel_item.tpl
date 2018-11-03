{% if id.is_visible and id.is_published and not id|member:exclude %}
{% with id.depiction as dep %}

<div class="col-md-4 col-lg-4">
<div class="panel panel-noborder">
<div class="panel-body">
{% if dep %}
    <div {% include "_language_attrs.tpl" id=id class="do_clickable has-depiction" %}>
        {% if dep.id.is_a.document %}
            <a href="{{ id.page_url }}">
                <img class="img-responsive product" src="{% image_url dep mediaclass="base-list-item-small-document" %}" alt="{{ id.title }}" />
            </a>
        {% else %}
            <a href="{{ id.page_url }}">
                <img class="img-responsive product" src="{% image_url dep mediaclass="product-list-item-small" %}" alt="{{ id.title }}" />
            </a>
        {% endif %}
    </div>
{% endif %}
<p></p>
<p class="lead product-info">
    <strong>{{ id.title }}</strong><br/>
    {% include "_price_and_stock_info.tpl" %}
</p>

</div>
</div>
</div>

{% endwith %}
{% endif %}
