<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="utf-8">
  <title>Les conditions</title>
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <link rel="stylesheet" href="assets/css/exercises.css">
  <script src="assets/js/exercises.js" defer></script>
</head>
<body>
  <div class="container">
    <div class="card">
      <header class="page"><h1>Exercices sur les conditions</h1></header>

      <form action="#" method="post" class="form-row">
        <input type="text" name="valeur1" placeholder="Valeur 1" data-type="number">
        <input type="text" name="valeur2" placeholder="Valeur 2" data-type="number">
        <input type="submit" value="Comparer" class="btn">
      </form>

      <%-- Récupération des valeurs --%>
      <% String valeur1 = request.getParameter("valeur1"); %>
      <% String valeur2 = request.getParameter("valeur2"); %>

      <% if (valeur1 != null && valeur2 != null) { %>
        <% int intValeur1 = Integer.parseInt(valeur1); %>
        <% int intValeur2 = Integer.parseInt(valeur2); %>
        <% if (intValeur1 > intValeur2) { %>
            <div class="result">Valeur 1 est supérieure à Valeur 2.</div>
        <% } else if (intValeur1 < intValeur2) { %>
            <div class="result">Valeur 1 est inférieure à Valeur 2.</div>
        <% } else { %>
            <div class="result">Valeur 1 est égale à Valeur 2.</div>
        <% } %>
      <% } %>

      <h2>Exercices proposés</h2>
      <ul>
        <li>Comparaison sur 3 valeurs (vérifier si C est entre A et B)</li>
        <li>Pair ou Impair</li>
      </ul>

      <div class="controls">
        <button type="button" class="btn secondary" data-toggle="hint-cond" data-showtext="Afficher l'indice" data-hidetext="Masquer l'indice">Afficher l'indice</button>
        <button type="button" class="btn secondary" data-toggle="sol-cond" data-showtext="Afficher la solution" data-hidetext="Masquer la solution">Afficher la solution</button>
      </div>
      <div id="hint-cond" class="hint">Indice : utilisez des if/else et testez des cas limites (égalité, bornes).</div>
      <div id="sol-cond" class="solution">Exemple (pair/impair): if(n%2==0) out.println("Pair"); else out.println("Impair");</div>

      <p style="margin-top:16px"><a href="index.html">← Retour au sommaire</a></p>
    </div>
  </div>
</body>
</html>
