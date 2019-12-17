# language: pt

Funcionalidade: Consultar os dados de um endereço

Cenário: Consultar os dados de um endereço a partir de um CEP válido

Dado o endereço da API para consulta do CEP válido
Quando realizar uma requisição para buscar CEP 
Então a API retornará o endereço referente ao CEP válido

Cenário: Consultar os dados de um endereço a partir de um CEP inválido

Dado o endereço da API para consulta do CEP inválido
Quando realizar uma requisição para buscar CEP 
Então a API retornará o endereço referente ao CEP inválido