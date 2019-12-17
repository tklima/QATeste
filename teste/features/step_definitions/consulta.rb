require "test/unit/assertions"
include Test::Unit::Assertions


Dado("o endereço da API para consulta do CEP válido") do
    $uri = "https://viacep.com.br/ws/11040111/json/"   
  end
  
  Quando("realizar uma requisição para buscar CEP") do
    $response = HTTParty.get($uri)
  end
  
  Então("a API retornará o endereço referente ao CEP válido") do

   assert_equal("3548500",$response["ibge"], msg = "CEP Inválido")  
   puts  "Codigo IBGE: #{$response["ibge"]}"
 
  end

 
  Dado("o endereço da API para consulta do CEP inválido") do
    $uri = "https://viacep.com.br/ws/55114545/json/"   
  end

  Então("a API retornará o endereço referente ao CEP inválido") do

    assert_not_equal("3548500",$response["ibge"], msg = "CEP Inválido")  
    puts  "Codigo IBGE: #{$response["ibge"]}"
  
   end