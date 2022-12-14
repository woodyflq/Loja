defmodule PhoenixAppWeb.PageController do
  use PhoenixAppWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def login(conn, _params) do
    render(conn, "login.html")
  end

  def register(conn, _params) do
    render(conn, "register.html")
  end

  def cart(conn, _params) do
    {_status, jsonCart} = JSON.encode(_params) 
    {_status, jsonList} = JSON.decode(jsonCart)
    list = [jsonCart]
    render(conn, "cart.html", prods: _params)
  end
end
