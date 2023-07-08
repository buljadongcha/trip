<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="rPath" value="${pageContext.request.contextPath }/resources"/>
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../resources/rec_detail.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href=" https://fonts.googleapis.com/icon?family=Material+Icons ">
    <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
    <script defer src="../resources/rec_detail.js"></script>
    <title>Document</title>
</head>
<body>
    <div class="plan-wrap">
        <!-- 이미지 영역 -->
        <div class="section_container">
            <div class="swiper sample-slider mb30">
                <div class="swiper-wrapper">
                    <div class="swiper-slide"><img src="${rPath}/images/smaple_img1.jpg"></div>
                    <div class="swiper-slide"><img src="${rPath}/images/smaple_img2.jpg"></div>
                    <div class="swiper-slide"><img src="${rPath}/images/smaple_img3.jpg"></div>
                    <div class="swiper-slide"><img src="${rPath}/images/smaple_img4.jpg"></div>
                </div>
                <div class="swiper-pagination"></div>
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>
            </div>

            <div class="sec1">
                <h2>인생 처음으로 일본(간사이) 4박5일 여행가기</h2>
                <div class="plan-btn">
                    <button class="plan-btn-item">Day 보기</button>
                    <button class="plan-btn-item">여행 코스 보기</button>
                </div>
                <hr style="height: 10px; background-color: #bcbcbc; border: none; max-width: 90%;">
            </div>
        </div>

        <!-- 일차 영역 -->
        <div class="section_container">
            <div class="sec1">
                <h2><span>Day 1</span> 2023.06.27</h2>
            </div>
            <div style="display: flex; justify-content: center;">
                <!-- * 카카오맵 - 지도퍼가기 -->
                <!-- 1. 지도 노드 -->
                <div id="daumRoughmapContainer1688699935919" class="root_daum_roughmap root_daum_roughmap_landing"></div>

                <!--
                    2. 설치 스크립트
                    * 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
                -->
                <script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

                <!-- 3. 실행 스크립트 -->
                <script charset="UTF-8">
                    new daum.roughmap.Lander({
                        "timestamp" : "1688699935919",
                        "key" : "2ffpf",
                        "mapWidth" : "1000",
                        "mapHeight" : "360"
                    }).render();
                </script>
            </div>
            <div class="plan-sec">
                <h3 class="tit"><span>1</span> 15:20 - KIX 17:10</h3>
                <p>
                    입국심사 빨라서 좋고, 시설도 깨끗하고 최신식이에요.<br>
                    다만, 간사이 공항역 야외에 있어 매우매우 덥습니다. 힘들었어요.
                </p>
            </div>
            <div class="plan-sec">
                <h3 class="tit"><span>2</span> [간사이] JR - WEST 하루카 HARUKA (간사이 공항 ↔ 교토 편도)</h3>
                <p>
                    JR 티켓 오피스 또는 셀프 발권기에서 실물 티켓으로 교환해야 돼요.<br>
                    발급 받는건 얼마 안걸리는데, 줄서는게 10~30분 정도 걸리니 참고하세요.<br>
                    2개의 티켓이 나오는데, 작은 크기의 티켓을 개찰구로 넣으면 됩니다.
                </p>
            </div>
            <div class="plan-sec">
                <h3 class="tit"><span>3</span> 교토 역</h3>
                <p>
                    엄청나게 거대한 역입니다.<br>
                    특히 지하에 다양한 음식점 및 상점이 있으니, 참고하세요!
                </p>
            </div>
            <div class="plan-sec">
                <h3 class="tit"><span>4</span> 리치몬드 호텔 프리미어 교토 에키마에</h3>
                <p>
                    2박3일 기준으로 총 165,000원에 예약했습니다.<br>
                    <br>
                    최근에 지어진 건물답게 시설이 엄청 깨끗했고, 최신식으로 되어 있었습니다.<br>
                    화장실은 변기와 샤워 공간이 분리되어 있었고, 다양한 기능이 있는 비데가 설치되었으며, 욕조는 엄청 넓었습니다.<br>
                    <br>
                    어메니티는 약 30종 정도로, 엄청 다양하고 품질도 매우 높았습니다.(1층 로비에서 원하는 만큼 셀프로 가져가면 됩니다)<br>
                    <br>
                    청소 서비스도 매우 잘해주십니다.<br>
                    전날 방에 쓰레기를 많이 남겼는데, 모두 치워주시고 방도 처음 상태처럼 깨끗하게 해주셨습니다.<br>
                    <br>
                    카운터 분들도 친절합니다.<br>
                    다만, 한국어 가능 직원은 없는 것 같습니다.<br>
                    <br>
                    위치는 교토역에서 도보 7분 정도로 나쁘지 않지만, 중간에 신호등이 3개나 있어서 실제 소요시간은 조금 늘어나는게 살짝 아쉬웠습니다.<br>
                    다만, 1분 거리에 버스 정류장이 있어서 교토내 이동은 매우 편리합니다.<br>
                    주변에 로손(2분 소요), 음식점 4개(10초 소요) 등 있을건 다 있어서 굳이 멀리 안나가도 된다는 점은 아주 좋습니다.<br>
                    <br>
                    객실뷰는 정말 미쳤습니다.<br>
                    가능하다면 꼭 고층객실로 예약하세요!(915번 룸 기준)<br>
                    <br>
                    총평은 이 가격이면 완전 강추입니다.<br>
                    교토 여행할 때 참고하세요 
                </p>
            </div>
        </div>

    </div>
</body>
</html>