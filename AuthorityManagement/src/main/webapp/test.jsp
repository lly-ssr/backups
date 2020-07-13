<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/css3clock.js"></script>

</head>
<body>
	<script type="text/javascript">
		function test() {
			var id = "成功";
			$.ajax({// 向后台传输数据
				method : "post",
				url : "test",// 填写Controller中的value
				data:id,
				contentType : 'application/json;charset=utf-8',
				async : true,
				traditional : true,
				success : function(data) {//获取管理员用户名
					alert(data);
				},
				error : function(XMLHttpRequest, textStatus, errorThrown) {
					console.log("失败" + XMLHttpRequest.status + ":" + textStatus
							+ ":" + errorThrown);
				}
			})
		}
	</script>
	<a href="javascript:" onclick="test()">点我</a>
</body>
</html>