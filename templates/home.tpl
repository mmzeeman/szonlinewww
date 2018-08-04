{% extends "base.tpl" %}

{% block title %}{{ m.site.title }}{% endblock %}

{% block navbar_brand %}
    <img src="/lib/images/sz-online-logo.png" />
    <span>Home</span>
{% endblock %}

{% block main %}

<div class="page-header">
    <h1>{{ m.rsc.page_home.title }} <small>{{ m.rsc.page_home.summary }}</small>
</div>

{{ m.rsc.page_home.body | show_media }}

{% endblock %}

