<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="rPath" value="${pageContext.request.contextPath }/resources"/>
    <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
        <div class="row">
          <div class="col-md-12 text-center">
            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  				Copyright &copy;
  				<script>document.write(new Date().getFullYear());</script>
  				All rights reserved | This template is made with
  				<i class="icon-heart" aria-hidden="true"></i> by
  				<a href="#" target="_blank">B Team</a>
  				<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  			</p>
          </div>
        </div>
      </div>
    </footer>
  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen">
  	<svg class="circular" width="48px" height="48px">
  		<circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#EEEEEE"/>
  		<circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/>
  	</svg>
  </div>
  <script src="<%=application.getContextPath()%>/resources/js/jquery.min.js"></script>
  <script src="<%=application.getContextPath()%>/resources/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="<%=application.getContextPath()%>/resources/js/popper.min.js"></script>
  <script src="<%=application.getContextPath()%>/resources/js/bootstrap.min.js"></script>
  <script src="<%=application.getContextPath()%>/resources/js/jquery.easing.1.3.js"></script>
  <script src="<%=application.getContextPath()%>/resources/js/jquery.waypoints.min.js"></script>
  <script src="<%=application.getContextPath()%>/resources/js/jquery.stellar.min.js"></script>
  <script src="<%=application.getContextPath()%>/resources/js/owl.carousel.min.js"></script>
  <script src="<%=application.getContextPath()%>/resources/js/jquery.magnific-popup.min.js"></script>
  <script src="<%=application.getContextPath()%>/resources/js/aos.js"></script>
  <script src="<%=application.getContextPath()%>/resources/js/jquery.animateNumber.min.js"></script>
  <script src="<%=application.getContextPath()%>/resources/js/bootstrap-datepicker.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
  <script src="<%=application.getContextPath()%>/resources/js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="<%=application.getContextPath()%>/resources/js/google-map.js"></script>
  <script src="<%=application.getContextPath()%>/resources/js/main.js"></script>
  </body>
</html>