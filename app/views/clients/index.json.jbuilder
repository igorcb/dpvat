json.array!(@clients) do |client|
  json.extract! client, :id, :nome, :endereco, :numero, :complemento, :bairro, :cidade, :estado, :cep, :sexo, :estado_civil, :data_nascimento, :cpf, :rg
  json.url client_url(client, format: :json)
end
