<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<div class="container-lg">
		<div class="row justify-content-center">
			<div class="col-10 col-md-12 col-lg-14">
				<h1>${getBoard.id }번게시글</h1>
					<div class="mb-3">
						<label for="get-title" class="form-label"></label>제목 <input id="get-title" type="text" class="form-control" name="title" value="${getBoard.title}" readonly />
					</div>
					
					<!-- 파일 출력 -->
					<div class="mb-3">
						그림
						<c:forEach items="${getBoard.photoName }" var="photo">
							<div>
								<img class="img-fluid img-thumbnail" src="${bucketUrl}/${getBoard.id}/${photo}" />
							</div>
						</c:forEach>
					</div>

					<div class="mb-3">
						<label for="get-body" class="form-label"></label>본문
						<textarea rows="10" id="get-body" class="form-control" name="body" readonly>${getBoard.body }</textarea>
					</div>
					<div class="mb-3">
						<label for="get-writer" class="form-label"></label>작성자 <input id="get-writer" type="text" class="form-control" name="writer" value="${getBoard.writer}" readonly />
					</div>
					<div class="mb-3">
						<label for="get-region" class="form-label"></label>지역 <input id="get-region" type="text" class="form-control" name="region" value="${getBoard.region}" readonly />
					</div>
					<div class="mb-3">
						<label for="get-inserted" class="form-label"></label>작성일 <input id="get-inserted" type="text" class="form-control" name="inserted" value="${getBoard.inserted}" readonly />
					</div>
					
					<div class="mb-3">
						<button>수정</button>
						<button class="btn btn-danger" form="removeForm" type="submit">삭제</button>
					</div>
			</div>
		</div>
	</div>
	
	<div style="display: none;">
	<form action="/remove" method="post" id="removeForm">
		<input type="text" name="id" value="${getBoard.id }"/>
	</form>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js" integrity="sha512-pumBsjNRGGqkPzKHndZMaAG+bir374sORyzM3uulLV14lN5LyykqNk8eEeUlUkB3U0M4FApyaHraT65ihJhDpQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</body>
</html>