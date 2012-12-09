/**
 * @author lucifer
 */

var FieldEdit = function() {
	"use strict";
	return {

		/**
		 * @public
		 * @param selector String
		 */
		init: function(selector){
			var that = this;
			var field = $(selector);
			this.createButtons(field);
			field.click(function(){
				that.makeEditable($(this));
			});
		},
		/**
		 * @protected
		 * @param element
		 */
		save: function(element){

		},
		/**
		 * @protected
		 * @param element
		 */
		makeEditable: function(element){
			console.debug(element);
			element.addClass("edited");
//			element.parent(".editableFieldWrapper").addClass("active");
//			element.prepend(this.okButton);
		},
		cancelEditable: function(selector){
			$(selector).attr("contenteditable", false);
		},
		createButtons: function(element){
			var buttons =
					'<div class="editButtons">' +
						'<button class="btn btn-mini fieldOkButton"><i class="icon-ok" /></button>' +
						'<button class="btn btn-mini fieldCancelButton"><i class="icon-remove" /></button>' +
					'</div>';
			var backup = document.createElement("span");
			backup.className = "backup";
			backup.innerHTML = element.text();
			element.wrap('<div class="editableFieldWrapper"></div>');
			element.prepend(buttons);
			element.append(backup);
		}
	}
};
