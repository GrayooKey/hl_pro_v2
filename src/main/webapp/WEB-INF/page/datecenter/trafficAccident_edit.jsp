<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="opt" uri="/WEB-INF/taglib/option.tld" %>
<jsp:include page="/common/common.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>交通事故编辑</title>
</head>
<body>
<div id="" class="ibox-content">
	<form id="baseForm" method="post" class="form-horizontal" name="baseForm" action="">
		<%-- baseModule start --%>
	    <input type="hidden" id="id" name="id" value="${trafficAccidentVo.id}" />
	    <input type="hidden" id="creatorId" name="creatorId" value="${trafficAccidentVo.creatorId}" />
	    <input type="hidden" id="creatorName" name="creatorName" value="${trafficAccidentVo.creatorName}" />
	    <input type="hidden" id="createTime" name="createTime" value="<fmt:formatDate value='${trafficAccidentVo.createTime}' pattern='yyyy-MM-dd HH:mm:ss'/>" />
	    <input type="hidden" id="sysCode" name="sysCode" value="${trafficAccidentVo.sysCode}" />
	    <%-- baseModule end --%>
	    
	    <input type="hidden" id="ttId" name="ttId" value="${trafficAccidentVo.ttId}" />
	    <input type="hidden" id="formNumber" name="formNumber" value="HLZXRBB-10" />
	    <input type="hidden" id="x" name="x" value="${trafficAccidentVo.x}" />
	    <input type="hidden" id="y" name="y" value="${trafficAccidentVo.y}" />
		
		<div class="form-group">
		  	<label class="col-sm-2 control-label"><span style="color: red">*</span>标题</label>
		    <div class="col-sm-8">
		      <c:if test="${not empty trafficAccidentVo.title}">
		      	<input type="text" class="form-control" id="title" name="title" placeholder="输入标题" value="${trafficAccidentVo.title}" data-rule-required="true" data-rule-rangelength="[1,50]" />
		      </c:if>
		      <c:if test="${empty trafficAccidentVo.title}">
		      	<input type="text" class="form-control" id="title" name="title" placeholder="输入标题" value="<fmt:formatDate value='${trafficAccidentVo.dutyDate}' pattern='yyyy年MM月dd日交通事故'/>" data-rule-required="true" data-rule-rangelength="[1,50]" />
		      </c:if>
		    </div>
	  	</div>
	  	
	  	<div class="form-group">
		  	<label class="col-sm-2 control-label"><span style="color: red">*</span>日期</label>
	        <div class="col-sm-3">
	            <input type="text" class="form-control" id="dutyDate" name="dutyDate" value="<fmt:formatDate value='${trafficAccidentVo.dutyDate}' pattern='yyyy-MM-dd'/>" onfocus="this.blur()" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})" data-rule-required="true" disabled="disabled"  />
	            <input type="hidden" id="dutyDate" name="dutyDate" value="<fmt:formatDate value='${trafficAccidentVo.dutyDate}' pattern='yyyy-MM-dd'/>" />
	        </div>
        </div>
	  	
	  	<div class="form-group">
	  		<label class="col-sm-2 control-label"><span style="color: red">*</span>天气</label>
		    <div class="col-sm-3">
		    	<opt:select dictKey="dc_weather" classStyle="form-control" name="weather" id="weather" value="${trafficAccidentVo.weather}" isDefSelect="false" />
			</div>
	  		<label class="col-sm-2 control-label"><span style="color: red">*</span>接报时间</label>
	        <div class="col-sm-3">
	            <input type="text" class="form-control" id="receiptTime" name="receiptTime" value="<fmt:formatDate value='${trafficAccidentVo.receiptTime}' pattern='HH:mm'/>" onfocus="this.blur()" onclick="WdatePicker({dateFmt:'HH:mm'})" data-rule-required="true"  />
	        </div>
		</div>
		
		<div class="form-group">
	  		<label class="col-sm-2 control-label"><span style="color: red">*</span>接报方式</label>
		    <div class="col-sm-3">
		    	<opt:select dictKey="dc_reportedWay" classStyle="form-control required" name="receiptWay" id="receiptWay" value="${trafficAccidentVo.receiptWay}" isDefSelect="true" />
			</div>
	  		<label class="col-sm-2 control-label"><span style="color: red">*</span>消息来源</label>
		    <div class="col-sm-3">
		    	<opt:select dictKey="dc_receiptWay" classStyle="form-control required" name="source" id="source" value="${trafficAccidentVo.source}" isDefSelect="true" />
			</div>
		</div>
	 
	    <div class="form-group">
		  	<label class="col-sm-2 control-label"><span style="color: red">*</span>事故地点 </label>
		    <div class="col-sm-3">
				<input type="text" class="form-control" id="accidentSite" name="accidentSite" value="${trafficAccidentVo.accidentSite}" data-rule-required="true" data-rule-rangelength="[1,50]" />    
			</div>
			<label class="col-sm-2 control-label"><span style="color: red">*</span>事故类型</label>
		    <div class="col-sm-3">
		    	<opt:select dictKey="dc_accidentType" classStyle="form-control required" name="accidentType" id="accidentType" value="${trafficAccidentVo.accidentType}" isDefSelect="true" />
			</div>
		</div>
		
		<div class="form-group">
		  	<label class="col-sm-2 control-label"><span style="color: red">*</span>车辆类型 </label>
		    <div class="col-sm-8">
				<opt:checkbox dictKey="dc_carType"  id="carType" name="carType" value="${trafficAccidentVo.carType}" />
			</div>
		</div>
		
		<div class="form-group">
		  	<label class="col-sm-2 control-label"><span style="color: red">*</span>涉及车辆 </label>
		    <div class="col-sm-3">
				<input type="text" class="form-control" id="involveCarNum" name="involveCarNum" value="${trafficAccidentVo.involveCarNum}" data-rule-required="true" data-rule-digits="true" data-rule-rangelength="[1,3]" />    
			</div>
			<label class="col-sm-2 control-label"><span style="color: red">*</span>涉事车牌</label>
		    <div class="col-sm-3">
				<input type="text" class="form-control" id="involvePlates" name="involvePlates" value="${trafficAccidentVo.involvePlates}" data-rule-required="true" data-rule-rangelength="[1,50]" />    
			</div>
		</div>
		
		<div class="form-group">
		  	<label class="col-sm-2 control-label"><span style="color: red">*</span>轻伤人数 </label>
		    <div class="col-sm-3">
				<input type="text" class="form-control" id="minorInjuryNum" name="minorInjuryNum" value="${trafficAccidentVo.minorInjuryNum}" data-rule-required="true" data-rule-digits="true" data-rule-rangelength="[1,3]" />    
			</div>
			<label class="col-sm-2 control-label"><span style="color: red">*</span>重伤人数</label>
		    <div class="col-sm-3">
				<input type="text" class="form-control" id="seriousInjuryNum" name="seriousInjuryNum" value="${trafficAccidentVo.seriousInjuryNum}" data-rule-required="true" data-rule-digits="true" data-rule-rangelength="[1,3]" />    
			</div>
		</div>
		
		<div class="form-group">
		  	<label class="col-sm-2 control-label"><span style="color: red">*</span>死亡人数</label>
		    <div class="col-sm-3">
				<input type="text" class="form-control" id="deathNum" name="deathNum" value="${trafficAccidentVo.deathNum}" data-rule-required="true" data-rule-digits=="true" data-rule-rangelength="[1,3]" />    
			</div>
			<label class="col-sm-2 control-label"><span style="color: red">*</span>封闭车道</label>
		    <div class="col-sm-3">
				<input type="text" class="form-control" id="laneClosedNum" name="laneClosedNum" value="${trafficAccidentVo.laneClosedNum}" data-rule-required="true" data-rule-digits="true" data-rule-rangelength="[1,3]" />    
			</div>
		</div>
		
		<div class="form-group">
		  	<label class="col-sm-2 control-label">路产损失</label>
		    <div class="col-sm-8">
				<input type="text" class="form-control" id="roadLoss" name="roadLoss" value="${trafficAccidentVo.roadLoss}" data-rule-rangelength="[1,50]" />    
			</div>
		</div>
		
		<div class="form-group">
			<label class="col-sm-2 control-label">路产赔偿</label>
		    <div class="col-sm-3">
				<input type="text" class="form-control" id="roadIndemnity" name="roadIndemnity" value="${trafficAccidentVo.roadIndemnity}" data-rule-num2="true" />    
			</div>
			<label class="col-sm-2 control-label">索赔单号</label>
		    <div class="col-sm-3">
				<input type="text" class="form-control" id="claimNote" name="claimNote" value="${trafficAccidentVo.claimNote}" data-rule-rangelength="[1,20]" />    
			</div>
		</div>
		
		
		<div class="form-group">
		  	<label class="col-sm-2 control-label"><span style="color: red">*</span>事故详情</label>
		    <div class="col-sm-8">
		       <textarea class="form-control" rows="10" cols="" id="accidentDetails" name="accidentDetails" data-rule-required="true" data-rule-rangelength="[1,500]" >${trafficAccidentVo.accidentDetails}</textarea>
		    </div>
	  	</div>
	  	
	  	<div class="form-group">
		  	<label class="col-sm-2 control-label">备注</label>
		    <div class="col-sm-8">
		       <textarea class="form-control" rows="6" cols="" id="remark" name="remark" data-rule-rangelength="[0,250]" >${trafficAccidentVo.remark}</textarea>
		    </div>
	  	</div>
		<br><br><br>
	</form>
