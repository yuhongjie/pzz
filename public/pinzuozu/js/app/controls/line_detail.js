(function(namespace) {
	ShangxiabanDetail = can.Control({
		init:function(element,options){
			var el = this;
			Line.findOne({id:el.options.id},function(line){
				el.element.html(can.view(
					"js/app/views/shangxiaban/line_detail.ejs",{line:line}
				));
			});
			
		}
	});
	can.extend(namespace,{
		ShangxiabanDetail:ShangxiabanDetail
	})
})(window);