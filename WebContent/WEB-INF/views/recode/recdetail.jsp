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
        <!-- �̹��� ���� -->
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
                <h2>�λ� ó������ �Ϻ�(������) 4��5�� ���డ��</h2>
                <div class="plan-btn">
                    <button class="plan-btn-item">Day ����</button>
                    <button class="plan-btn-item">���� �ڽ� ����</button>
                </div>
                <hr style="height: 10px; background-color: #bcbcbc; border: none; max-width: 90%;">
            </div>
        </div>

        <!-- ���� ���� -->
        <div class="section_container">
            <div class="sec1">
                <h2><span>Day 1</span> 2023.06.27</h2>
            </div>
            <div style="display: flex; justify-content: center;">
                <!-- * īī���� - �����۰��� -->
                <!-- 1. ���� ��� -->
                <div id="daumRoughmapContainer1688699935919" class="root_daum_roughmap root_daum_roughmap_landing"></div>

                <!--
                    2. ��ġ ��ũ��Ʈ
                    * ���� �۰��� ���񽺸� 2�� �̻� ���� ���, ��ġ ��ũ��Ʈ�� �ϳ��� �����մϴ�.
                -->
                <script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

                <!-- 3. ���� ��ũ��Ʈ -->
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
                    �Ա��ɻ� ���� ����, �ü��� �����ϰ� �ֽŽ��̿���.<br>
                    �ٸ�, ������ ���׿� �߿ܿ� �־� �ſ�ſ� �����ϴ�. ��������.
                </p>
            </div>
            <div class="plan-sec">
                <h3 class="tit"><span>2</span> [������] JR - WEST �Ϸ�ī HARUKA (������ ���� �� ���� ��)</h3>
                <p>
                    JR Ƽ�� ���ǽ� �Ǵ� ���� �߱Ǳ⿡�� �ǹ� Ƽ������ ��ȯ�ؾ� �ſ�.<br>
                    �߱� �޴°� �� �Ȱɸ��µ�, �ټ��°� 10~30�� ���� �ɸ��� �����ϼ���.<br>
                    2���� Ƽ���� �����µ�, ���� ũ���� Ƽ���� �������� ������ �˴ϴ�.
                </p>
            </div>
            <div class="plan-sec">
                <h3 class="tit"><span>3</span> ���� ��</h3>
                <p>
                    ��û���� �Ŵ��� ���Դϴ�.<br>
                    Ư�� ���Ͽ� �پ��� ������ �� ������ ������, �����ϼ���!
                </p>
            </div>
            <div class="plan-sec">
                <h3 class="tit"><span>4</span> ��ġ��� ȣ�� �����̾� ���� ��Ű����</h3>
                <p>
                    2��3�� �������� �� 165,000���� �����߽��ϴ�.<br>
                    <br>
                    �ֱٿ� ������ �ǹ���� �ü��� ��û �����߰�, �ֽŽ����� �Ǿ� �־����ϴ�.<br>
                    ȭ����� ����� ���� ������ �и��Ǿ� �־���, �پ��� ����� �ִ� �񵥰� ��ġ�Ǿ�����, ������ ��û �о����ϴ�.<br>
                    <br>
                    ��޴�Ƽ�� �� 30�� ������, ��û �پ��ϰ� ǰ���� �ſ� ���ҽ��ϴ�.(1�� �κ񿡼� ���ϴ� ��ŭ ������ �������� �˴ϴ�)<br>
                    <br>
                    û�� ���񽺵� �ſ� �����ֽʴϴ�.<br>
                    ���� �濡 �����⸦ ���� ����µ�, ��� ġ���ֽð� �浵 ó�� ����ó�� �����ϰ� ���ּ̽��ϴ�.<br>
                    <br>
                    ī���� �е鵵 ģ���մϴ�.<br>
                    �ٸ�, �ѱ��� ���� ������ ���� �� �����ϴ�.<br>
                    <br>
                    ��ġ�� ���俪���� ���� 7�� ������ ������ ������, �߰��� ��ȣ���� 3���� �־ ���� �ҿ�ð��� ���� �þ�°� ��¦ �ƽ������ϴ�.<br>
                    �ٸ�, 1�� �Ÿ��� ���� �������� �־ ���䳻 �̵��� �ſ� ���մϴ�.<br>
                    �ֺ��� �μ�(2�� �ҿ�), ������ 4��(10�� �ҿ�) �� ������ �� �־ ���� �ָ� �ȳ����� �ȴٴ� ���� ���� �����ϴ�.<br>
                    <br>
                    ���Ǻ�� ���� ���ƽ��ϴ�.<br>
                    �����ϴٸ� �� �������Ƿ� �����ϼ���!(915�� �� ����)<br>
                    <br>
                    ������ �� �����̸� ���� �����Դϴ�.<br>
                    ���� ������ �� �����ϼ��� 
                </p>
            </div>
        </div>

    </div>
</body>
</html>