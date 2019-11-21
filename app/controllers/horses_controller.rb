# frozen_string_literal: true

class HorsesController < ApplicationController
  # GET /horses/:id
  def show
    @horse = Horse.find(params[:id])
	end
	
	def search_results
		@query = params[:query]
		@horses = Horse.where('name LIKE ?', "%#{@query}%")
	end
end
