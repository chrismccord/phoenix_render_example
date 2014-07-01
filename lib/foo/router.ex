defmodule Foo.Router do
  use Phoenix.Router

  plug Plug.Static, at: "/static", from: :foo
  get "/", Foo.Controllers.Pages, :index, as: :page
  get "/:title", Foo.Controllers.Pages, :index
end
