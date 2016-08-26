defmodule MyElm.PageControllerTest do
  use MyElm.ConnCase

  # test "GET /", %{conn: conn} do
  #   conn = get conn, "/"
  #   assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  # end
  
  test "GET /", %{conn: conn} do
	  conn = get conn, "/"
	  assert html_response(conn, 200) =~ "<div id=\"elm-main\"></div>"
  end
end
