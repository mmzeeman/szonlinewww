{# navbar for phone+ #}
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <!-- .btn-navbar is used as the toggle for collapsed navbar content -->
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">{_ Toggle navigation _}</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

            <a class="navbar-brand" href="/">
            {% block navbar_brand %}
                <img src="/lib/images/sz-online-logo.png" />
                <span>Home</span>
            {% endblock %}
            </a>
        </div>

        <div class="navbar-collapse collapse">
            {% menu menu_id=menu_id id=id maxdepth=2 %}
        </div>
    </div>
</nav>
