<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.bitlab.techorda.db.Book" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Tittle</title>
  <%@include file="head.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
    <div class="container mt-3">
      <%
        Book book = (Book) request.getAttribute("kniga");
        if(book!=null){
      %>
      <div class="row">
        <div class="col-6 mx-auto">
            <%-- названия книг --%>
            <div class="row mt-3">
              <div class="col-12">
                <label>NAME : </label>
              </div>
            </div>
            <div class="row mt-2">
              <div class="col-12">
                <input type="text" class="form-control" readonly value="<%=book.getName()%>">
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
                <input type="text" class="form-control" readonly value="<%=book.getAuthor()%>">
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
                <input type="text" class="form-control" readonly value="<%=book.getGenre()%>">
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
                <input type="text" class="form-control" readonly value="<%=book.getPrice()%> KZT">
              </div>
            </div>
              <div class="row mt-3">
                <div class="col-12">
                  <label>DESCRIPTION : </label>
                </div>
              </div>
              <div class="row mt-2">
                <div class="col-12">
                    <textarea class="form-control" readonly rows="3"><%=book.getDescription()%></textarea>
                </div>
              </div>
                <div class="mt-3">
                    <div class="col-12">
                        <button type="button" class="btn btn-primary btn-sm ms-3" data-bs-toggle="modal" data-bs-target="#editBook">
                            Edit Book
                        </button>
                        <!-- Button trigger modal -->
                        <button type="button" class="btn btn-danger btn-sm" data-bs-toggle="modal" data-bs-target="#deleteBook">
                            Delete Book
                        </button>

                    </div>
                </div>
                <!-- Modal -->
                <div class="modal fade" id="deleteBook" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <form action="/delete-book" method="post">
                                <input type="hidden" name="id" value="<%=book.getId()%>">
                                <div class="modal-header">
                                    <h1 class="modal-title fs-5">Confirm Delete</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <h4 class="text-center"> Are you sure?</h4>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No</button>
                                    <button class="btn btn-danger">Yes</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- Modal -->
                <div class="modal fade" id="editBook" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <form action="/save-book" method="post">
                                    <input type="hidden" name="book_id" value="<%=book.getId()%>">
                                    <%-- названия книг --%>
                                    <div class="row mt-3">
                                        <div class="col-12">
                                            <label>NAME : </label>
                                        </div>
                                    </div>
                                    <div class="row mt-2">
                                        <div class="col-12">
                                            <input type="text" class="form-control" name="book_name" value="<%=book.getName()%>">
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
                                            <input type="text" class="form-control" name="book_author" value="<%=book.getAuthor()%>">
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
                                            <select class="form-select" name="book_genre" value="<%=book.getGenre()%>">
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
                                            <input type="text" class="form-control" name="book_price" value="<%=book.getPrice()%>">
                                        </div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-12">
                                            <label>DESCRIPTION : </label>
                                        </div>
                                    </div>
                                    <div class="mt-3">
                                        <div class="col-12">
                                            <textarea name="book_description" class="form-control" rows="4"><%=book.getDescription()%></textarea>
                                        </div>
                                    </div>
                                    <%-- кнопка --%>
                                    <div class="row mt-3">
                                        <div class="col-12">
                                            <button class="btn btn-primary">SAVE BOOK</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
      </div>
      <%
        }else{
      %>
      <h3 class="text-center">
        BOOK NOT FOUND
      </h3>
      <%
        }
      %>
    </div>
</body>
</html>
