document.addEventListener('DOMContentLoaded', function(){
  // Toggle hint/solution
  document.querySelectorAll('[data-toggle]').forEach(function(btn){
    btn.addEventListener('click', function(e){
      var target = document.getElementById(btn.dataset.toggle);
      if(!target) return;
      if(target.style.display==='block'){ target.style.display='none'; btn.textContent = btn.dataset.showtext; }
      else { target.style.display='block'; btn.textContent = btn.dataset.hidetext; }
    });
  });

  // Simple client-side validation for numeric inputs
  document.querySelectorAll('form').forEach(function(form){
    form.addEventListener('submit', function(e){
      var inputs = form.querySelectorAll('input[type=text]');
      var ok=true;
      inputs.forEach(function(inp){
        if(inp.dataset.type==='number'){
          if(inp.value.trim()==='' || isNaN(Number(inp.value))){
            ok=false; inp.classList.add('invalid');
          } else { inp.classList.remove('invalid'); }
        }
      });
      if(!ok){ e.preventDefault(); alert('Veuillez saisir des valeurs numériques valides.'); }
    });
  });
});