</div>
<!-- 底部按钮 -->
<div class="footer edit_footer">
	<div class="pull-right">
	<button class="btn btn-primary " type="button" onclick="on_save()"><i class="fa fa-check"></i>&nbsp;保存</button>
	<button class="btn btn-danger " type="button" onclick="on_close()"><i class="fa fa-close"></i>&nbsp;关闭</button>
	</div>
</div>
</body>
<script type="text/javascript">
	var winName = "${winName}";
	var URLStr = "/datecenter/trafficAccident/trafficAccident_";

	//新增或编辑
	function on_save(){
		if ($("#baseForm").valid()) {//如果表单验证成功，则进行提交。  
	        on_submit();//提交表单.  
	    }else{
            autoAlert("信息提交不正确，请检查！", 5);
        }
	}

	//提交表单
	function on_submit(){  
		$.ajax({
			type : 'post',
			async:false,
			dataType : 'json',
			url: URLStr + 'saveOrUpdate',
			data:$('#baseForm').serialize(),
			success : function(data) {
                if (data.result) {
                    autoMsg("保存成功！", 1);
                    parent.frames[winName].$("#grid").bootstrapTable("refresh", {
                        url : URLStr + "load"
                    });//加载树下的列表
                    parent.layer.close(index);
                } else {
                    autoAlert("保存失败，请检查！", 5);
                }
            },
            error : function(XMLHttpRequest, textStatus, errorThrown) {
                autoAlert("系统出错，请检查！", 5);
            }
		});
	}

</script>
</html>