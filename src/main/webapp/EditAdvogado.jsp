  <%@ include file="./_header.jsp" %>

<%@ page import="model.Advogado"%>
<%@ page import="java.util.List"%>
<%
List<Advogado> advogados = (List<Advogado>) request.getAttribute("advogado");
String success = (String) request.getAttribute("success");
%>






	<div class="container">
    <h2 class="text-center">Editar dados advogados</h2>
			<form action="salvaadvogado">
		
		<input type="hidden" name="id" value="<%=advogados.get(0).getIdadv()%>">
		 <div class="form-group">
				<label>Data</label>
					<span><%= advogados.get(0).getData() %></span>
			</div>
			
			<div class="form-group">
				<label for="oab">OAB</label> <input type="text" class="form-control"
					id="" name="oab"
					value="<%=advogados.get(0).getOab()%>">
				
			</div>

			<div class="form-group">
				<label for="nome">Nome</label> <input type="text"
					class="form-control" id="" name="nome"
					value="<%=advogados.get(0).getNome()%>">
				
			</div>

			<div class="form-group">
				<label for="telefone">Telefone</label> <input type="text"
					class="form-control" id="" name="telefone"
					value="<%=advogados.get(0).getTelefone()%>">
			</div>

			<div class="form-group">
				<input type="submit" class="btn btn-primary" value="Enviar">
			</div>
		</form>

	</div>

<%@ include file="./_footer.jsp" %>