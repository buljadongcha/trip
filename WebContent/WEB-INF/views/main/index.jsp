<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="utf-8"%>
<%@include file="../temp/header.jsp"%>
<div class="hero-wrap js-fullheight"
	style="background-image: url('${rPath}/images/bg_6.jpg');">
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text js-fullheight align-items-center justify-content-start"
			data-scrollax-parent="true">
			<div class="col-md-9 ftco-animate"
				data-scrollax=" properties: { translateY: '70%' }">
				<h1 class="mb-4"
					data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">
					<strong>다양한 삶을 경험할 수 있는 <br></strong> 메이트를 만나보세요.
				</h1>
				<p data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">
					국내 여행 저장소 로컬이 추천하는 히든스팟, 로컬맛집!<br> 국내여행에 가이드가 필요하다구요? 메이트가
					알려드립니다.
				</p>
				<div class="block-17 my-4">
					<form action="" method="post" class="d-block d-flex">
						<div class="fields d-block d-flex">
							<div class="textfield-search one-third">
								<input type="text" class="form-control"
									placeholder="Ex: 음식, 서비스, 숙소">
							</div>
							<div class="select-wrap one-third">
								<div class="icon">
									<span class="ion-ios-arrow-down"></span>
								</div>
								<select name="" id="" class="form-control"
									placeholder="Keyword search">
									<option value="">지역</option>
									<option value="">서울</option>
									<option value="">경기도</option>
									<option value="">전라도</option>
									<option value="">강원도</option>
									<option value="">충청도</option>
									<option value="">경상도</option>
									<option value="">제주도</option>
								</select>
							</div>
						</div>
						<input type="submit" class="search-submit btn btn-primary"
							value="Search">
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<section class="ftco-section services-section bg-light">
	<div class="container">
		<div class="row d-flex">
			<div class="col-md-3 d-flex align-self-stretch ftco-animate">
				<div class="media block-6 services d-block text-center">
					<div class="d-flex justify-content-center">
						<div class="icon">
							<span class="flaticon-guarantee"></span>
						</div>
					</div>
					<div class="media-body p-2 mt-2">
						<h3 class="heading mb-3">Best Price Guarantee</h3>
						<p>A small river named Duden flows by their place and
							supplies.</p>
					</div>
				</div>
			</div>
			<div class="col-md-3 d-flex align-self-stretch ftco-animate">
				<div class="media block-6 services d-block text-center">
					<div class="d-flex justify-content-center">
						<div class="icon">
							<span class="flaticon-like"></span>
						</div>
					</div>
					<div class="media-body p-2 mt-2">
						<h3 class="heading mb-3">Travellers Love Us</h3>
						<p>A small river named Duden flows by their place and
							supplies.</p>
					</div>
				</div>
			</div>
			<div class="col-md-3 d-flex align-self-stretch ftco-animate">
				<div class="media block-6 services d-block text-center">
					<div class="d-flex justify-content-center">
						<div class="icon">
							<span class="flaticon-detective"></span>
						</div>
					</div>
					<div class="media-body p-2 mt-2">
						<h3 class="heading mb-3">Best Travel Agent</h3>
						<p>A small river named Duden flows by their place and
							supplies.</p>
					</div>
				</div>
			</div>
			<div class="col-md-3 d-flex align-self-stretch ftco-animate">
				<div class="media block-6 services d-block text-center">
					<div class="d-flex justify-content-center">
						<div class="icon">
							<span class="flaticon-support"></span>
						</div>
					</div>
					<div class="media-body p-2 mt-2">
						<h3 class="heading mb-3">Our Dedicated Support</h3>
						<p>A small river named Duden flows by their place and
							supplies.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="ftco-section ftco-destination">
	<div class="container">
		<div class="row justify-content-start mb-5 pb-3">
			<div class="col-md-7 heading-section ftco-animate">
				<span class="subheading">핫플!</span>
				<h2 class="mb-4">
					<strong>우리지역</strong> 관광명소
				</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="destination-slider owl-carousel ftco-animate">
					<div class="item">
						<div class="destination">
							<a href="#"
								class="img d-flex justify-content-center align-items-center"
								style="background-image: url(${rPath}/images/destination-1.jpg);">
								<div class="icon d-flex justify-content-center align-items-center">
									<span class="icon-search2"></span>
								</div>
							</a>
							<div class="text p-3">
								<h3>
									<a href="#">제주도</a>
								</h3>
								<span class="listing">돌하르방</span>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="destination">
							<a href="#"
								class="img d-flex justify-content-center align-items-center"
								style="background-image: url(${rPath}/images/destination-2.jpg);">
								<div class="icon d-flex justify-content-center align-items-center">
									<span class="icon-search2"></span>
								</div>
							</a>
							<div class="text p-3">
								<h3>
									<a href="#">서울</a>
								</h3>
								<span class="listing">잠실 롯데타워</span>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="destination">
							<a href="#"
								class="img d-flex justify-content-center align-items-center"
								style="background-image: url(${rPath}/images/destination-3.jpg);">
								<div
									class="icon d-flex justify-content-center align-items-center">
									<span class="icon-search2"></span>
								</div>
							</a>
							<div class="text p-3">
								<h3>
									<a href="#">전주</a>
								</h3>
								<span class="listing">덕진공원</span>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="destination">
							<a href="#"
								class="img d-flex justify-content-center align-items-center"
								style="background-image: url(${rPath}/images/destination-4.jpg);">
								<div
									class="icon d-flex justify-content-center align-items-center">
									<span class="icon-search2"></span>
								</div>
							</a>
							<div class="text p-3">
								<h3>
									<a href="#">경주</a>
								</h3>
								<span class="listing">첨성대</span>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="destination">
							<a href="#"
								class="img d-flex justify-content-center align-items-center"
								style="background-image: url(${rPath}/images/destination-5.jpg);">
								<div
									class="icon d-flex justify-content-center align-items-center">
									<span class="icon-search2"></span>
								</div>
							</a>
							<div class="text p-3">
								<h3>
									<a href="#">부산</a>
								</h3>
								<span class="listing">더베이</span>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="destination">
							<a href="#"
								class="img d-flex justify-content-center align-items-center"
								style="background-image: url(${rPath}/images/destination-6.jpg);">
								<div
									class="icon d-flex justify-content-center align-items-center">
									<span class="icon-search2"></span>
								</div>
							</a>
							<div class="text p-3">
								<h3>
									<a href="#">가평</a>
								</h3>
								<span class="listing">남이섬</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="ftco-section bg-light">
	<div class="container">
		<div class="row justify-content-start mb-5 pb-3">
			<div class="col-md-7 heading-section ftco-animate">
				<span class="subheading">인기!</span>
				<h2 class="mb-4">
					<strong>베스트 테마</strong> 여행 후기
				</h2>
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm col-md-6 col-lg ftco-animate">
				<div class="destination">
					<a href="#"
						class="img img-2 d-flex justify-content-center align-items-center"
						style="background-image: url(${rPath}/images/destination-7.jpg);">
						<div class="icon d-flex justify-content-center align-items-center">
							<span class="icon-search2"></span>
						</div>
					</a>
					<div class="text p-3">
						<div class="d-flex">
							<div class="one">
								<h3>
									<a href="#">반려동물과 함께</a>
								</h3>
								<p class="rate">
									<i class="icon-star"></i> <i class="icon-star"></i> <i
										class="icon-star"></i> <i class="icon-star"></i> <i
										class="icon-star-o"></i> <span>8</span>
								</p>
							</div>
							<!--
	    						<div class="two">
	    							<span class="price">$200~</span>
    							</div>
    							 -->
						</div>
						<p>오늘은 우리 복실이랑 캠핑에 다녀왔어요 코로나도 풀리고 날씨도 점점 좋아지는데 하필이면...</p>
						<p class="days">
							<span style="color: #bbbbbb">차은우</span>
						</p>
						<hr>
						<p class="bottom-area d-flex">
							<span><i class="bi bi-emoji-heart-eyes"></i> 178</span> <span
								class="ml-auto"><a href="#">+ 자세히</a></span>
						</p>
					</div>
				</div>
			</div>
			<div class="col-sm col-md-6 col-lg ftco-animate">
				<div class="destination">
					<a href="#"
						class="img img-2 d-flex justify-content-center align-items-center"
						style="background-image: url(${rPath}/images/destination-8.jpg);">
						<div class="icon d-flex justify-content-center align-items-center">
							<span class="icon-search2"></span>
						</div>
					</a>
					<div class="text p-3">
						<div class="d-flex">
							<div class="one">
								<h3>
									<a href="#">제주 정원카페</a>
								</h3>
								<p class="rate">
									<i class="icon-star"></i> <i class="icon-star"></i> <i
										class="icon-star"></i> <i class="icon-star"></i> <i
										class="icon-star"></i> <span>10</span>
								</p>
							</div>
						</div>
						<p>여자친구와 제주도를 계획하다가 우연히 여기를 알게되어 테마 여행을 신청해 보았...</p>
						<p class="days">
							<span style="color: #bbbbbb">조규성</span>
						</p>
						<hr>
						<p class="bottom-area d-flex">
							<span><i class="bi bi-emoji-heart-eyes"></i> 178</span> <span
								class="ml-auto"><a href="#">+ 자세히</a></span>
						</p>
					</div>
				</div>
			</div>
			<div class="col-sm col-md-6 col-lg ftco-animate">
				<div class="destination">
					<a href="#"
						class="img img-2 d-flex justify-content-center align-items-center"
						style="background-image: url(${rPath}/images/destination-9.jpg);">
						<div class="icon d-flex justify-content-center align-items-center">
							<span class="icon-search2"></span>
						</div>
					</a>
					<div class="text p-3">
						<div class="d-flex">
							<div class="one">
								<h3>
									<a href="#">초원사진관</a>
								</h3>
								<p class="rate">
									<i class="icon-star"></i> <i class="icon-star"></i> <i
										class="icon-star"></i> <i class="icon-star"></i> <i
										class="icon-star-o"></i> <span>8</span>
								</p>
							</div>
						</div>
						<p>Far far away, behind the word mountains, far from the
							countries</p>
						<p class="days">
							<span style="color: #bbbbbb">제니</span>
						</p>
						<hr>
						<p class="bottom-area d-flex">
							<span><i class="bi bi-emoji-heart-eyes"></i> 178</span> <span
								class="ml-auto"><a href="#">+ 자세히</a></span>
						</p>
					</div>
				</div>
			</div>
			<div class="col-sm col-md-6 col-lg ftco-animate">
				<div class="destination">
					<a href="#"
						class="img img-2 d-flex justify-content-center align-items-center"
						style="background-image: url(${rPath}/images/destination-10.jpg);">
						<div class="icon d-flex justify-content-center align-items-center">
							<span class="icon-search2"></span>
						</div>
					</a>
					<div class="text p-3">
						<div class="d-flex">
							<div class="one">
								<h3>
									<a href="#">군산 오빠달려</a>
								</h3>
								<p class="rate">
									<i class="icon-star"></i> <i class="icon-star"></i> <i
										class="icon-star"></i> <i class="icon-star"></i> <i
										class="icon-star-o"></i> <span>8</span>
								</p>
							</div>
						</div>
						<p>Far far away, behind the word mountains, far from the
							countries</p>
						<p class="days">
							<span style="color: #bbbbbb">한소희</span>
						</p>
						<hr>
						<p class="bottom-area d-flex">
							<span><i class="bi bi-emoji-heart-eyes"></i> 178</span> <span
								class="ml-auto"><a href="#">+ 자세히</a></span>
						</p>
					</div>
				</div>
			</div>
			<div class="col-sm col-md-6 col-lg ftco-animate">
				<div class="destination">
					<a href="#"
						class="img img-2 d-flex justify-content-center align-items-center"
						style="background-image: url(${rPath}/images/destination-11.jpg);">
						<div class="icon d-flex justify-content-center align-items-center">
							<span class="icon-search2"></span>
						</div>
					</a>
					<div class="text p-3">
						<div class="d-flex">
							<div class="one">
								<h3>
									<a href="#">미로공원</a>
								</h3>
								<p class="rate">
									<i class="icon-star"></i> <i class="icon-star"></i> <i
										class="icon-star"></i> <i class="icon-star"></i> <i
										class="icon-star-o"></i> <span>8</span>
								</p>
							</div>
						</div>
						<p>Far far away, behind the word mountains, far from the
							countries</p>
						<p class="days">
							<span style="color: #bbbbbb">조유리</span>
						</p>
						<hr>
						<p class="bottom-area d-flex">
							<span><i class="bi bi-emoji-heart-eyes"></i> 178</span> <span
								class="ml-auto"><a href="#">+ 자세히</a></span>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="ftco-section ftco-counter img" id="section-counter"
	style="background-image: url(${rPath}/images/bg_1.jpg);">
	<div class="container">
		<div class="row justify-content-center mb-5 pb-3">
			<div
				class="col-md-7 text-center heading-section heading-section-white ftco-animate">
				<h2 class="mb-4">지금 우리 메이트는</h2>
				<!-- <span class="subheading"></span> -->
			</div>
		</div>
		<div class="row justify-content-center">
			<div class="col-md-10">
				<div class="row">
					<div
						class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
						<div class="block-18 text-center">
							<div class="text">
								<strong class="number" data-number="100000">0</strong> <span>가입자
									수</span>
							</div>
						</div>
					</div>
					<div
						class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
						<div class="block-18 text-center">
							<div class="text">
								<strong class="number" data-number="40000">0</strong> <span>생생한
									후기</span>
							</div>
						</div>
					</div>
					<div
						class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
						<div class="block-18 text-center">
							<div class="text">
								<strong class="number" data-number="87000">0</strong> <span>메이트
									매칭</span>
							</div>
						</div>
					</div>
					<div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
						<div class="block-18 text-center">
							<div class="text">
								<strong class="number" data-number="121">0</strong> <span>협력업체</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="ftco-section testimony-section bg-light">
	<div class="container">
		<div class="row justify-content-start">
			<div class="col-md-5 heading-section ftco-animate" style="text-align: center; background-image: url(${rPath}/images/bg_7.png); background-size: 100%; padding: 10px 10px; opacity: 30%; border-radius: 14px">
				<h2 class="mb-4 pb-3">
					<strong>문득</strong> 떠나고 싶을 때가 있죠?
				</h2>
				<div
					style="font-family: 'Nanum Pen Script', cursive; font-size: 26px; line-height: 30px;">
					<p>
						내가 살고 있는 삶이 진정 내가 원하는 삶인지<br>나 다운 삶을 살고 있는지 고민이 될 때
					</p>
					<p>
						내가 살고 있는 이 공간에서 벗어나<br>이름 모를 누군가의 삶에 발을 들여놓고 싶을 때
					</p>
					<p>
						그냥 무턱대고 짐을 싸서<br>나와 다른 삶을 사는 사람들에게<br>훌쩍 떠나도 괜찮을 것 같다면,
					</p>
				</div>
				<p>
					<a href="#" class="btn btn-primary btn-outline-primary mt-4 px-4 py-3">Read more</a>
				</p>
			</div>
			<div class="col-md-1"></div>
			<div class="col-md-6 heading-section ftco-animate">
				<span class="subheading">날씨!</span>
				<h2 class="mb-4 pb-3">
					<strong>우리지역</strong> 여행날씨
				</h2>
				<div class="row ftco-animate">
					<div class="col-md-12">
						<div class="carousel-testimony owl-carousel">
							<div class="item">
								<div class="testimony-wrap d-flex">
									<div class="user-img mb-5"
										style="background-image: url(${rPath}/images/person_1.jpg)">
									</div>
									<div class="text ml-md-4">
										<p class="mb-5">오늘의 서울지역 날씨는 구름이 살짝 껴있고 어제보다 서늘한 날씨로 겉옷 지참
											권장합니다.</p>
										<p class="name">서울지역 날씨</p>
										<span class="position"> <span style="color: #bcbcbc">온도
												:</span> <span style="color:">28.8°C</span> <span
											style="color: #bcbcbc">습도 :</span> <span style="color:">55%</span><br>
											<span style="color: #bcbcbc">미세먼지 :</span> <span
											style="color: orange">나쁨</span> <span style="color: #bcbcbc">초미세먼지
												:</span> <span style="color: red">매우나쁨</span>
										</span>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="testimony-wrap d-flex">
									<div class="user-img mb-5"
										style="background-image: url(${rPath}/images/person_2.jpg)">
									</div>
									<div class="text ml-md-4">
										<p class="mb-5">오늘의 제주지역 날씨는 구름이 살짝 껴있고 어제보다 서늘한 날씨로 겉옷 지참
											권장합니다.</p>
										<p class="name">제주지역 날씨</p>
										<span class="position"> <span style="color: #bcbcbc">온도
												:</span> <span style="color:">28.8°C</span> <span
											style="color: #bcbcbc">습도 :</span> <span style="color:">55%</span><br>
											<span style="color: #bcbcbc">미세먼지 :</span> <span
											style="color: orange">나쁨</span> <span style="color: #bcbcbc">초미세먼지
												:</span> <span style="color: red">매우나쁨</span>
										</span>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="testimony-wrap d-flex">
									<div class="user-img mb-5" style="background-image: url(${rPath}/images/person_3.jpg)">
									</div>
									<div class="text ml-md-4">
										<p class="mb-5">오늘의 경기지역 날씨는 구름이 살짝 껴있고 어제보다 서늘한 날씨로 겉옷 지참 권장합니다.</p>
										<p class="name">경기지역 날씨</p>
										<span class="position">
											<span style="color: #bcbcbc">온도 :</span>
											<span style="color:">28.8°C</span>
											<span style="color: #bcbcbc">습도 :</span>
											<span style="color:">55%</span><br>
											<span style="color: #bcbcbc">미세먼지 :</span>
											<span style="color: orange">나쁨</span>
											<span style="color: #bcbcbc">초미세먼지 :</span>
											<span style="color: red">매우나쁨</span>
										</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<%@include file="../temp/footer.jsp"%>