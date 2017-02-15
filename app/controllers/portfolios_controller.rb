class PortfoliosController < ApplicationController
	before_action :set_portfolio_item, only: [:edit, :update, :show, :destroy]

	def index
		@portfolio_items = Portfolio.all
	end

	def new
		@portfolio_item = Portfolio.new
	end

	def create
		@portfolio_item = Portfolio.new(portfolio_params)
		if @portfolio_item.save
			redirect_to portfolios_path, notice: 'Se creo correctamente'
		else
			render :new
		end
	end

	def edit
	end

	def show
	end

	def update
		if @portfolio_item.update(portfolio_params)
			redirect_to portfolios_path, notice: 'Se actualizo correctamente'
		else
			render :edit
		end
	end

	def destroy
		@portfolio_item.destroy
		redirect_to portfolios_path, notice: 'Se elimino correctamente'
	end

	private

	def set_portfolio_item
		@portfolio_item = Portfolio.find(params[:id])
	end

	def portfolio_params
		params.require(:portfolio).permit(:title, :subtitle, :body)
	end

end
