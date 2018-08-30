<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		<div id="content">
			<div class="tab-content">
				<jsp:include page="home.jsp"></jsp:include>
				<jsp:include page="userManager.jsp"></jsp:include>
				<jsp:include page="roleManager.jsp"></jsp:include>
				<jsp:include page="supplierInfo.jsp"></jsp:include>
				<jsp:include page="supplierType.jsp"></jsp:include>
				<jsp:include page="inquiryManager.jsp"></jsp:include>
				<jsp:include page="quote.jsp"></jsp:include>
				<jsp:include page="parity.jsp"></jsp:include>				
			</div>
		</div>
		<jsp:include page="customInfo.jsp"></jsp:include><!-- 通用模态框 -->