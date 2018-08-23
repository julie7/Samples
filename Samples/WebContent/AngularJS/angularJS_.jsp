<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<title>Insert title here</title>
</head>
<body>

	<h1>안녕하세요!</h1>
	
	<div ng-app="myApp" ng-init="myCol='red'">
 
		<p>Input something in the input box:</p>
		<p>Name : <input type="text" style="background-color: {{myCol}}" ng-model="myCol" placeholder="Enter name here"></p>
		<h1>Hello {{myCol}}</h1>
	
	</div>
		
	<script>
		var app = angular.module("myApp", []);
	</script>
	
</body>
</html>