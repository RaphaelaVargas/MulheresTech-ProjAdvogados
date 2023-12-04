  <%@ include file="./_header.jsp" %>

	<div class="container">
		<h3 class="text-center my-5">Cadastre um novo advogado</h3>
		<div class="adv mb-5">
			<form action="novoadvogado">

				<div class="form-group ">

					<label for="oab">OAB</label> <input type="text"
						class="form-control" id="" name="oab">

				</div>
				<div class="form-group">

					<label for="nome">Nome</label> <input type="text"
						class="form-control" id="" name="nome">

				</div>
				<div class="form-group">

					<label for="telefone">Telefone</label> <input type="text"
						class="form-control" id="" name="telefone">

				</div>

			    <div class="form-group mb-5">

					<input type="submit" class="btn btn-primary mb-5" value="Enviar">

				</div>
			</form>
		</div>

	</div>
	
		<%@ include file="./_footer.jsp" %>