(function(namespace) {
	var Line = can.Model({
		findAll:'GET /pzz_lines',
		findOne:'GET /pzz_lines/{id}',
		create: 'POST /lines',
		update: 'PUT /lines/{id}',
		destroy: 'DELETE /lines/{id}' 
	},{});

	// Export our model to the namespace
	namespace.Line = Line;
})(window);