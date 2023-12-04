  <%@ include file="./_header.jsp" %>

	<div class="container">

		<h3 class="text-center my-5">Cadastre um novo cliente</h3>

		<form action="novocliente">
			<div class="form-group">

				<label for="nome">Nome</label> <input type="text"
					class="form-control" id="nome" name="nome">

			</div>
           <div class="form-group">

				<label for="telefone">Telefone</label> <input type="text"
					class="form-control" id="" name="telefone">

			</div>
			<div class="form-group">

				<input type="submit" class="btn btn-primary mb-5" value="Enviar">

			</div>

		</form>
	</div>



<%@ include file="./_footer.jsp" %>