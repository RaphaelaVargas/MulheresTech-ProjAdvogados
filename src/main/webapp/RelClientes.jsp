<%@ include file="./_header.jsp"%>

<%@ page import="model.Cliente"%>
<%@ page import="java.util.ArrayList"%>
<%
ArrayList<Cliente> lista = (ArrayList<Cliente>) request.getAttribute("clientes");
String success = (String) request.getAttribute("success");
String q = (String) request.getAttribute("q");
if (q == null)
	q = "";
%>







<p>
	<a href="CadCliente.jsp"><button class="btn btn-success mx-5">Adicionar
			cliente</button></a>

</p>



<div class="container">

	<%
	if (success != null) {
	%>
	<div><%=success%></div>
	<%
	}
	%>

	<h2 class="text-center m-4">Relatório de Clientes</h2>
	<form class="d-flex mx-5" role="search" name="buscaadvogado"
		action="pesquisaadvogado">

		<input class="form-control me-2" type="search" name="q" value="<%=q%>">

		<button class="btn btn-outline-success" type="submit">Search</button>
	</form>
	<table class="table table-dark mt-5">
		<thead>
			<tr>
				<th scope="col">Código</th>
				<th scope="col">Data</th>
				<th scope="col">Cliente</th>
				<th scope="col">Telefone</th>
				<th scope="col">Opções</th>
			</tr>
		</thead>
		<tbody>
			<%
			for (int i = 0; i < lista.size(); i++) {
			%>

			<tr>
				<td><%=lista.get(i).getIdcliente()%></td>
				<td><%=lista.get(i).getData()%></td>
				<td><%=lista.get(i).getNome()%></td>
				<td><%=lista.get(i).getTelefone()%></td>
				<td><a href="editarcliente?id=<%=lista.get(i).getIdcliente()%>"
					onclick="return confirm('Tem certeza que deseja editar?')">Editar</a>
					&nbsp;|&nbsp; <a
					href="apagacliente?id=<%=lista.get(i).getIdcliente()%>"
					onclick="return confirm('Tem certeza que deseja apagar?')">Apagar</a>
				</td>
			</tr>

			<%
			}
			%>

		</tbody>
	</table>

</div>

<%@ include file="./_footer.jsp"%>