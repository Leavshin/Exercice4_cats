<%--
  Created by IntelliJ IDEA.
  User: ceris
  Date: 11/07/2024
  Time: 15:30
  To change this template use File | Settings | File Templates.
--%>
<jsp:useBean id="cats" scope="request" type="java.util.ArrayList<org.example.exercice4.Cat>" />
<html>
<head>
    <title>Formulaire</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
<div class="container mt-5">
    <h1>Liste des chats</h1>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>N¤</th>
            <th>Nom</th>
            <th>Race</th>
            <th>Repas Favoris</th>
            <th>Date de Naissance</th>
        </tr>
        </thead>
        <tbody>
        <% for (int i = 0;i < cats.size();i++) { %>
        <tr>
            <td><%= i+1 %></td>
            <td><%= cats.get(i).getName() %></td>
            <td><%= cats.get(i).getBreed() %></td>
            <td><%= cats.get(i).getMeal() %></td>
            <td><%= cats.get(i).getBirth() %></td>
        </tr>
        <% } %>
        </tbody>
    </table>

    <h2>Ajouter un chat</h2>
    <form action="${pageContext.request.contextPath}/cat/add" method="post">
        <div class="mb-3">
            <label for="name" class="form-label">Nom :</label>
            <input type="text" class="form-control" id="name" name="name" >
        </div>
        <div class="mb-3">
            <label for="breed" class="form-label">Race :</label>
            <input type="text" class="form-control" id="breed" name="breed" >
        </div>
        <div class="mb-3">
            <label for="meal" class="form-label">Repas pref :</label>
            <input type="text" class="form-control" id="meal" name="meal" >
        </div>
        <div class="mb-3">
            <label for="birth" class="form-label">Date de naissance :</label>
            <input type="date" class="form-control" id="birth" name="birth" >
        </div>
        <button type="submit" class="btn btn-primary">Ajouter</button>
    </form>
</div>


</body>
</html>