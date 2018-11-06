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
    <div class="main col-lg-8 col-md-8">
        {{ m.rsc.page_home.body | show_media }}

        <div class="container">
            <h3>{_ Products _}</h3>
            {% for product in m.search[{query cat='product' sort='-rsc.modified' pagelen=5}] %}
                {% include "_panel_item.tpl" id=product %}
            {% endfor %}
        </div>

    </div>
</div>
{% endblock %}
