<p class="text-muted">
    {#
    <span class="label label-default">{{ id.category_id.title }}</span>
    {% all include "_meta_extra.tpl" %}
    #}
    <span>
        {% if id.is_editable %}
            <a class="btn btn-default btn-xs" href="{% url admin_edit_rsc id=id %}">{_ Edit _}</a>
        {% endif %}
        {% include "_meta_share.tpl" %}
    </span>
</p>
<hr />
