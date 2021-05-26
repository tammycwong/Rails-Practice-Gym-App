class MembershipsController < ApplicationController

    def new
        @membership = Membership.new
        @gyms = Gym.all
        @clients = Client.all
    end

    def show
        @membership = Membership.find(params[:id])
    end

    def create
        @membership = Membership.new(strong_params)
        if @membership.valid?
            @membership.save
            redirect_to @membership
        else
            flash[:errors] = @membership.errors.full_messages
            redirect_to new_membership_path
        end
    end 

    private
    
    def strong_params
        params.require(:membership).permit(:client_id, :gym_id, :charge)
    end

end
