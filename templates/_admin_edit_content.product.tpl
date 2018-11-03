{% extends "admin_edit_widget_std.tpl" %}

{% block widget_title %}{_ Product_}{% endblock %}

{% block widget_show_minimized %}false{% endblock %}
{% block widget_id %}content-product{% endblock %}

{% block widget_content %}
<fieldset class="form-horizontal">
    <div class="form-group row">
            <label class="control-label col-md-3">{_ Price (EUR) _}</label>
            <div class="col-md-6">
                    <input type="text" class="form-control" name="product_price" id="product_price" value="{{ id.product_price }}" />
                    {% validate id="product_price" type={numericality is_float=`true`} %}
            </div>
    </div>
    <div class="form-group row">
            <label class="control-label col-md-3">{_ Stock_}</label>
            <div class="col-md-6">
                    <input type="text" class="form-control" name="product_stock" id="product_stock" value="{{ id.product_stock }}" />
                    {% validate id="product_stock" type={numericality} %}
            </div>
    </div>
</fieldset>
{% endblock %}
