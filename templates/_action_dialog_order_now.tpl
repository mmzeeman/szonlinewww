<div class="row">
    <div class="col-sm-3"></div>
    <div class="col-sm-9">
        <p>{_ After you fill in this form, we will send you a payment request by email. When we receive the payment, the order will be shipped to your address within 24 hours. _}</p>
    </div>
</div>

{% wire id=#order_now type="submit" postback={order_now product=product} delegate="szonlinewww" %}
<form id="{{ #order_now }}" class="form-horizontal"  action="postback">
<div class="form-group">
     <label for="name" class="col-sm-3 control-label">{_ Name _}</label>
     <div class="col-sm-9">
        <input id="name" name="name" class="form-control" type="text" placeholder="{_ Your Name _}" />
        {% validate id="name" type={presence} failure_message="" %}
     </div>
</div>

<div class="form-group">
     <label for="email" class="col-sm-3 control-label">{_ Email _}</label>
     <div class="col-sm-9">
        <input id="email" name="email" class="form-control" type="text" placeholder="{_ Your Email Address _}" />
        {% validate id="email" type={presence} type={email} failure_message="" %}
     </div>
</div>

<div class="form-group">
     <label for="street" class="col-sm-3 control-label">{_ Street _}</label>
     <div class="col-sm-9">
        <input id="street" name="street" class="form-control" type="text" placeholder="{_ Street _}" />
        {% validate id="street" type={presence} failure_message="" %}
     </div>
</div>

<div class="form-group">
     <label for="zip_code" class="col-sm-3 control-label">{_ Zip Code _}</label>
     <div class="col-sm-9">
        <input id="zip_code" name="zip_code" class="form-control" type="text" placeholder="{_ Zip Code _}" />
        {% validate id="zip_code" type={presence} failure_message="" %}
     </div>
</div>

<div class="form-group">
     <label for="city" class="col-sm-3 control-label">{_ City _}</label>
     <div class="col-sm-9">
        <input id="city" name="city" class="form-control" type="text" placeholder="{_ City _}" />
        {% validate id="city" type={presence} failure_message="" %}
     </div>
</div>

<div class="form-group">
    <div class="col-sm-12 text-right">
        {% button class="btn btn-default" action={dialog_close} text=_"Cancel" tag="a" %}
        {% button class="btn btn-primary" type="submit" text=_"Order" %}
    </div>
</div>

</form> 
