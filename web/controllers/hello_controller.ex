defmodule HelloPhoenix.HelloController do
  use HelloPhoenix.Web, :controller

  # conn是一个struct，包含一个request里的很多信息
  # 因为不需要 params，所以加一个_前缀，让编译器忽略这个warning
  def index(conn, _params) do
    # 去 web/templates/hello 里去找这个文件
    render conn, "index.html"
  end

  def show(conn, %{"message" => message}) do
    render conn, "show.html", message: message
  end
end

