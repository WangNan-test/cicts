function validateRegex(eleId,regex) {	// 进行数据是否为null的验证
	eleObject = document.getElementById(eleId) ; // 根据传入的id获取对象
	eleDivObject = document.getElementById(eleId + "Div") ; // 获取表单的div元素
	if (eleObject != null) {	// 该对象存在
		if (regex.test(eleObject.value)) {
			eleDivObject.className = "form-group has-success" ;
			return true ;
		} else {
			eleDivObject.className = "form-group has-error" ;
			return false ;
		}
	}
}

function validateEmpty(eleId) {	// 进行数据是否为null的验证
	eleObject = document.getElementById(eleId) ; // 根据传入的id获取对象
	eleDivObject = document.getElementById(eleId + "Div") ; // 获取表单的div元素
	if (eleObject != null) {	// 该对象存在
		if (eleObject.value == "") {	// 验证失败
			if (eleDivObject != null) {
				eleDivObject.className = "form-group has-error" ;
			}
			return false ;
		} else {
			if (eleDivObject != null) {
				eleDivObject.className = "form-group has-success" ;
			}
			return true ;
		}
	}
}
/**
 * 警告框操作信息，ID必须为“alertDiv”
 * @param flag 操作成功或失败的标记
 * @param suctext 操作成功时的显示文本内容
 * @param faltext 操作失败时的显示文本内容
 */
function operateAlert(faltext) {
	$("#alertDiv").attr("class","alert alert-danger") ;
	$("#alertText").text(faltext) ;
	$("#alertDiv").fadeIn(1000,function(){
		$("#alertDiv").fadeOut(3000) ;
	}) ;
}

function jumpTime(url) {	// 设置一个倒计时的处理函数
	timeSpanObject = document.getElementById("time") ; // 获得倒计时的时间对象
	if (timeSpanObject != undefined) {
		timeValue = parseInt(timeSpanObject.innerHTML); // 获取里面保存的时间数据
		if (timeValue == 0) {	// 时间到达，应该进行跳转处理
			window.location = url; // 执行跳转处理
		} else {
			timeSpanObject.innerHTML = timeValue - 1; // 减少当前的时间
			setTimeout(function () {
				jumpTime(url); // 重复调用此操作
			}, 1000); // 每秒执行一次
		}
	}
}
// 在进行批量删除的时候参数的名称为“ids”
function deleteForward(checkboxElementName, url) {	// 删除跳转
	idValue = "" ;
	array = document.all(checkboxElementName) ;	// 要删除的复选框的数组
	if (array == undefined) {
		operateAlert("当前还没有任何数据存在，无法执行删除处理！") ;
	}
	if (array.length == undefined) {	// 是一个单独的元素
		if (array.checked) {
			idValue = array.value + ";" ;
		}
	} else {
		for (x = 0 ; x < array.length ; x ++) {
			if (array[x].checked) {
				idValue += array[x].value + ";" ;
			}
		}
	}
	if (idValue == "") {	// 当前没有选中任何一个数据
		operateAlert("您还未选择要删除的数据信息！") ;
	} else {
		if (window.confirm("确定要删除这些数据吗？")) {
			window.location = url + "?ids=" + idValue ;
		}
	}
}
function selectAll(controlCB, cbname) {
	controlObject = document.getElementById(controlCB) ;
	array = document.all(cbname) ;
	if (array.length == undefined) {	// 是一个单独的元素
		array.checked = controlObject.checked ;
	} else {
		for (x = 0 ; x < array.length ; x ++) {
			array[x].checked = controlObject.checked ;
		}
	}
}

function validateLessOne(elementName) {	// 至少选中一个
	elementObject = document.all(elementName) ;
	eleDivObject = document.getElementById(elementName + "Div") ; // 获取表单的div元素
	if (elementObject == undefined) {
		return false ;
	}
	if (elementObject.length == undefined) {	// 一个选项
		if (elementObject.checked) {	// 选中了
			eleDivObject.className = "form-group has-success" ;
			return true ;
		} else {
			eleDivObject.className = "form-group has-error" ;
			return false ;
		}
	} else {
		count = 0 ;
		for (x = 0 ; x < elementObject.length ; x ++) {
			if (elementObject[x].checked) {
				count ++ ;
			}
		}
		if (count == 0) {	// 没有选中项
			eleDivObject.className = "form-group has-error" ;
			return false ;
		} else {
			eleDivObject.className = "form-group has-success" ;
			return true ;
		}
	}
}