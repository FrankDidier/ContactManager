<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.example.contactmanager.Contact"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact List</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1>Contact List</h1>
        <a href="contacts?action=new" class="btn btn-success">Add New Contact</a>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Phone</th>
                    <th>Address</th>
                    <th>Work</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="contact" items="${contactList}">
                    <tr>
                        <td>${contact.getId()}</td>
                        <td>${contact.getName()}</td>
                        <td>${contact.getPhone()}</td>
                        <td>${contact.getAddress()}</td>
                        <td>${contact.getWork()}</td>
                        <td>
                            <a href="contacts?action=edit&id=${contact.getId()}" class="btn btn-info">Edit</a>
                            <a href="contacts?action=delete&id=${contact.getId()}" class="btn btn-danger">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
