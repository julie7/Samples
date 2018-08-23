<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/react/0.14.0/react.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/react/0.14.0/react-dom.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/babel-core/5.8.23/browser.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
</head>
<body>

	<style>
		#content{ border: 1px solid red; padding: 5px; margin: 5px; max-width: 500px; }
		.commentBox{ border: 1px solid black; padding 1px; margin: 5px; }
		.commentList{ border: 1px solid blue; padding: 5px; margin: 5px; }
		.commentForm{ boder: 1px solid red; padding: 5px; margin: 5px; }
		.comment{ border: 1px solid black; padding: 5px; margin: 5px; }
	</style>

	<div id="content"></div>
	
	<script type="text/babel">
		var data = [
			{author : "Pete Hunt", text : "This is one comment"},
			{author : "Jordan Walke", text : "This is *another* comment"}
		];

		var CommentBox = React.createClass({
			render : function(){
				return(
					<div className="commentBox">
						<h1>Comments</h1>
						<CommentList {...this.props} />
						<CommentForm />
					</div>
				);
			}
		});

		var CommentList = React.createClass({
			render : function(){
				var comments = this.props.data.map(function(comment, index){	
					return(
						<Comment author={comment.author} key={index}>{comment.text}</Comment>
					);
				}.bind(this));
				
				return(
					<div className="commentList">
						{comments}
					</div>
				);
			}
		});

		var CommentForm = React.createClass({
			render : function(){
				return(
					<div className="commentForm">
						<form className="commentForm">
							<input type="text" placeholder="Your name" ref="author"/>
							<input type="text" placeholder="Say Something" ref="text"/>
							<input type="submit" value="Post"/>
						</form>
					</div>
				);
			}
		});

		var Comment = React.createClass({
			render : function(){
				return(
					<div className="comment">
						<h2 className="commentAuthor">
							{this.props.author}
						</h2>
						{this.props.children}
					</div>
				);
			}
		});

		ReactDOM.render(
			<CommentBox data={data}/>,
			document.getElementById("content")
		);
	</script>
	
</body>
</html>