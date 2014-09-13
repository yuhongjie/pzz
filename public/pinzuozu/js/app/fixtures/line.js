var LINES = [
{
	id:1,
	start:'北京',
	end:'廊坊',
	startTime:'2014-09-09',
	seat:3,
	price:10
},{
	id:2,
	start:'长沙',
	end:'岳阳',
	startTime:'2014-09-10',
	seat:2,
	price:20
},{
	id:3,
	start:'四川',
	end:'上海',
	startTime:'2014-09-11',
	seat:4,
	price:28
}
];
//findAll
can.fixture("GET /lines",function(){
	return LINES;
	
});
//findOne
can.fixture("GET /lines/{id}",function(request){
	return LINES[(+request.data.id)-1];
	// return {
	// 	id:2,
	// 	start:'长沙',
	// 	end:'岳阳',
	// 	startTime:'2014-09-10',
	// 	seat:2,
	// 	price:20
	// }
});
//create
can.fixture("POST /lines",function(){
	var id = LINES.length + 1;
	LINES.push($.extend({id:id},request.data));
	return {id:id};
});
//update
can.fixture("PUT /lines/{id}",function(){
	$.extend(LINES[(+request.data.id)-1],request.data);	
	return {};
});
//delete
can.fixture("DELETE /lines/{id}",function(){
	return {};
});