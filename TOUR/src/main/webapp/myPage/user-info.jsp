<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>마이페이지</title>
<link rel="stylesheet" href="../myPage/mypage-css/mypage.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<form action="<%= request.getContextPath() %>/LoginServlet?action=login" method="post">
		<header>
			<div class="total">
				<div class="container light-style flex-grow-1 container-p-y">
					<h3 class="font-weight-bold py-3 mb-4">마이 페이지</h3>

					<div class="card overflow-hidden">
						<div class="row no-gutters row-bordered row-border-light">
							<div class="col-md-3 pt-0">
								<div class="list-group list-group-flush account-settings-links">
									<a class="list-group-item list-group-item-action active"
										data-toggle="list" href="user-info.jsp">회원 정보</a> <a
										class="list-group-item list-group-item-action"
										data-toggle="list" href="user_password-edit.jsp">비밀 번호 변경</a>
									<a class="list-group-item list-group-item-action"
										data-toggle="list" href="user-post.jsp">내가 쓴 게시글</a> <a
										class="list-group-item list-group-item-action"
										data-toggle="list" href="user-comment.jsp">내가 쓴 댓글</a> <a
										class="list-group-item list-group-item-action"
										data-toggle="list" href="user-inquiry-password.jsp">문의 내역</a>
									<a class="list-group-item list-group-item-action"
										data-toggle="list" href="user-delete.jsp">회원 탈퇴</a>
								</div>
							</div>
							<div class="col-md-9">
                                <div class="tab-content">
                                    <div class="card-body media align-items-center"></div>
                                </div>
                                <hr class="border-light m-0">
                                <div class="card-body">
                                    <div class="form-group">
                                        <label class="form-label" for="userName">이름</label>
                                        <input type="text" id="userName" name="userName" class="form-control" value="<%=session.getAttribute("user_name")%>" disabled />
                                    </div>
                                    <div class="form-group">
                                        <label class="form-label" for="userSex">성별</label>
                                        <input type="text" id="userSex" name="userSex" class="form-control" value="<%=session.getAttribute("user_sex")%>" disabled />
                                    </div>
                                    <div class="form-group">
                                        <label class="form-label" for="userEmail">이메일</label>
                                        <input type="email" id="userEmail" name="userEmail" class="form-control" value="<%=session.getAttribute("user_email")%>" disabled />
                                    </div>
                                    <div class="form-group">
                                        <label class="form-label" for="userPhone">전화번호</label>
                                        <input type="tel" id="userPhone" name="userPhone" class="form-control" value="<%=session.getAttribute("user_phone")%>" disabled />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="text-right mt-3">
                    <a href="user-info-edit.jsp"><button type="button" class="btn btn-primary">회원정보 수정</button></a>
                </div>
            </div>
        </header>
	</form>
</body>
</html>
