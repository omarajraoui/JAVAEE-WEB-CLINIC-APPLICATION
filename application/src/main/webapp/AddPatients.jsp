<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="assets/css/contact.css">
    <link rel="stylesheet" href="assets/css/styles.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
  <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
  <title>Ajouter Patient</title>
</head>
<body>

  
  <jsp:include page="header.jsp" /> 


  <div class="contain">

    <div class="wrapper">
  
      <div class="form">
        <h4>Database Des Patients</h4>
        <h2 class="form-headline">Ajouter un patient</h2>
        <form id="submit-form" action="AddPatients" method="post">
          <p>
            <input id="lastName" name="lastName" class="form-input" type="text" placeholder="Nom Patient">
            <small class="name-error"></small>
          </p>
          
          <p>
            <input id="firstName" name="firstName" class="form-input" type="text" placeholder="Prenom Patient">
            <small class="name-error"></small>
          </p>
          <p class="full-width">
            <input id="docName" name="docName" class="form-input" type="text" placeholder="Nom Docteur" required>
            <small></small>
          </p>
          <p class="full-width">
            <input id="speciality" name="speciality" class="form-input" type="text" placeholder="Specialité" required>
            <small></small>
          </p>
          <p class="full-width">
            <textarea  minlength="20" id="rapport" name="rapport"cols="30" rows="7" placeholder="Rapport Medecin (Resumé de visite)" required></textarea>
            <small></small>
          </p>
          <p class="full-width">
            <input type="submit" class="submit-btn" value="Submit" onclick="checkValidations()">
            <button class="reset-btn" onclick="reset()">Reset</button>
          </p>
        </form>
      </div>
  
      <div class="contacts contact-wrapper">
  
        <ul>
          <li>Le staff technique est valable 24h 6/7 pour vos questions,réclamations <span class="highlight-text-grey">Problèmes rencontrés</span></li>
          <span class="hightlight-contact-info">
            <li class="email-info"><i class="fa fa-envelope" aria-hidden="true"></i> CONTACT@MONDOC.COM </li>
            <li><i class="fa fa-phone" aria-hidden="true"></i> <span class="highlight-text">+212 612215103</span></li>
          </span>
        </ul>
      </div>
    </div>
  </div>

<jsp:include page="footer.jsp" />  
  

  <script src="/javascript/book.js"></script>


  
</body>
</html>