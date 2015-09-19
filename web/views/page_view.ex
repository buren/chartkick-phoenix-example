defmodule HelloPhoenix.PageView do
  use HelloPhoenix.Web, :view

  def chart(:column, data), do: chart("Column", data)
  def chart(:bar, data), do: chart("Bar", data)
  def chart(:pie, data), do: chart("Pie", data)
  def chart(:line, data), do: chart("Line", data)
  def chart(:area, data), do: chart("Area", data)
  def chart(:scatter, data), do: chart("Scatter", data)
  def chart(klass, data) do
    data = Poison.encode!(data)
    raw """
      <div id="chart-#{klass}" style="height:300px">Loading..</div>
      <script>
        new Chartkick.#{klass}Chart('chart-#{klass}', #{data});
      </script>
    """
  end
end
