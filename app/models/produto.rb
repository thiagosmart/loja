class Produto
	def initialize(attrs)
		if attrs.present?
			self.id=attrs["id"]
			self.nome=attrs["nome"]
		end
	end
			

attr_accessor :id, :nome

def self.buscar
	produtos=ActiveRecord::Base.connection.exec_query("SELECT * FROM produtos1")
    return produtos.map { |p| Produto.new(p) }
end

end