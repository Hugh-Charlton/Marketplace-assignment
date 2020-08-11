class ProfilesController < ApplicationController

    before_action :set_profile, only: [:show, :edit, :update, :destroy]
    before_action :set_user, only: [:new, :show, :edit, :update, :destroy]

    def Register
        render("profiles/Register")
    end

    def Login
        render("profiles/Login")
    end

    def index
        @profile = Profile.all
        @user = User.all
        @listing = listing.all
    end

    def new
        @profile = Profile.new
        @listings_user = ListingsUser.find(pramas[:id])
    end

    def create
        @profile = Profile.create(profile_params)
    end

    def show
        @listings_user = ListingsUser.find(pramas[:id])
    end

    def update
    end

    def destroy
    end

    private

    def set_profile
        id = params[:id]
        @profile = Profile.find(id)
    end

    def profile_params
        params.require(:profile).permit(:bio, :user_id)
    end
    
    def set_user
        id = params[:id]
        @user = User.find(id)
    end

end