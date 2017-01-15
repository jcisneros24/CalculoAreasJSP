<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
<h1>Calculando áreas</h1>
<form action="index.jsp?area=circulo" method="post">
    <fieldset>
        <legend>Área del círculo</legend>
        Radio: <input type="text" name="radio" value="${param.radio}"/>
        <input type="submit" value="Calcular"/>
        <%if ("circulo".equals(request.getParameter("area"))) {
        double radio=Double.parseDouble(request.getParameter("radio"));
        double area=Math.PI*Math.pow( radio,2.0);
        %><br/>
        El área es: <%=area%>
        <%}%>
    </fieldset>
</form>

<form action="index.jsp?area=triangulo" method="post">
    <fieldset>
        <legend>Área del Triángulo</legend>
        Altura: <input type="text" name="altura" value="${param.altura}"/><br/>
        Base: <input type="text" name="base" value="${param.base}"/><br/>
        <input type="submit" value="Calcular"/>
        <%if ("triangulo".equals(request.getParameter("area"))) {
        double altura=Double.parseDouble(request.getParameter("altura"));
        double base=Double.parseDouble(request.getParameter("base"));
        double area=(base*altura)/2.0;
        %><br/>
        El área es: <%=area%>
        <%}%>
    </fieldset>
</form>

</body>
</html>