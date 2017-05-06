$(document).ready(function() {
    console.log('ready');

//Submit Button Function
var submit = function(event) {
    event.preventDefault();

var selected = [];
$('#checkboxes input:checked').each(function() {
    selected.push($(this).attr('name'));
});
for(var i=0; i<selected.length; i++) { selected[i] = parseInt(selected[i]); } 

    //create an empty obj, list prop, and store val
    var data = {
        UserName: $("#user_name").val(),
        Friends: $("#friends").val(),
    }  

    var a= {};
    a["user_name"]=data.UserName;
    a["friends"]=data.Friends;
    a["timing"]= selected;

    var trackingJSON = JSON.stringify(a);
    var urlAjax =  "http://127.0.0.1:5000/reconnect" ;
    //deleted: + trackid


    var jqxhr = $.ajax({
        type: "POST",
        url: urlAjax,
        //contentType: "application/json",
        data: trackingJSON, 
        success: function(data) { console.log(data) },
        //deleted the parameter: data from success and error.
        error: function(data) {alert("ajax error"); },
        dataType: 'json'
    });


	    console.log("data was created!");
	    $('#user_name').val('');
		$("#friends").val('');
		$('#checkboxes :checked').removeAttr('checked');
};

$("#submit").on("click", submit);



//Add Input Button, i.e.
   

//end of add input field

});
