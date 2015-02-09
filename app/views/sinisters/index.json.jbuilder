json.array!(@sinisters) do |sinister|
  json.extract! sinister, :id, :client_id, :data, :date, :sinistro, :data_acidente, :seguradora, :valor, :comissao_percentual, :comissao, :data_recebimento, :valor_recebido, :status
  json.url sinister_url(sinister, format: :json)
end
