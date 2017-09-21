class Users::RegistrationsController < Devise::RegistrationsController


  #POST /resource
  def create
    build_resource(sign_up_params)

    if resource.save
      render json: resource, serializer:UserSerializer
    else
      render json: resource.errors, status: :unprocessable_entity
    end
  end

end
