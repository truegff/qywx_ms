<%@ page pageEncoding="utf-8" language="java" %>
<div class="mian02">
	<div class="workform_list">
	    <label>完成情况:</label>
	    <span> 
			<input type="radio" disabled="disabled" readonly="readonly" name="${taskbean.taskType}finish" value="是" <c:if test="${taskbean.workIsFinish=='是' || taskbean.workIsFinish == null}"> checked="checked"</c:if> />是 
			<input type="radio" disabled="disabled" readonly="readonly" name="${taskbean.taskType}finish" value="否" <c:if test="${taskbean.workIsFinish=='否'}"> checked="checked"</c:if> />否
		</span>
	    <div class="clear"></div>
	    <script type="text/javascript">
	    stateAndInputs[stateAndInputs.length] = {inputName:'${taskbean.taskType}finish',state:'${taskbean.workIsFinish}',taskType:'${taskbean.taskType}'}; 
    	</script>
	</div>
	<div class="workform_list">
	    <label><font color="red">*</font>耗时(分钟):</label>
	    <span>
	      ${taskbean.costTime}
	    </span>
	    <div class="clear"></div>
	</div>
<div class="workform_list">
   <label> 保修状态:</label> 
   <span>${taskbean.taskAttributeOption.serverStatus.defaultName}</span>
   <div class="clear"></div>
</div>
	<div class="workform_list">
	    <label>任务:</label>
	    <span>
	        ${taskbean.taskContent}
	    </span>
	    <div class="clear"></div>
	</div>
	<div class="workform_list">
	    <label><font color="red">*</font>工作描述:</label>
	    <span>
	       ${taskbean.workRemark}
	    </span>
	    <div class="clear"></div>
	</div>
	<fieldset class="fieldset_style">
		<legend class="legend_font">
			<div id="task_replace_button_client" class="task_replace">
			    <span id="clientspare" class="task_replace_button_unselected">模块替换</span>&nbsp;
			    <span id="clientelement" class="task_replace_button_unselected">零件替换</span>
			</div>
		</legend>
		<div class="record_div" id="client1" style="display: none">
		    <c:forEach items="${taskbean.importModel}" var="taskspare">
		        <div class='task_box02'>
		            <span><font color='blue'>原物料:</font>${taskspare.oldSerialName}
		                <input type='hidden' value="${taskspare.oldSerialName}" name="client1oldSerialName"/>
		                <input type='hidden' value="${taskspare.oldSerialNumber}" name="client1oldSerialNumber"/>
		                <input type='hidden' value="${taskspare.oldMaterialCode}" name="client1oldMaterialCode"/>
		                <input type='hidden' value="${taskspare.oldHardwareVersion}" name="client1oldHardwareVersion"/>
		                <input type='hidden' value="${taskspare.oldSoftwareVersion}" name="client1oldSoftwareVersion"/>
		                <input type='hidden' value="${taskspare.equipmentConfigId}" name="client1equipmentConfigId"/>
		                <input type='hidden' value="${taskspare.newSerialName}" name="client1newSerialName"/>
		                <input type='hidden' value="${taskspare.newMaterialCode}" name="client1newMaterialCode"/>
		                <input type='hidden' value="${taskspare.newSerialNumber}" name="client1newSerialNumber"/>
		                <input type='hidden' value="${taskspare.newHardwareVersion}" name="client1newHardwareVersion"/>
		                <input type='hidden' value="${taskspare.newSoftwareVersion}" name="client1newSoftwareVersion"/>
		            </span>
		            <span><font color='blue'>新物料:</font>${taskspare.newSerialName}</span>
		        </div>
		    </c:forEach>
		</div>
		<div class="record_div" id="client2" style="display: none">
		    <c:forEach items="${taskbean.subModel}" var="taskelement">
		        <div class='task_box02'>
		            <span><font color='blue'>原物料:</font>${taskelement.oldSerialName}
		                <input type='hidden' value="${taskelement.newSerialName}" name="client2newSerialName"/>
		                <input type='hidden' value="${taskelement.oldSerialName}" name="client2oldSerialName"/>
		                <input type='hidden' value="${taskelement.quantity}" name="client2nums"/>
		                <input type='hidden' value="${taskelement.newMaterialCode}" name="client2newMaterialCode"/>
		                <input type='hidden' value="${taskelement.oldMaterialCode}" name="client2oldMaterialCode"/>
		                <input type='hidden' value="${taskelement.newSoftwareVersion}" name="client2newSoftwareVersion"/>
		                <input type='hidden' value="${taskelement.newHardwareVersion}" name="client2newHardwareVersion"/>
		                <input type='hidden' value="${taskelement.useMethod}" name="client2useMethod"/>
		            </span>
		            <span><font color='blue'>新物料:</font>${taskelement.newSerialName}</span>
		            <span><font color='blue'>数量:</font>${taskelement.quantity}</span>
		        </div>
		    </c:forEach>
		</div>
	</fieldset>
</div>