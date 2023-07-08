<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
<title>AI Diary</title>

</head>

<body>
<div class="min-h-screen bg-gray-100 py-6 flex flex-col justify-center sm:py-12">
  <div class="relative py-3 sm:max-w-xl sm:mx-auto">
    <div class="absolute inset-0 bg-gradient-to-r from-purple-400 via-pink-500 to-red-500 shadow-lg transform -skew-y-6 sm:skew-y-0 sm:-rotate-6 sm:rounded-3xl"></div>
      <div class="relative px-4 py-10 bg-white shadow-lg sm:rounded-3xl sm:p-20">
        <h1 class="text-center text-2xl font-bold">Trip Diary</h1>
        
        <form method="post" action="addDiaryRec" autocomplete="off">
        
        <!-- 다이어리 TRIP_DIARY -->
        
        <input type="hidden" id="dia_nick" name="dia_nick" value="${sessionScope.sessionNick}">
        
        <div class="py-5">
          <label for="dia_sub" class="text-sm font-semibold">여행제목</label>
          <input id="dia_sub" name="dia_sub" type="text" class="w-full mt-2 p-2 border border-gray-300 rounded-lg" placeholder="Enter diary title">
        </div>
        
          <div class="py-5">
          <label for="dia_summ" class="text-sm font-semibold">한줄요약</label>
          <input id="dia_summ" name="dia_summ" type="text" class="w-full mt-2 p-2 border border-gray-300 rounded-lg" placeholder="Enter diary title">
        </div>
        
          <div class="py-5">
          <label for="dia_thumbnail" class="text-sm font-semibold">사진업로드 썸네일용</label>
          <input id="dia_thumbnail" name="dia_thumbnail" type="text" class="w-full mt-2 p-2 border border-gray-300 rounded-lg" placeholder="Enter diary title">
        </div> 
   
        <!----------------------다이어리 기록 DIA_RECORD---------------------------------------------->
  
        <div class="py-5">
          <label for="dia_rec_nday" class="text-sm font-semibold">N일차</label>
          <input id="dia_rec_nday" name="dia_rec_nday" type="text" class="w-full mt-2 p-2 border border-gray-300 rounded-lg" placeholder="숫자만 입력하세요!">
        </div> 
        
        
        
        <!-- --------------------다이어리 기록 스케줄 REC_SCHEDULE------------------------------------- -->
        
           <div class="py-5">
          <label for="rec_sc_loca" class="text-sm font-semibold">장소</label>
          <input id="rec_sc_loca" name="rec_sc_loca" type="text" class="w-full mt-2 p-2 border border-gray-300 rounded-lg" placeholder="Enter diary title">
        </div> 
        <div class="py-5">
          <label for="rec_sc_addr" class="text-sm font-semibold">주소</label>
          <input id="rec_sc_addr" name="rec_sc_addr" type="text" class="w-full mt-2 p-2 border border-gray-300 rounded-lg" placeholder="Enter diary title">
        </div>
        <div class="py-5">
          <label for="rec_sc_time" class="text-sm font-semibold">시간</label>
          <input id="rec_sc_time" name="rec_sc_time" type="text" class="w-full mt-2 p-2 border border-gray-300 rounded-lg" placeholder="Enter diary title">
        </div>
        <div class="py-5">
          <label for="rec_sc_memo" class="text-sm font-semibold">메모</label>
          <input id="rec_sc_memo" name="rec_sc_memo" type="text" class="w-full mt-2 p-2 border border-gray-300 rounded-lg" placeholder="Enter diary title">
        </div>
        
           <!----------------------다이어리 스케쥴 경비 REC_PAY ------------------------------------- -->
        <div class="py-5">
          <label for="rec_pay_cost" class="text-sm font-semibold">대따시 큰 경비</label>
          <input id="rec_pay_cost" name="rec_pay_cost" type="number" class="w-full mt-2 p-2 border border-gray-300 rounded-lg" placeholder="숫자입력">
        </div>
           <div class="py-5">
          <label for="rec_pay_type" class="text-sm font-semibold">자그마한 경비 종류</label>
        	<select id="rec_pay_type" name="rec_pay_type">
        		<option value="">선택</option>
        		<option value="교통비">교통비</option>
        		<option value="숙박비">숙박비</option>
        		<option value="식비">식비</option>
        		<option value="관광비">관광비</option>
        		<option value="기타">기타</option>
        	</select>
        </div>
        
        
        
         <!-- --------------------다이어리 기록 메모 REC_MEMO ------------------------------------- -->
        <div class="py-5">
          <label for="rec_memo_cont" class="text-sm font-semibold">내 자그마한 메모 메모</label>
          <input id="rec_memo_cont" name="rec_memo_cont" type="text" class="w-full mt-2 p-2 border border-gray-300 rounded-lg" placeholder="Enter diary title">
        </div>
        
        <!-- --------------------다이어리 기록 사진 REC_PHOTO ------------------------------------- -->
        <div class="py-5">
          <label for="rec_photo_title" class="text-sm font-semibold">내 자그마한 사진</label>
          <input id="rec_photo_title" name="rec_photo_title" type="file" class="w-full mt-2 p-2 border border-gray-300 rounded-lg" placeholder="Enter diary title">
        </div>
        
        
        <!-- 서브밋 -->
        <div class="flex justify-end">
          <button type="submit" class="bg-gradient-to-r from-purple-400 via-pink-500 to-red-500 text-white font-semibold px-6 py-2 rounded-lg">일기 저장</button>
        </div>
        </form>
        
        
        <div id="analysisResult" class="mt-8">
          <!-- AI 분석 결과와 추천 결과가 여기에 표시됩니다. -->
        </div>
      </div>
  </div>
</div>

</body>
</html>