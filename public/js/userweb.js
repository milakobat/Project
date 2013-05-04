
var errors = []; //array que hemos creado para almacenar todos los errores y luego comprobar si esta pasando alguno de esoos errores

var checkUsername = function(event){

	//check username
	var username = $(event.target).find(".username input").val();
	if (username === ""){
		errors.push("username");
		$(event.target).find(".username .error").html("Username Error").show();
	} else {
		$(event.target).find(".username .error").css("display",'none');
	}

};

var checkPassword = function(event){

	//check password is the same
	var password = $(event.target).find(".password input").val();

	var password2 = $(event.target).find(".password2 input").val();

	if (password !== password2){
		errors.push("password");
		$(event.target).find(".password .error").html("Password Error").show();
	} else {
		$(event.target).find(".password .error").css("display",'none');
	}

};


$(".login").on("submit", function(event){

	checkUsername(event);
	checkPassword(event);
	

	//if something is wrong --> error messages
	if (errors.length > 0){
		event.preventDefault();
		console.log(errors);
}
	//if everything ok --> submit



});

