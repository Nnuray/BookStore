<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.bitlab.techorda.db.Book" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>BOOKS</title>
        <link rel="stylesheet" type="text/css" href="/css/bootstrap.css">
        <%-- будет подсказывать классы --%>
    </head>
    <body>
    <div class="container">
    <nav class="navbar navbar-expand-lg bg-success navbar-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Navbar</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Dropdown
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">Action</a></li>
                            <li><a class="dropdown-item" href="#">Another action</a></li>
                            <li><hr class="dropdown-divider"></li>
                            <li><a class="dropdown-item" href="#">Something else here</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled">Disabled</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    </div>
        <div class="container mt-3">
            <div class="row">
                <div class="col-6 mx-auto">
                    <form action="/add-book" method="post">
                        <%-- названия книг --%>
                        <div class="row mt-3">
                            <div class="col-12">
                                <label>NAME : </label>
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col-12">
                                <input type="text" class="form-control" name="book_name">
                            </div>
                        </div>
                            <%-- названия автора --%>
                            <div class="row mt-3">
                            <div class="col-12">
                                <label>AUTHOR : </label>
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col-12">
                                <input type="text" class="form-control" name="book_author">
                            </div>
                        </div>
                            <%-- названия жанра --%>
                            <div class="row mt-3">
                            <div class="col-12">
                                <label>GENRE : </label>
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col-12">
                                <select class="form-select" name="book_genre">
                                    <option>Fantasy</option>
                                    <option>Roman</option>
                                    <option>Horror</option>
                                </select>
                            </div>
                        </div>
                            <%-- цена книг --%>
                            <div class="row mt-3">
                                <div class="col-12">
                                    <label>PRICE : </label>
                                </div>
                            </div>
                            <div class="row mt-2">
                                <div class="col-12">
                                    <input type="text" class="form-control" name="book_price">
                                </div>
                            </div>
                            <%-- кнопка --%>
                            <div class="row mt-3">
                            <div class="col-12">
                                <button class="btn btn-success">ADD BOOK</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <table class="table table-striped table-hover">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>NAME</th>
                            <th>AUTHOR</th>
                            <th>GENRE</th>
                            <th>PRICE</th>
                        </tr>
                        </thead>
                        <tbody>
                        <%
                            ArrayList<Book> kitaptar = (ArrayList<Book>) request.getAttribute("knigi");
                            if(kitaptar!=null){
                                for (Book book : kitaptar){
                         %>
                                <tr>
                                    <td><%=book.getId()%></td>
                                    <td><%=book.getName()%></td>
                                    <td><%=book.getAuthor()%></td>
                                    <td><%=book.getGenre()%></td>
                                    <td><%=book.getPrice()%></td>

                                </tr>
                        <%
                                }
                            }
                        %>

                        </tbody>
                    </table>
                </div>

            </div>

        </div>
    </body>
</html>
