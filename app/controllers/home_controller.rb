class HomeController < ApplicationController


before_action :carregar_produtos, execept: [:incluir, :salvar]

def index

    # Incluir
	#produto=Produto2.new
    #produto.anuncio="Ativo"
    #produto.sku = 2080868488
    #produto.produto=" Calça Montaria Legging Skinny Com Cinto Malha Pop Social"
    #produto.visitas =2240 
    #produto.vendas=21
    #produto.valor = 78.68
    #produto.quantidade =26 
    #produto.save

    #excluir
    # produto=Produto2.find(3)
    # produto.destroy



 
  end



  def incluir
     produto=Produto2.new
     produto.anuncio = params[:anuncio]
     produto.sku = params[:sku]
     produto.produto = params[:produto]
     produto.visitas = params[:visitas]
     produto.vendas = params[:vendas]
     produto.valor = params[:valor]
     produto.quantidade = params[:quantidade]
     produto.save
     
     redirect_to "/"
  end


  def alterar
    #carrego meu objeto pelo ID
    @produto=Produto2.find(params[:id])
   render :index
  end
  
  def excluir
    #carrego meu objeto pelo ID
   @produto=Produto2.find (params[:id])
   @produto.destroy

   redirect_to "/"
  
  end


   def salvar 
     produto=Produto2.find(params[:id])
     produto.anuncio = params[:anuncio]
     produto.sku = params[:sku]
     produto.produto = params[:produto]
     produto.visitas = params[:visitas]
     produto.vendas = params[:vendas]
     produto.valor = params[:valor]
     produto.quantidade = params[:quantidade]
     produto.save
    
    redirect_to "/"
   end 


   def carregar_produtos
	@produtos=Produto2.all

   end


end
