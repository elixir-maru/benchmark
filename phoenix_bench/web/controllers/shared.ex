defmodule PhoenixBench.Shared do
  use PhoenixBench.Web, :controller

  def index(conn, _params) do
    text(conn, "index")
  end

  def show(conn, _params) do
    text(conn, "show")
  end

  def create(conn, _params) do
    text(conn, "create")
  end

  def delete(conn, _params) do
    text(conn, "delete")
  end

end
