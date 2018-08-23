<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
</head>
<body>

	<div ng-app="" ng-init="firstName='Kim';quantity=1;price=5;names=['Jenny','Heiley','John'];names2=[{name:'Jenny',country:'Norway'},{name:'Heiley',country:'Ireland'},{name:'John',country:'England'}">
		<p>FirstName : <input type="text" ng-model="firstName"></p>
		<p>You wrote : {{ firstName }}</p><hr>
		
		Quantity : <input type="number" ng-model="quantity"><br>
		Costs : <input type="number" ng-model="price"><br>
		
		Total in dollar : {{ quantity * price }}<br><hr>
		
		<h3>names</h3>
		<ul>
			<li ng-repeat="x in names">
				{{ x }}
			</li>
		</ul>
		<hr>
		
		<h3>names2</h3>
		<ul>
			<li ng-repeat="y in names2">
				{{ y }}
			</li>
		</ul>	
		
	</div>
	
</body>
</html>