{% extends "base.tpl" %}

{# Simple page for PHONE #}

{% block content %}
<div {% block content_attributes %}{% include "_language_attrs.tpl" id=id class="wrapper" %}{% endblock %}>
	{% include "_title.tpl" %}
	{% block main %}
		{% include "_meta.tpl" %}

		{% block summary %}
			{% if m.rsc[id].summary %}
				<p class="summary"><b>{{ m.rsc[id].summary }}</b></p>
			{% endif %}
		{% endblock %}

		{% include "_address.tpl" %}

		{% block subnav %}
			{% include "_subnav.tpl" %}
		{% endblock %}

		{% block body %}
                {% include "_page_depiction.tpl" %}
		<div class="body">
			{{ m.rsc[id].body|show_media }}
			{% include "_blocks.tpl" %}
		</div>
		{% endblock %}

		{% block below_body %}{% endblock %}

		{% block seealso %}
			{% include "_content_list.tpl" list=id.o.hasfeatured %}
	        {% include "_content_list.tpl" list=id.o.haspart in_collection=id %}
	        {% include "_content_list.tpl" list=id.o.relation %}
		{% endblock %}

		{% block thumbnails %}
		{% endblock %}

		{% block sidebar_collection %}
			{% with m.rsc.sidebar_collection.id as id %}
			{% include "_content_list.tpl" list=id.o.haspart %}
			{% endwith %}
		{% endblock %}
	{% endblock %}
</div>
{% endblock %}
