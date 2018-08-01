<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Busca de CEP Ajax e WebService</title>

	<!-- Compiled and minified CSS -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css">
	<!--Let browser know website is optimized for mobile-->
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>	
	<meta name="description" content="Uma simples consulta utilizando JS + jQuery no WebService da ViaCep para preencher o endereço utilizando o CEP com CSS Materialize">
	<meta name="keywords" content="HTML,JS,jQuery,Materialize,Css,Vanilla,CEP, WebService,Estudo Js,Endereço Automatico">
	<meta name="author" content="Gabriel Darezzo">
	
	<style type="text/css">
	
		.collection .collection-item{
			line-height: 1.0rem;
		}
	
	</style>
</head>
<body>


<div class="container">
	<form action="#" onsubmit="return false" class="col s12">
		<div class="row">
			<h5>Busca de CEP</h5>
		</div>
		<div class="row">
			<div class="input-field col s6">
				<input type="tel" placeholder="Informe o Cep" id="cep" name="cep" autofocus>
				<label for="cep" class="active">Cep</label>
			</div>
			<div class="input-field col s6">
				<input type="text" placeholder="UF" name="uf" id="uf">
				<label for="uf" class="active">UF</label>
			</div>
		</div>		
		<div class="row">
			<div class="input-field col s6">
				<input type="text" placeholder="Informe a cidade" id="cidade" name="cidade" >
				<label for="cidade" class="active">Cidade</label>
			</div>
			<div class="input-field col s6">
				<input type="text" placeholder="Informe o Bairro" name="bairro" id="bairro">
				<label for="bairro" class="active">Bairro</label>
			</div>
		</div>
		<div class="row">
			<div class="input-field col s8">
				<input type="text" placeholder="Informe o seu Endereço Ex:(Rua da Consolação)" name="endereco" id="endereco">
				<label for="endereco" class="active">Endereço</label>
			</div>
			
			<div class="input-field col s4">
				<input type="text" placeholder="Informe o número do endereço" name="nr_end" id="nr_end">
				<label for="nr_end" class="active">Número</label>
			</div>
		</div>
		
		
			
		<div class="row">
			<div class="input-field col s12">
				
				<ul class="collection with-header">
					<li class="collection-header"><h5>Tecnologias:</h5></li>
					<li class="collection-item">JS</li>
					<li class="collection-item">HTML</li>					
					<li class="collection-item">Ajax</li>
					<li class="collection-item">Consumo de WebService</li>
					<li class="collection-item">jQuery</li>
					<li class="collection-item">jQuery MaskedInput plugin com metodo .complete()</li>
					
					<li class="collection-item">CSS With Materialize</li>
				
				</ul>
				
				<p>Este tutorial é um bonus do 
				'<a href="https://github.com/gabrieldarezzo/desafiosInternos/tree/master/ajax">Guia definitivo AJAX</a>'
			</div>
		</div>
		
		
	
		
		
	</form>
</div>

<script src="http://code.jquery.com/jquery-3.0.0.min.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.maskedinput/1.4.1/jquery.maskedinput.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function() {
	
	$("#cep").mask("99999-999",{completed:function(){
		var cep = $(this).val().replace(/[^0-9]/, "");
		
		// Validação do CEP; caso o CEP não possua 8 números, então cancela
		// a consulta
		if(cep.length != 8){
			return false;
		}
		
		// A url de pesquisa consiste no endereço do webservice + o cep que
		// o usuário informou + o tipo de retorno desejado (entre "json",
		// "jsonp", "xml", "piped" ou "querty")
		var url = "http://viacep.com.br/ws/"+cep+"/json/";
		
		$.getJSON(url, function(dadosRetorno){
			try{
				// Preenche os campos de acordo com o retorno da pesquisa
				$("#endereco").val(dadosRetorno.logradouro);
				$("#bairro").val(dadosRetorno.bairro);
				$("#cidade").val(dadosRetorno.localidade);
				$("#uf").val(dadosRetorno.uf);
				$("#nr_end").focus();
			}catch(ex){}
		});
	}});
	
});
</script>
</body>
</html>
