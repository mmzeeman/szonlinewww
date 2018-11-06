<p class="text-muted">
        {% if forloop.first %}{_ By _}{% endif %}
        <a href="{{ id.page_url }}">{{ id.title }}</a>{% if not forloop.last %}, {% else %} &ndash; {% endif %}
    {% endfor %}
    {% all include "_meta_extra.tpl" %}
    <span class="pull-right">
        {% if id.is_editable %}
            <a class="btn btn-default btn-xs" href="{% url admin_edit_rsc id=id %}">{_ Edit _}</a>
        {% endif %}
        {% include "_meta_share.tpl" %}
    </span>
</p>

