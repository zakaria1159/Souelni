class QuestionsController < ApplicationController
    before_action :set_question, only: [:show, :edit, :update, :destroy]
    def new
        @question = Question.new 
    end
    
    def create
        @question = Question.new(question_params)
        
        if @question.save
            flash[:success] = "Question Envoyée"
            redirect_to root_path
        else
            flash[:danger] = "La Question n'as pas été envoyée, veuillez remplir tous les champs"
            redirect_to new_question_path 
        end
    end
    def show
        
    end
    
    def index
        @questions = Question.all
    end
    
    
    
    
    private
        def question_params
            params.require(:question).permit(:titre,:categorie,:question)
        end
        

        def set_question
            @question = Question.find(params[:id])
        end
end
