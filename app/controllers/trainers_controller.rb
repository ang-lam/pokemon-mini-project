class TrainersController < ApplicationController
    def index
        #show all trainers and link to their profile
        @trainers = Trainer.all
    end

    def show
        #show trainer profile
        @trainer = Trainer.find_by(id: params[:id])
    end

end
