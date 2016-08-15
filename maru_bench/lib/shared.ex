defmodule Shared.Level0 do
  use Maru.Router

  get ":id" do
    text(conn, "show")
  end

  get do
    text(conn, "index")
  end

  post do
    text(conn, "create")
  end

  delete ":id" do
    text(conn, "delete")
  end

end


defmodule Shared.Level1 do
  use Maru.Router

  resource "a" do
    mount Shared.Level0
  end

  resource "a/b" do
    mount Shared.Level0
  end

  resource "a/b/c" do
    mount Shared.Level0
  end

  resource "a/b/c/d" do
    mount Shared.Level0
  end

  resource "a/b/c/d/e" do
    mount Shared.Level0
  end

end

defmodule Shared do
  use Maru.Router

  resource "a" do
    mount Shared.Level1
  end

  resource "a/b" do
    mount Shared.Level1
  end

  resource "a/b/c" do
    mount Shared.Level1
  end

  resource "a/b/c/d" do
    mount Shared.Level1
  end

  resource "a/b/c/d/ee" do
    mount Shared.Level1
  end

end
