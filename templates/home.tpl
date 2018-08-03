{% extends "base.tpl" %}

{% block title %}{{ m.site.title }}{% endblock %}

{% block navbar_brand %}
    <span class="sz-online-logo"></span>
    {{ m.config.site.title.value }}
{% endblock %}

{% block main %}


<div class="page-header">
    <h1>{{ m.rsc.page_home.title }} <small>{{ m.rsc.page_home.summary }}</small>
</div>

{{ m.rsc.page_home.body | show_media }}


{% endblock %}

