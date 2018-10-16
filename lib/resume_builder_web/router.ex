defmodule ResumeBuilderWeb.Router do
  use ResumeBuilderWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ResumeBuilderWeb do
    pipe_through :api
  end
end
