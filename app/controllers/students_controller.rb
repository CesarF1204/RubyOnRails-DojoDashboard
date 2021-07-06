class StudentsController < ApplicationController
    def create
        @dojo = Dojo.find(params[:id])
        @dojos = Dojo.where.not(id: params[:id])
        render 'create'
    end
    def create_process
        Student.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], dojo_id: params[:dojo_id])
        redirect_to('/dojos/' + params[:dojo_id])
    end
    def show
        @dojo = Dojo.find(params[:id])
        @student = Student.find(params[:stud_id])
        @cohorts = Student.where(dojo_id: params[:id]).where.not(id: params[:stud_id])
    end
    def edit
        @dojo = Dojo.find(params[:id])
        @dojos = Dojo.where.not(id: params[:id])
        @student = Student.find(params[:stud_id])
        render 'edit'
    end
    def update
        student = Student.find(params[:stud_id])
        student.update(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], dojo_id: params[:dojo_id])
        redirect_to('/dojos/' + params[:dojo_id])
    end
    def destroy
        student = Student.find(params[:stud_id])
        student.destroy
        redirect_to('/dojos/' + params[:id])
    end
end
