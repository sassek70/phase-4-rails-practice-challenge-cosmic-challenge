class ScientistsController < ApplicationController


    def index
        scientists = Scientist.all
        render json: scientists
    end

    def show
        scientist = Scientist.find(params[:id])
        render json: scientist, serializer: ScientistMissionsSerializer
    end

    def create
        new_scientist = Scientist.create!(scientist_params)
        render json: new_scientist, status: :created
    end

    def update
        scientist = Scientist.find(params[:id])
        scientist.update!(scientist_params)
        render json: scientist, status: :accepted
    end

    def destroy
        scientist = Scientist.find(params[:id])
        scientist.destroy
        render json: {}, status: :ok
    end
        


private

def scientist_params
    params.permit(:name, :field_of_study, :avatar)
end


end
