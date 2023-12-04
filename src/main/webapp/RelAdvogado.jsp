
<%@ include file="./_header.jsp"%>

<%@ page import="model.Advogado"%>
<%@ page import="java.util.ArrayList"%>
<%
ArrayList<Advogado> lista = (ArrayList<Advogado>) request.getAttribute("advogados");
String success = (String) request.getAttribute("success");
String q = (String) request.getAttribute("q");
if (q == null)
	q = "";
%>


<p>
	<a href="CadAdvogado.jsp"><button class="btn btn-success mx-5">Adicionar
			advogado</button></a>
</p>
<div class="container">

	<%
	if (success != null) {
	%>
	<script>alert("<%=success%>
		")
	</script>
	<%
	}
	%>
	<h2 class="text-center m-4">Relatório de advogados</h2>
	<form class="d-flex mx-5" role="search" name="buscaadvogado"
		action="pesquisaadvogado">

		<input class="form-control me-2" type="search" name="q" value="<%=q%>">

		<button class="btn btn-outline-success" type="submit">Search</button>
	</form>
	<table class="table table-dark mt-5">
		<thead>
			<tr>
				<th scope="col">Id</th>
				<th scope="col">Data</th>
				<th scope="col">OAB</th>
				<th scope="col">Nome</th>
				<th scope="col">Telefone</th>
				<th scope="col">Opções</th>
			</tr>
		</thead>
		<tbody>
			<%
			for (int i = 0; i < lista.size(); i++) {
			%>

			<tr>
				<td><%=lista.get(i).getIdadv()%></td>
				<td><%=lista.get(i).getData()%></td>
				<td><%=lista.get(i).getOab()%></td>
				<td><%=lista.get(i).getNome()%></td>
				<td><%=lista.get(i).getTelefone()%></td>

				<td><a href="editaradvogado?id=<%=lista.get(i).getIdadv()%>"
					onclick="return confirm('Tem certeza que deseja editar?')">Editar</a>
					&nbsp;|&nbsp; <a
					href="apagaadvogado?id=<%=lista.get(i).getIdadv()%>"
					onclick="return confirm('Tem certeza que deseja apagar?')">Apagar</a>
				</td>
			</tr>

			<%
			}
			%>

		</tbody>
	</table>

</div>


<%@ include file="./_footer.jsp" %>