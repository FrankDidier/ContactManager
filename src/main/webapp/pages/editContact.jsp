<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.example.contactmanager.Contact"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Contact</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1>Edit Contact</h1>
        <form action="contacts?action=update" method="post">
            <input type="hidden" name="id" value="${contact.getId()}">
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" class="form-control" name="name" value="${contact.getName()}" required>
            </div>
            <div class="form-group">
                <label for="phone">Phone</label>
                <input type="text" class="form-control" name="phone" value="${contact.getPhone()}" required>
            </div>
            <div class="form-group">
                <label for="address">Address</label>
                <input type="text" class="form-control" name="address" value="${contact.getAddress()}">
            </div>
            <div class="form-group">
                <label for="work">Work</label>
                <input type="text" class="form-control" name="work" value="${contact.getWork()}">
            </div>
            <button type="submit" class="btn btn-primary">Update</button>
        </form>
    </div>
</body>
</html>
