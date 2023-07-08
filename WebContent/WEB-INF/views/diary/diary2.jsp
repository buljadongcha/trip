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
        
        <!-- ���̾ TRIP_DIARY -->
        
        <input type="hidden" id="dia_nick" name="dia_nick" value="${sessionScope.sessionNick}">
        
        <div class="py-5">
          <label for="dia_sub" class="text-sm font-semibold">��������</label>
          <input id="dia_sub" name="dia_sub" type="text" class="w-full mt-2 p-2 border border-gray-300 rounded-lg" placeholder="Enter diary title">
        </div>
        
          <div class="py-5">
          <label for="dia_summ" class="text-sm font-semibold">���ٿ��</label>
          <input id="dia_summ" name="dia_summ" type="text" class="w-full mt-2 p-2 border border-gray-300 rounded-lg" placeholder="Enter diary title">
        </div>
        
          <div class="py-5">
          <label for="dia_thumbnail" class="text-sm font-semibold">�������ε� ����Ͽ�</label>
          <input id="dia_thumbnail" name="dia_thumbnail" type="text" class="w-full mt-2 p-2 border border-gray-300 rounded-lg" placeholder="Enter diary title">
        </div> 
   
        <!----------------------���̾ ��� DIA_RECORD---------------------------------------------->
  
        <div class="py-5">
          <label for="dia_rec_nday" class="text-sm font-semibold">N����</label>
          <input id="dia_rec_nday" name="dia_rec_nday" type="text" class="w-full mt-2 p-2 border border-gray-300 rounded-lg" placeholder="���ڸ� �Է��ϼ���!">
        </div> 
        
        
        
        <!-- --------------------���̾ ��� ������ REC_SCHEDULE------------------------------------- -->
        
           <div class="py-5">
          <label for="rec_sc_loca" class="text-sm font-semibold">���</label>
          <input id="rec_sc_loca" name="rec_sc_loca" type="text" class="w-full mt-2 p-2 border border-gray-300 rounded-lg" placeholder="Enter diary title">
        </div> 
        <div class="py-5">
          <label for="rec_sc_addr" class="text-sm font-semibold">�ּ�</label>
          <input id="rec_sc_addr" name="rec_sc_addr" type="text" class="w-full mt-2 p-2 border border-gray-300 rounded-lg" placeholder="Enter diary title">
        </div>
        <div class="py-5">
          <label for="rec_sc_time" class="text-sm font-semibold">�ð�</label>
          <input id="rec_sc_time" name="rec_sc_time" type="text" class="w-full mt-2 p-2 border border-gray-300 rounded-lg" placeholder="Enter diary title">
        </div>
        <div class="py-5">
          <label for="rec_sc_memo" class="text-sm font-semibold">�޸�</label>
          <input id="rec_sc_memo" name="rec_sc_memo" type="text" class="w-full mt-2 p-2 border border-gray-300 rounded-lg" placeholder="Enter diary title">
        </div>
        
           <!----------------------���̾ ������ ��� REC_PAY ------------------------------------- -->
        <div class="py-5">
          <label for="rec_pay_cost" class="text-sm font-semibold">����� ū ���</label>
          <input id="rec_pay_cost" name="rec_pay_cost" type="number" class="w-full mt-2 p-2 border border-gray-300 rounded-lg" placeholder="�����Է�">
        </div>
           <div class="py-5">
          <label for="rec_pay_type" class="text-sm font-semibold">�ڱ׸��� ��� ����</label>
        	<select id="rec_pay_type" name="rec_pay_type">
        		<option value="">����</option>
        		<option value="�����">�����</option>
        		<option value="���ں�">���ں�</option>
        		<option value="�ĺ�">�ĺ�</option>
        		<option value="������">������</option>
        		<option value="��Ÿ">��Ÿ</option>
        	</select>
        </div>
        
        
        
         <!-- --------------------���̾ ��� �޸� REC_MEMO ------------------------------------- -->
        <div class="py-5">
          <label for="rec_memo_cont" class="text-sm font-semibold">�� �ڱ׸��� �޸� �޸�</label>
          <input id="rec_memo_cont" name="rec_memo_cont" type="text" class="w-full mt-2 p-2 border border-gray-300 rounded-lg" placeholder="Enter diary title">
        </div>
        
        <!-- --------------------���̾ ��� ���� REC_PHOTO ------------------------------------- -->
        <div class="py-5">
          <label for="rec_photo_title" class="text-sm font-semibold">�� �ڱ׸��� ����</label>
          <input id="rec_photo_title" name="rec_photo_title" type="file" class="w-full mt-2 p-2 border border-gray-300 rounded-lg" placeholder="Enter diary title">
        </div>
        
        
        <!-- ����� -->
        <div class="flex justify-end">
          <button type="submit" class="bg-gradient-to-r from-purple-400 via-pink-500 to-red-500 text-white font-semibold px-6 py-2 rounded-lg">�ϱ� ����</button>
        </div>
        </form>
        
        
        <div id="analysisResult" class="mt-8">
          <!-- AI �м� ����� ��õ ����� ���⿡ ǥ�õ˴ϴ�. -->
        </div>
      </div>
  </div>
</div>

</body>
</html>