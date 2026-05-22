<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="utf-8">
  <title>Les chaînes</title>
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <link rel="stylesheet" href="assets/css/exercises.css">
  <script src="assets/js/exercises.js" defer></script>
</head>
<body>
  <div class="container">
    <div class="card">
      <header class="page"><h1>Exercices sur les chaînes</h1></header>

      <form action="#" method="post" class="form-row">
        <input type="text" name="chaine" placeholder="Saisir une chaîne (min 6 caractères)">
        <input type="submit" value="Analyser" class="btn">
      </form>

      <% String chaine = request.getParameter("chaine"); %>
      <% if (chaine != null) { %>
        <% int longueurChaine = chaine.length(); %>
        <div class="result">La longueur de votre chaîne est de <%= longueurChaine %> caractères</div>
        <% char caractereExtrait = chaine.charAt(2); %>
        <div class="result">Le 3° caractère de votre chaine est la lettre <%= caractereExtrait %></div>
        <% String sousChaine = chaine.substring(2, Math.min(6, chaine.length())); %>
        <div class="result">Une sous chaîne de votre texte : <%= sousChaine %></div>
        <% int position = chaine.indexOf('e'); %>
        <div class="result">Votre premier "e" est en : <%= position %></div>
      <% } %>

      <h2>Exercices proposés</h2>
      <ul>
        <li>Compter les 'e'</li>
        <li>Afficher verticalement</li>
        <li>Afficher une lettre sur deux</li>
        <li>Verlan</li>
        <li>Compter consonnes et voyelles</li>
      </ul>

      <div class="controls">
        <button type="button" class="btn secondary" data-toggle="hint-chain" data-showtext="Afficher l'indice" data-hidetext="Masquer l'indice">Afficher l'indice</button>
        <button type="button" class="btn secondary" data-toggle="sol-chain" data-showtext="Afficher la solution" data-hidetext="Masquer la solution">Afficher la solution</button>
      </div>
      <div id="hint-chain" class="hint">Indice : parcourez la chaîne caractère par caractère avec une boucle for.</div>
      <div id="sol-chain" class="solution">Exemple : boucle for(int i=0;i&lt;chaine.length();i++){ out.println(chaine.charAt(i)); }</div>

      <p style="margin-top:16px"><a href="index.html">← Retour au sommaire</a></p>
    </div>
  </div>
</body>
</html>
