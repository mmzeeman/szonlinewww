{% wire id=#notify_me type="submit" postback={notify_me product=id} delegate="szonlinewww" %}

<form id="{{ #notify_me }}" class="form-horizontal"  action="postback">
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
    <div class="col-sm-12 text-right">
        {% button class="btn btn-default" action={dialog_close} text=_"Cancel" tag="a" %}
        {% button class="btn btn-primary" type="submit" text=_"Notify" %}
    </div>
</div>

</form> 
