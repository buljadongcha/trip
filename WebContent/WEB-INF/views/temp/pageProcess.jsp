<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%-- temp/pageProcess.jsp 
	<tr>
		<th colspan="6" style="text-align: center; ">
			<ul class="pagination" style="margin:0 auto; width: 35%">
				<li class="page-item disabled"><a class="page-link" href="#">Previous</a></li> [disabled : Ŭ���� �ȵǰ��ϴ� �Ӽ�]
				<li class="page-item active" ><a class="page-link" href="#">1</a></li>
				<li class="page-item"><a class="page-link" href="#">2</a></li>
				<li class="page-item"><a class="page-link" href="#">3</a></li>
				<li class="page-item"><a class="page-link" href="#">4</a></li>
				<li class="page-item"><a class="page-link" href="#">5</a></li>
				<li class="page-item"><a class="page-link" href="#">Next</a></li>
			</ul>
	 	</th>
	</tr> --%>	
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<c:set var="pageurl" value="?searchType=${searchType}&searchValue=${searchValue}&cPage"/>
		<tr>
			<th colspan="6" style="text-align: center;">
				<ul class="pagination" style="margin:0 auto; width: 35%">
					<c:choose>
						<%-- ���������� --%>
						<c:when test="${startPage <= page.pagePerBlock}">
							<li class="page-item disabled">
								<a class="page-link" href="#">Previous</a>
							</li>
						</c:when>
						<c:otherwise>
							<li class="page-item active">
								<a class="page-link" href="${pageurl} = ${startPage-1}">Previous</a>
							</li>
						</c:otherwise>
					</c:choose>
				
				<%-- nowPage�� �ش���� ������ ��ũ�� �ɾ ������ �޴� --%>
					<c:forEach varStatus="i" begin="${startPage}" end="${endPage}">
						<c:choose>
							<%-- ���������� --%>
							<c:when test="${i.index == page.nowPage }">
								<li class="page-item active" >
									<a class="page-link" href="#">
										${i.index }
									</a>
								</li>
							</c:when>
							<c:otherwise>
								<li class="page-item">
									<a class="page-link" href="${pageurl}=${i.index}">${i.index }</a>
								</li>
							</c:otherwise>
						</c:choose>
						
					</c:forEach>
										
					<%-- ���������� --%>
					<c:choose>
						<c:when test="${endPage >= page.totalPage}">
							<li class="page-item disabled">
								<a class="page-link" href="#">Next</a>
							</li>
						</c:when>
						<c:otherwise>
							<li class="page-item active">
								<a class="page-link" href="${pageurl}=${endPage+1}">Next</a>
							</li>
						</c:otherwise>
					</c:choose>
				</ul>
			</th>
		</tr>
