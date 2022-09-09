class ActorsController < ApplicationController

  def index
    actors = Actor.all
    render json: actors.as_json
  end

  def show
    actor = Actor.find_by(id: params["id"])
    render json: actor.as_json
  end

  def create
   actor = Actor.new(
    first_name: params["first_name"],
    last_name: params["last_name"],
    known_for: params["known_for"],
    gender: params["gender"],
    age: params["age"]
   )
   if actor.save
   render json: { message: "Actor created successfully!" }
   else 
    render json: { errors: actor.errors.full_messages }, status: :unprocessable_entity
   end
  end

  def update
    actor = Actor.find_by(id: params["id"])

    actor.first_name = params["first_name"] || actor.first_name
    actor.last_name = params["last_name"] || actor.last_name
    actor.known_for = params["known_for"] || actor.known_for
    actor.gender = params["gender"] || actor.gender
    actor.age = params["age"] || actor.age 
    
   if actor.save
    render json: { message: "Actor updated successfully!" }
  else 
   render json: { errors: actor.errors.full_messages }, status: :unprocessable_entity
  end
  end

  def destroy
    actor = Actor.find_by(id: params["id"])

    actor.destroy
    render json: {message: "Actor has been successfully deleted from your database!"}
  end

end
