module ClientsHelper
	def select_uf
    ([["AC","AC"],["AL","AL"],["AM","AM"],["AP","AP"],["BA","BA"],["CE","CE"],["DF","DF"],["ES","ES"],  
    ["GO","GO"],["MA","MA"],["MG","MG"],["MS","MS"],["MT","MT"],["PA","PA"],["PB","PB"],["PE","PE"],["PI","PI"],["PR","PR"],  
    ["RJ","RJ"],["RN","RN"],["RO","RO"],["RR","RR"],["RS","RS"],["SC","SC"],["SE","SE"],["SP","SP"],["TO","TO"]])
  end

	def select_sexo
    ([["MASCULINO","MASCULINO"],["FEMININO","FEMININO"]])
  end

	def select_estado_civil
    ([["SOLTEIRO", 0], ["CASADO",1], ["SEPARADO",2], ["DIVORCIADO",3], ["VIÚVO",4]])
  end
end
