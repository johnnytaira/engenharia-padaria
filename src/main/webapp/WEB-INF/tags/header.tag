<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>

<head>
	<meta charset="UTF-8">
	<title>Administrador</title>
	<link rel="stylesheet" href="<c:url value="/css/view.css" />">
	<!--  <script type="text/javascript" src="/js/view.js"></script>-->
	<script type="text/javascript" src="js/lib/jquery.js"></script>
		<script type="text/javascript" src="js/dist/jquery.validate.js"></script>
	
		<script type="text/javascript">
			function numbersonly(e){
			var unicode=e.charCode? e.charCode : e.keyCode
			if (unicode!=8 && unicode!=46){ //if the key isn't the backspace key (which we should allow)
				if (unicode<48||unicode>57) //if not a number
					return false //disable key press
				}
			}
		</script>
		
		<script type="text/javascript">
			
				$("#produtosForm").validate({
					rules: {
						nome:{
							required:true
						},

						descricao:{
							maxlength:80
						}
					},
					
					messages:{
						nome:"Atributo obrigatório!"
					}
				});

		</script>
	
</head>
