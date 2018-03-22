<form:form action="${ctxPath}/manager/operations/v1.6/SetChargingProfile" modelAttribute="params">
    <section><span>Charge Points with OCPP v1.6</span></section>
    <%@ include file="../00-cp-single.jsp" %>
    <section><span>Parameters</span></section>
    <table class="userInput">
    <tr><td>Connector ID :</td>
        <td><form:input path="connectorId" placeholder="required" /></td>
    </tr>
	<tr><td><b>Charging Profile</b></td></tr>
	<tr><td>Transaction ID :</td><td><i>Disabled for now</i></td></tr>
	<tr><td>Charging Profile ID (integer):</td><td><form:input path="chargingProfileId" placeholder="required" /></td></tr>
	<tr><td>Stack Level (integer):</td><td><form:input path="stackLevel" placeholder="required" /></td></tr>
	<tr>
		<td>Charging Profile Purpose :</td>
		<td>
			<form:select path="chargingProfilePurpose" >
				<form:options items="${chargingProfilePurpose}" />
			</form:select>
		</td>
	</tr>
	<tr>
		<td>Charging Profile Kind :</td>
		<td>
			<form:select path="chargingProfileKind" >
				<form:options items="${chargingProfileKind}" />
			</form:select>
		</td>
	</tr>
	<tr>
		<td>Recurrency Kind :</td>
		<td>
			<form:select path="recurrencyKind" >
				<form:option value="" label="optional"/>
				<form:options items="${recurrencyKind}" />
			</form:select>
		</td>
	</tr>
	<tr><td>Valid From :</td>
            <td>
                <form:input path="validFrom" cssClass="dateTimePicker" placeholder="optional" />
            </td>
        </tr>
	<tr><td>Valid To :</td>
		<td>
			<form:input path="validTo" cssClass="dateTimePicker" placeholder="optional" />
		</td>
	</tr>
	<tr><td><b>Charging Schedule</b></td></tr>
	<tr><td>Duration (integer) :</td><td><form:input path="duration" placeholder="optional" /></td></tr>
	<tr><td>Start Schedule :</td><td><form:input path="startSchedule" cssClass="dateTimePicker" placeholder="optional" /></td></tr>
	<td>Charging Rate Unit :</td>
	<td>
		<form:select path="chargingRateUnit" >
			<form:options items="${chargingRateUnit}" />
		</form:select>
	</td>
	<tr><td>Minimum Charging Rate (decimal) :</td><td><form:input path="minChargingRate" placeholder="optional" /></td></tr>
	<tr><td><b>Charging Schedule Period</b></td></tr>
	<tr><td>Start Period (integer) :</td><td><form:input path="startPeriod" placeholder="required" /></td></tr>
	<tr><td>Limit (decimal) :</td><td><form:input path="limit" placeholder="required" /></td></tr>
	<tr><td>Number of Phases (integer) :</td><td><form:input path="numberPhases" placeholder="optional" /></td></tr>
    <tr>
            <td></td><td><div class="submit-button"><input type="submit" value="Perform"></div></td>
        </tr>
    </table>
</form:form>