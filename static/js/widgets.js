/**
 * @author Maxim Levicky
 * Date: 18.03.12
 * Time: 17:34
 */
$(document).ready(function(){
	var fieldEdit = new FieldEdit();
	fieldEdit.init(".editable");
});
//
//function WTWidgets() {
//}
//WTWidgets.prototype = {
//    container:'#container',
//    clickLink:function (object) {
//        if (!object.hasClass('direct')) {
//            var $target = object.attr('target');
//            if ($target == undefined || ($target.charAt(0) != '!')) {
//                $target = 'mainContent';
//            }
//            WTWidgets.openLink(object.attr('href'), $target, false);
//        }
//    },
//    openLink:function (url, target) {
//        var aurl = url.indexOf('?') == -1 ? url + '?' : url + '&';
//        $.ajax({
//            url:aurl + 'v=ajax',
//            success:function (data) {
//                WTWidgets.loadWidget(target, data);
//                History.replaceState({}, null, WTWidgets.replaceWidgetUrl(url, target));
//            }
//        });
//    },
//    loadWidget:function (name, content) {
//        if ($('#' + name).length < 1) {
//            $(WTWidgets.container).append('<div class="widget" id=' + name + '></div>');
//        }
//        $(WTWidgets.container).find('#' + name).html(content);
//    },
//    replaceWidgetUrl:function (url, widget) {
//        var $pos = window.location.pathname.indexOf(':' + widget);
//        if ($pos == -1) {
//            return window.location.pathname + ':' + widget + url;
//        }
//        else {
//            return window.location.pathname.replace(new RegExp(':(.*:|.*)', 'g'), ':' + widget + url)
//        }
//    },
//    processUrl:function () {
//        var definedWidgets = {main:'mainContent'};
//        var widgets = explode(':', window.location.pathname);
//
//        for (var key in widgets) {
//            var widgetLength = widgets[key].indexOf('/');
//            var widget = widgets[key].substr(0, widgetLength);
//            if (widget == -1 || widget == '') continue;
//            var url = widgets[key].substr(widgetLength + 1);
//            if (definedWidgets[widget]) widget = definedWidgets[widget];
//            console.debug(url);
//            this.openLink('/' + url, widget, true);
//        }
//    }
//};
//
////WebTree.prototype.widgets = function(){};
////WebTree.widgets.prototype = function(){};
////WebTree.widgets.clickLink = function(object){
////	alert(1);
////}
////		this.widgets = function(){
////		this.container = '#container';
////		var linkClick = function(object){
////			alert(1);
////			if (!object.hasClass('direct')){
////				var $target = object.attr('target');
////				if (!($target || ($target.charAt(0) == '!'))){
////					$target = 'mainContent';
////				}
////				org.webtree.widget.openLink(object.attr('href'), $target);
////			}
////			return false;
////		}
////		this.linkClick = new linkClick();
////		this.openLink = function(href, target){
////			$.ajax({
////				url: href,
////				success: function(data){
////					org.webtree.widgets.loadWidget(target, data);
////				}
////			});
////		}
////		this.loadWidget = function(name, content){
////			name = '#' + name;
////			if (!$(name).lenght){
////				$(org.webtree.widgets.container).append('<div id='+name+'></div>');
////			}
////			$(name).html(content);
////		}
////	}
////};
