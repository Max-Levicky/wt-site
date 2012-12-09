function WtMenu(){
	"use strict";

	this.bind = function (selector){
		var menu = $(selector);
		var children = menu.children("ul").children("li");
		children.mouseenter(function(){
			console.debug($(this).children("ul.sub"));
			$(this).children("ul.sub").show();
		});
		children.mouseleave(function(){
			$(this).children("ul.sub").hide();
		});
	}
}