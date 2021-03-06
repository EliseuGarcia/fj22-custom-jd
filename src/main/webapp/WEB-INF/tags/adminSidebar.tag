<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="col-md-3 col-lg-2 sidebar-offcanvas bg-light pl-0"
	id="sidebar" role="navigation">
	<ul class="nav flex-column sticky-top pl-0 pt-5 mt-3">
		<li class="nav-item">
			<a class="nav-link" href="<c:url value='/admin/' />" >
				<i class="fa fa-home fa-lg"></i> Home
			</a>
		</li>
		<li class="nav-item">
			<a class="nav-link" href="<c:url value='/admin/authors' />" >
				<i class="fa fa-user fa-lg"></i> Autores
			</a>
		</li>
		<li class="nav-item">
			<a class="nav-link" href="<c:url value='/admin/categories' />" >
				<i class="fa fa-list fa-lg"></i> Categorias
			</a>
		</li>
		<li class="nav-item">
			<a class="nav-link" href="<c:url value='/admin/books' />" >
				<i class="fa fa-book fa-lg"></i> Livros
			</a>
		</li>
				<li class="nav-item">
			<a class="nav-link" href="<c:url value='/admin/products' />" >
				<i class="fa fa-cube fa-lg"></i> Produtos
			</a>
		</li>
	</ul>
</div>