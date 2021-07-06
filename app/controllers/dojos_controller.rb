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
    def show
        @dojo = Dojo.find(params[:id])
    end
    def edit
        @dojo = Dojo.find(params[:id])
        render 'edit'
    end
    def update
        dojo = Dojo.find(params[:id])
        dojo.update(branch: params[:branch], street: params[:street], city: params[:city], state: params[:state])
        redirect_to('/')
    end
    def destroy
        dojo = Dojo.find(params[:id])
        dojo.destroy
        redirect_to('/')
    end
end
