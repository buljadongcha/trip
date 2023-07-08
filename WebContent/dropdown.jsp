<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
body, div {
	margin: 0;
}
.container {
	background-color: #F3F5F7;
	padding: 2rem;
	border-collapse: collapse;
}
.container:nth-child(n+2) {
	margin-top: 1rem;
}
.draggable {
	height: 82px;
	line-height: 82px;
	padding: 0 20px;
	background-color: white;
	border: 1px solid #C5CDD7;
	border-bottom: none;
	box-sizing: border-box;
	cursor: move;
}
.draggable:last-child {
	border-bottom: 1px solid #C5CDD7;
}
.draggable.dragging {
	opacity: .5;
	border: 2px dashed red;
}
.el {
	display: inline-block;
	vertical-align: middle;
}
.ico-drag {
	display: inline-block;
	vertical-align: inherit;
	width: 15px;
	height: 15px;
	background: url(./menu.png) no-repeat center top;
	background-size: cover;
}
</style>
</head>
<body>
	<input type="number" name="code" id="code" max="5" min="2" value="2"
		onchange="increTitle()">
	<div class="container">
		<div class="draggable" draggable="true">
			<span class="ico-drag"></span>
			<div class="el">
				<label>��1</label> <input type="text">
			</div>
		</div>
		<div class="draggable" draggable="true">
			<span class="ico-drag"></span>
			<div class="el">
				<label>��2</label> <input type="text">
			</div>
		</div>
		<div id="target"></div>
	</div>
	<div class="container">
		<div class="draggable" draggable="true">
			<span class="ico-drag"></span>
			<div class="el">HTML</div>
		</div>
		<div class="draggable" draggable="true">
			<span class="ico-drag"></span>
			<div class="el">CSS</div>
		</div>
		<div class="draggable" draggable="true">
			<span class="ico-drag"></span>
			<div class="el">JavaScript</div>
		</div>
	</div>
	<div class="container">
		<div class="draggable" draggable="true">
			<span class="ico-drag"></span>
			<div class="el">React</div>
		</div>
		<div class="draggable" draggable="true">
			<span class="ico-drag"></span>
			<div class="el">Vue</div>
		</div>
		<div class="draggable" draggable="true">
			<span class="ico-drag"></span>
			<div class="el">Next JS</div>
		</div>
	</div>
	<script>
	function increTitle() {
		var code = document.getElementById("code").value;
		//var html = "<div class=\"draggable\" draggable=\"true\"><span class=\"ico-drag\"></span><div class=\"el\">";
		var html = "";
		for (var i = 1; i < code - 1; i++) {
			html += "<div class=\"draggable\" draggable=\"true\"><span class=\"ico-drag\"></span><div class=\"el\">";
			html += "<label>��" + (i + 2) + "</label>";
			html += "<input type=\"text\" name=\"surveytitle\">";
			html += "</div></div>";
		}
		//html += "</div></div>";
		document.getElementById("target").innerHTML = html;
		
		/**
		 * [x] ������Ʈ�� .draggable, .container�� �迭�� �����ڸ� �����մϴ�.
		 * [x] draggables�� ��ü�� �����ϸ鼭 dragstart, dragend�� �̺�Ʈ�� �߻���ŵ�ϴ�.
		 * [x] dragstart, dragend �̺�Ʈ�� �߻��Ҷ� .dragging��� Ŭ������ ��۽�Ų��.
		 * [x] dragover �̺�Ʈ�� �߻��ϴ� ���� ���콺 �巡���ϰ� ������ ��ġ�س��� Element�� �����ϴ� �Լ��� ����ϴ�.
		 */
		(() => {
		      const $ = (select) => document.querySelectorAll(select);
		      const draggables = $('.draggable');
		      const containers = $('.container');
		      draggables.forEach(el => {
		         el.addEventListener('dragstart', () => {
		            el.classList.add('dragging');
		         });
		         el.addEventListener('dragend', () => {
		            el.classList.remove('dragging')
		         });
		      });
		      function getDragAfterElement(container, y) {
		         const draggableElements = [...container.querySelectorAll('.draggable:not(.dragging)')]
		         return draggableElements.reduce((closest, child) => {
		            const box = child.getBoundingClientRect() //�ش� ������Ʈ�� top��, height�� ����� �ִ� �޼ҵ带 ȣ���� box������ �Ҵ�
		            const offset = y - box.top - box.height / 2 //���� ��ǥ - top�� - height�� / 2�� ������ ���ؼ� offset������ �Ҵ�
		            if (offset < 0 && offset > closest.offset) { // (���� ó��) 0 ���� ��, ���� ���Ѵ� ���̿� ����
		               return { offset: offset, element: child } // Element�� ����
		            } else {
		               return closest
		            }
		         }, { offset: Number.NEGATIVE_INFINITY }).element
		      };
		      containers.forEach(container => {
		         container.addEventListener('dragover', e => {
		            e.preventDefault()
		            const afterElement = getDragAfterElement(container, e.clientY);
		            const draggable = document.querySelector('.dragging')
		            // container.appendChild(draggable)
		            container.insertBefore(draggable, afterElement)
		         })
		      });
		   })();
		
	}
</script>
</body>
</html>