class ListingsController < ApplicationController
    # applies :set_ling's definintion to show, edit, update and destroy.  Prevents repetition
    before_action :set_listing, only: [:show, :edit, :update, :destroy]

    def index
        # shows all listings
        @listing = Listing.all
    end

    def new
        # creates a new listing via a form
        @listing = Listing.new
        # needed to tie listing to logged users when posting a new listing
        # user_id = params[:user.id]
    end

    def show
        # shows an individual listings
    end

    def create
        # sends the information from the enew listing form to the database. listing_params points to whitelisted data from matching method
        @listing = Listing.create(listing_params)
        # error display with submission and redirection with successful submission
        if @listing.errors.any?
            render "new"
        else
            redirect_to listings_path
        end
        # byebug
        # render plain: create is working
    end

    def edit
    end

    # after receiving the updated information from an edit form overrides it in the database entry for the corresponding id from set_listing
    def update
        @listing.update(title: params[:title], description: params[:description], cost: params[:cost])
        redirect_to listings_path
        # need to validate that all requirements are met before edit can be updated
        if @listing.errors.any?
            render "edit"
        else
            redirect_to listings_path
        end
    end

    # removes the target databse entry from the database
    def destroy
        @listing.destroy
        redirect_to listings_path
    end

    # restricts to this controller only
    private

    # changes the target listing in the listings table to load information when @listings is call by sitee pages using the unique id
    def set_listing
        id = params[:id]
        @listing = Listing.find(id)
    end

    def listing_params
        # whitelist data submitted via form, to determine what is allowed in the database.
        params.require(:listing).permit(:title, :description, :cost)
    end

end
