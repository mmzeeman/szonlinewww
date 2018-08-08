{% extends "base.tpl" %}

{% block title %}{{ m.site.title }}{% endblock %}

{% block navbar_brand %}
    <img src="/lib/images/sz-online-logo.png" />
    <span>Home</span>
{% endblock %}

{% block content %}
<div class="page-title">
    <div class="{% if z_language|is_rtl %}col-lg-8 col-md-8{% endif %}">
        {% include "_breadcrumb.tpl" %}
        {% include "_title.tpl" %}
    </div>
</div>
<div class="row">
    <div id="subnavbar" class="col-lg-4 col-md-4">
        {% include "_content_list.tpl" list=m.search[{query cat='product' sort='-rsc.modified' pagelen=5}] title=_"Products" %}
    </div>

    <div class="main col-lg-8 col-md-8">
        <div class="page-header">
            <h1>{{ m.rsc.page_home.title }} <small>{{ m.rsc.page_home.summary }}</small>
        </div>

        {{ m.rsc.page_home.body | show_media }}
    </div>
</div>
{% endblock %}
