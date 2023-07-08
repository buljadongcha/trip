<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="rPath" value="${pageContext.request.contextPath }/resources"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css">
    <link rel="stylesheet" href="../resources/rec_write.css">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href=" https://fonts.googleapis.com/icon?family=Material+Icons ">
    <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
    <title>여행기록write</title>
</head>
<body>

<form method="post" action="addDiaryRec" autocomplete="off">
    <div class="recode">
        <div class="section_container">
            <div class="sec1">
                <div class="btn-btn">
                	
                    <input id="dia_sub" type="text" class="inputnoboard diatop1" name="dia_sub" placeholder="여행 제목을 적어주세요"><br>
                    
                    <input id="dia_summ" type="text" class="inputnoboard diatop2" name="dia_summ" placeholder="여행에 대한 한줄평을 적어주세요">
                    
                </div>
            </div>
        </div>
        <!-- 일차 영역 -->
        <div class="section_container">
        
            <div class="sec1" style="text-align: left;">
                <h2>
                <input id="dia_rec_nday" class="inputnoboard" style="width: 20px; font-size: 25px;" name="dia_rec_nday" value="1" >일차</h2>
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
                <h3 class="tit">
                    <span>1</span>
                    <input id="rec_sc_loca" type="text" class="inputnoboard rec_sc_tit" name="rec_sc_loca" placeholder="일정명을 적어주세요">     
                    <input type="time" name="rec_sc_time">
                    <label>주소입력란?</label>
                    <input type="text" name="rec_sc_addr" id="keyword" size="15">            
                </h3>                        
                <textarea id="rec_sc_memo" style="width: 100%; height: 100px;" name="rec_sc_memo" placeholder="해당일정에 대한 메모를 적어주세요"></textarea>
            </div>
            <div class="plan-sec">
                <h3 class="tit">
                    <span>메모</span>           
                </h3>                        
                <textarea id="rec_memo_cont" style="width: 100%; height: 250px;" name="rec_memo_cont" placeholder="메모를 적어주세요"></textarea>
            </div>
            <div class="plan-sec">
                <h3 class="tit">
                    <span>사진</span>
                    <input id="rec_photo_title" type="file" id="rec_photo_title" name="rec_photo_title">
                </h3>                        
            </div>
            <div class="plan-sec">
                <h3 class="tit">
                    <span>2</span>
                    <input id="rec_sc_loca" type="text" class="inputnoboard rec_sc_tit" name="rec_sc_loca" placeholder="일정명을 적어주세요">
                    <input id="rec_sc_time" type="time" name="rec_sc_time">
                    
                    <label>주소입력란?</label>
                    <input id="rec_sc_addr" type="text" name="rec_sc_addr" id="keyword" size="15" placeholder="주소를 적어주세요"> 
                    
                    
                    <br>
                    <input type="button" value="+메모" style="margin-left: 34px; margin-top: 10px;">           
                </h3>                        
            </div>
            <div class="add-btn">
                <input type="button" value="일정" style="margin-right: 20px;">
                <input type="button" value="메모" style="margin-right: 20px;">
                <input type="button" value="사진">
            </div>
            <div class="sumi-btn">
                <button type="submit">등록</button>
                <button type="button">취소</button>
            </div>
        </div>
    </div>
    </form>
   
</body>
</html>