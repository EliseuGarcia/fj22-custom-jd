<%@ taglib tagdir="/WEB-INF/tags/" prefix="cdc"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<cdc:adminTemplate>
	<jsp:body>
 		<div class="col main pt-5 mt-3">
	        <h2 class="display-4 d-none d-sm-block">Formul�rio de Cria��o de Livros</h2>
			<form action="<c:url value='/admin/books/create' />" method="post">
			  <div class="form-group">
			    <label for="bookTitle">Titulo</label>
			    <input type="text" class="form-control" name="title"
						id="bookTitle" placeholder="Algoritmos em Java"
						value="${ bookForm.title }">
			  	<form:errors path="bookForm.title"
						cssClass="alert alert-danger mt-2" element="div" />
				
			  </div>
  			  <div class="form-group">
			    <label for="bookReleaseDate">Data de lan�amento</label>
			    <input type="date" class="form-control" name="releaseDate"
						id="bookReleaseDate"
						value="<fmt:formatDate value='${ bookForm.releaseDate }' pattern='yyyy-MM-dd' />">
			  	<form:errors path="bookForm.releaseDate"
						cssClass="alert alert-danger mt-2" element="div" />
			  	
			  </div>
   			  <div class="form-group">
				 <label for="bookPages">Quantidade de p�ginas</label>
				 <input type="number" class="form-control" name="pages"
						id="bookPages" placeholder="156" value="${ bookForm.pages }">
			  	<form:errors path="bookForm.pages"
						cssClass="alert alert-danger mt-2" element="div" />
			  </div>

			  <div class="form-group">
				<label for="bookAuthorId">Autor</label>
				<select class="form-control" name="authorId" id="bookAuthorId">
				  
				  <option
							<c:out value="${ empty bookForm.authorId ? 'selected' : '' }" />
							disabled>Selecione um autor</option>
				  <c:forEach var="author" items="${ authors }">
				  	<option value="${ author.id }"
								<c:out value="${ bookForm.authorId.equals(author.id) ? 'selected' : '' }" />>${ author.name }</option>
				  </c:forEach>
				</select>
			  	<form:errors path="bookForm.authorId"
						cssClass="alert alert-danger mt-2" element="div" />
			   </div>

			   <div class="form-group">
				   <label for="bookCategoryId">Categoria</label>
	   			   <select class="form-control" name="categoryId"
						id="bookCategoryId">
				  <option
							<c:out value="${ empty bookForm.categoryId ? 'selected' : '' }" />
							disabled>Selecione uma categoria</option>
				  <c:forEach var="category" items="${ categories }">
				  	<option	value="${ category.id }"
								<c:out value="${ bookForm.categoryId.equals(category.id) ? 'selected' : '' }" />>${ category.title }</option>
				  </c:forEach>
				</select>
			  	<form:errors path="bookForm.categoryId"
						cssClass="alert alert-danger mt-2" element="div" />
			 </div>

   			  <div class="form-group">
			    <label for="bookCoverUrl">Capa url</label>
			    <input type="text" class="form-control" name="coverUrl"
						id="bookCoverUrl"
						placeholder="https://cdn.shopify.com/s/files/1/0155/7645/products/eBook-Algoritmos_large.jpg?v=1484936519"
						value="${ bookForm.coverUrl }">
			  	<form:errors path="bookForm.coverUrl"
						cssClass="alert alert-danger mt-2" element="div" />
			  </div>
			  <div class="form-group">
			    <label for="bookDescription">Descri��o</label>
			    <textarea class="form-control" name="description"
						id="bookDescription" rows="3"
						placeholder="Em nosso dia a dia, realizamos uma s�rie de buscas e ordena��es que nos s�o t�o naturais que nem percebemos como sua presen�a � ub�qua e facilita nossa vida...">${ bookForm.description }</textarea>
			  	<form:errors path="bookForm.description"
						cssClass="alert alert-danger mt-2" element="div" />
			  </div>
		  	  <button type="submit" class="btn btn-primary mb-2">Salvar</button>
	  
			</form>
        </div>
    </jsp:body>
</cdc:adminTemplate>


