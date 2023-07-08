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
    <title>������write</title>
</head>
<body>

<form method="post" action="addDiaryRec" autocomplete="off">
    <div class="recode">
        <div class="section_container">
            <div class="sec1">
                <div class="btn-btn">
                	
                    <input id="dia_sub" type="text" class="inputnoboard diatop1" name="dia_sub" placeholder="���� ������ �����ּ���"><br>
                    
                    <input id="dia_summ" type="text" class="inputnoboard diatop2" name="dia_summ" placeholder="���࿡ ���� �������� �����ּ���">
                    
                </div>
            </div>
        </div>
        <!-- ���� ���� -->
        <div class="section_container">
        
            <div class="sec1" style="text-align: left;">
                <h2>
                <input id="dia_rec_nday" class="inputnoboard" style="width: 20px; font-size: 25px;" name="dia_rec_nday" value="1" >����</h2>
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
                <h3 class="tit">
                    <span>1</span>
                    <input id="rec_sc_loca" type="text" class="inputnoboard rec_sc_tit" name="rec_sc_loca" placeholder="�������� �����ּ���">     
                    <input type="time" name="rec_sc_time">
                    <label>�ּ��Է¶�?</label>
                    <input type="text" name="rec_sc_addr" id="keyword" size="15">            
                </h3>                        
                <textarea id="rec_sc_memo" style="width: 100%; height: 100px;" name="rec_sc_memo" placeholder="�ش������� ���� �޸� �����ּ���"></textarea>
            </div>
            <div class="plan-sec">
                <h3 class="tit">
                    <span>�޸�</span>           
                </h3>                        
                <textarea id="rec_memo_cont" style="width: 100%; height: 250px;" name="rec_memo_cont" placeholder="�޸� �����ּ���"></textarea>
            </div>
            <div class="plan-sec">
                <h3 class="tit">
                    <span>����</span>
                    <input id="rec_photo_title" type="file" id="rec_photo_title" name="rec_photo_title">
                </h3>                        
            </div>
            <div class="plan-sec">
                <h3 class="tit">
                    <span>2</span>
                    <input id="rec_sc_loca" type="text" class="inputnoboard rec_sc_tit" name="rec_sc_loca" placeholder="�������� �����ּ���">
                    <input id="rec_sc_time" type="time" name="rec_sc_time">
                    
                    <label>�ּ��Է¶�?</label>
                    <input id="rec_sc_addr" type="text" name="rec_sc_addr" id="keyword" size="15" placeholder="�ּҸ� �����ּ���"> 
                    
                    
                    <br>
                    <input type="button" value="+�޸�" style="margin-left: 34px; margin-top: 10px;">           
                </h3>                        
            </div>
            <div class="add-btn">
                <input type="button" value="����" style="margin-right: 20px;">
                <input type="button" value="�޸�" style="margin-right: 20px;">
                <input type="button" value="����">
            </div>
            <div class="sumi-btn">
                <button type="submit">���</button>
                <button type="button">���</button>
            </div>
        </div>
    </div>
    </form>
   
</body>
</html>