defmodule ResumeBuilderWeb.Router do
  use ResumeBuilderWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ResumeBuilderWeb do
    pipe_through :api
    resources "/users", UserController, except: [:new, :edit]
  end

  def swagger_info do
    %{
      info: %{
        version: "1.0",
        title: "My App"
      }
    }
  end

  scope "/api/swagger" do
      forward "/", PhoenixSwagger.Plug.SwaggerUI, otp_app: :resume_builder, swagger_file: "swagger.json"
  end

end
