defmodule HelloPhoenix.HelloController do
  use HelloPhoenix.Web, :controller

  # conn是一个struct，包含一个request里的很多信息
  # 因为不需要 params，所以加一个_前缀，让编译器忽略这个warning
  def index(conn, _params) do
    # 去 web/templates/hello 里去找这个文件
    render conn, "index.html"
  end

  # 在URL里的message这个参数，会通过Map的形式传到这个action里
  # 这里map的key值类型是一个String
  def show(conn, %{"name" => messenger}) do
    # 第三个参数是通过 K-V 对，把这个参数传给 view 层
    render conn, "show.html", name: messenger
  end
end

