<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://liferay.com/tld/aui" prefix="aui" %>
<%@ taglib uri="http://liferay.com/tld/ui" prefix="liferay-ui" %>
<%@ taglib uri="http://liferay.com/tld/portlet" prefix="liferay-portlet" %>

<%@ page contentType="text/html; charset=UTF-8" %>
<portlet:defineObjects/>

<html lang="vi-VN">
<header>
	<meta charset="UTF-8">
</header>
<body>
<h3><center> CAN THO UNIVERSITY SOFTWARE CENTER </center> </h3><br>
<p>
Văn phòng:
<ul>
	<li>Địa chỉ: 01 Lý Tự Trọng, Phường An Phú, Quận Ninh Kiều, Tp. Cần Thơ</li>
	<li>Điện thoại: +84 292 3731072</li>
	<li>Fax: +84 292 3731071</li>
	<li>Email: cusc.sales@ctu.edu.vn</li>
	<li>Website: http://cuscsoft.com/</li>
</ul>	 
<center>Vui lòng điền thông tin vào các ô bên dưới và gửi cho chúng tôi:</center>
</p>
</body> 
</html>

 
<portlet:actionURL var="sendMailURL" name="sendMail" />
<aui:form action="${ sendMailURL }" method="POST">
	<aui:input id="name" name="name" type="text" label="Họ tên"  ignoreRequestValue="true">
		<aui:validator name="required" errorMessage="Vui lòng nhập tên của bạn!" />
	</aui:input>
	<aui:input name="email" type="email" label="Email"  ignoreRequestValue="true">
		<aui:validator name="email" errorMessage="Vui lòng nhập đúng định dạng Email!" />
		<aui:validator name="required" errorMessage="Vui lòng nhập Email của bạn!" />
	</aui:input>
	<aui:input name="phone" type="tel" label="Điện thoại"  ignoreRequestValue="true">
		<aui:validator name="rangeLength" errorMessage="Số điện thoại gồm 10 số!">[10,10]</aui:validator>
		<aui:validator name="required" errorMessage="Vui lòng nhập số điện thoại của bạn!" />
	</aui:input>
	<aui:input name="address" type="text" label="Địa chỉ"  ignoreRequestValue="true">
		<aui:validator name="required" errorMessage="Vui lòng nhập địa chỉ của bạn!"/>
	</aui:input>
	<aui:input name="body" type="textarea" label="Nội dung"  ignoreRequestValue="true">
		<aui:validator name="required" errorMessage="Vui lòng nhập nội dung!"/>
	</aui:input>
	<aui:button id="send" name="send" type="submit" value="Gửi"/>
	
	<p id="message" />
</aui:form>
