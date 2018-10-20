module Api 
    module V1
        class UsersController < ApplicationController

            def index #GET
                @users= User.order('updated_at DESC')
                if @users
                    render json: @users
                else
                    render json: @users.errors , status: :unprocessable_entity
                end
                
            end

            def show#GET/PARAM
            end

            def destroy#DELETE/PARAM
            end

            def update#PUT|PATCH/PARAM
            end

            def create#POST/PARAMS
            end

        end    
    end    

end