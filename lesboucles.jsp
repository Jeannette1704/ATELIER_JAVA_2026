<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="utf-8">
  <title>Boucles</title>
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <link rel="stylesheet" href="assets/css/exercises.css">
  <script src="assets/js/exercises.js" defer></script>
</head>
<body>
  <div class="container">
    <div class="card">
      <header class="page"><h1>Exercices sur les boucles</h1></header>

      <form action="#" method="post" class="form-row">
        <input type="text" id="inputValeur" name="valeur" data-type="number" placeholder="Saisir le nombre d'étoiles">
        <input type="submit" value="Afficher" class="btn">
      </form>

      <%-- Récupération de la valeur saisie par l'utilisateur --%>
      <% String valeur = request.getParameter("valeur"); %>
          
      <%-- Vérification de l'existence de la valeur --%>
      <% if (valeur != null && !valeur.isEmpty()) { %>

      <%-- Boucle for pour afficher une ligne d'étoiles --%>
          <%int cpt = Integer.parseInt(valeur); %>
          <div class="result">
          <% for (int i = 1; i <= cpt; i++) { %>
             <%= "*" %>
          <% } %>
          </div>

      <% } %>

      <h2>Exercices proposés</h2>
      <ol>
        <li>Le carré d'étoiles</li>
        <li>Triangle rectangle (gauche)</li>
        <li>Triangle rectangle inversé</li>
        <li>Triangle rectangle (droite)</li>
        <li>Triangle isocèle</li>
        <li>Demi losange</li>
        <li>Table de multiplication</li>
      </ol>

      <div class="controls">
        <button type="button" class="btn secondary" data-toggle="hint-boucles" data-showtext="Afficher l'indice" data-hidetext="Masquer l'indice">Afficher l'indice</button>
        <button type="button" class="btn secondary" data-toggle="sol-boucles" data-showtext="Afficher la solution" data-hidetext="Masquer la solution">Afficher la solution</button>
      </div>

      <div id="hint-boucles" class="hint">
        Indice : pour les formes, pensez aux boucles imbriquées (une pour les lignes, une pour les colonnes). Commencez par afficher une seule ligne puis répétez.
      </div>
      <div id="sol-boucles" class="solution">
        Exemple (carré n x n) :
        <pre>
for(int i=0;i<n;i++){
  for(int j=0;j<n;j++){
    out.print("*");
  }
  out.println();
}
        </pre>
      </div>

      <p style="margin-top:16px"><a href="index.html">← Retour au sommaire</a></p>

    </div>
  </div>
</body>
</html>
