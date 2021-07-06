class DojosController < ApplicationController
    def index
        @dojos = Dojo.all
    end
    def create
        render 'create'
    end
    def create_process
        Dojo.create(branch: params[:branch], street: params[:street], city: params[:city], state: params[:state])
        redirect_to('/')
    end
end
