{% wire id=#notify_me type="submit" postback={notify_me product=id} delegate="mod_account_chat" %}

<form id="{{ #notify_me }}" class="form"  action="postback">

 <div class="form-group">
     <label for="language" class="col-sm-3 control-label">{_ Email _}</label>
     <div class="col-sm-9">
     </div>
 </div>

 <hr/>

 <div class="row">
   <div class="col-sm-12 form-group text-right">
     {% button class="btn btn-default" action={dialog_close} text=_"Cancel" tag="a" %}
     {% button class="btn btn-primary" type="submit" text=_"Ok" %}
   </div>
 </div>


 </form> 
