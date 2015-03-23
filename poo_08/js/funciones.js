function limpiar()
{
	document.form.reset(); // Para resetear el formulario
	document.form.nom.focus(); // Para poner el foco en el campo nom
}


function validar()
{
	var form = document.form;
	if(form.nom.value == 0)
	{
		alert('Ingrese su nombre');
		form.nom.value = '';
		form.nom.focus();
		return false;
	}
	if(form.texto.value == 0)
	{
		alert('Ingrese su mensaje');
		form.texto.value = '';
		form.texto.focus();
		return false;
	}

	form.submit();
}

function tr(id, color)
{
	document.getElementById(id).style.backgroundColor=color;
}


