(function(namespace) {
	ShangxiabanList = can.Control({
		init:function(element,options){
			var el = this;
			Line.findAll({},function(results){
				el.element.html(can.view(
					"js/app/views/shangxiaban/shangxiabanList.ejs",results
				));
			});
			
		}
	});
	can.extend(namespace,{
		ShangxiabanList:ShangxiabanList
	})
})(window);