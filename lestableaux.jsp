<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="utf-8">
  <title>Les tableaux</title>
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <link rel="stylesheet" href="assets/css/exercises.css">
  <script src="assets/js/exercises.js" defer></script>
</head>
<body>
  <div class="container">
    <div class="card">
      <header class="page"><h1>Exercices sur les tableaux</h1></header>

      <form action="#" method="post" class="form-row">
        <input type="text" name="chaine" placeholder="Saisir des nombres séparés par des espaces (ex: 6 78 15)">
        <input type="submit" value="Analyser" class="btn">
      </form>

      <% String chaine = request.getParameter("chaine"); %>
      <% if (chaine != null) { %>
        <% String[] tableauDeChiffres = chaine.split("\\s+"); %>
        <div class="result">Le tableau contient <%= tableauDeChiffres.length %> valeurs</div>
        <div class="result">Chiffre 1 : <%= Integer.parseInt(tableauDeChiffres[0]) %></div>
        <div class="result">Chiffre 2 : <%= Integer.parseInt(tableauDeChiffres[1]) %></div>
        <div class="result">Chiffre 3 : <%= Integer.parseInt(tableauDeChiffres[2]) %></div>
      <% } %>

      <h2>Exercices proposés</h2>
      <ul>
        <li>Carré de la première valeur</li>
        <li>Somme des deux premières valeurs</li>
        <li>Somme de toutes les valeurs</li>
        <li>Valeur maximale et minimale</li>
        <li>Valeur la plus proche de 0</li>
      </ul>

      <div class="controls">
        <button type="button" class="btn secondary" data-toggle="hint-tab" data-showtext="Afficher l'indice" data-hidetext="Masquer l'indice">Afficher l'indice</button>
        <button type="button" class="btn secondary" data-toggle="sol-tab" data-showtext="Afficher la solution" data-hidetext="Masquer la solution">Afficher la solution</button>
      </div>
      <div id="hint-tab" class="hint">Indice : utilisez split() pour découper la chaîne, puis parcourez le tableau pour calculer sommes et extremums.</div>
      <div id="sol-tab" class="solution">Exemple (somme) : int s=0; for(String v:tableau){ s+=Integer.parseInt(v); }</div>

      <p style="margin-top:16px"><a href="index.html">← Retour au sommaire</a></p>
    </div>
  </div>
</body>
</html>
