class MatchesController < ApplicationController

	def index
		@match = Match.all
	end

	def show
		@match = Match.find(params[:id])
	end

	def edit
		@match = Match.find(params[:id])
	end

	def update
		@match = Match.find(params[:id])
		@match.update_attributes(update_params)
		redirect_to matches_path
	end

	def new
		@match = Match.new
	end

	def create
		@match = Match.new(post_params).save
		redirect_to matches_path
	end

	def delete
		@match = Match.find(params[:id])
	end

	def destroy
		@match = Match.find(params[:id]).destroy
		redirect_to matches_path
	end

private

	def create_params
		params.require(:match).permit(:ip, :password, :comment)
	end

	def update_params
		params.require(:match).permit(:ip, :password, :comment)
	end

end