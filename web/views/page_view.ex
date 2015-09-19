defmodule HelloPhoenix.PageView do
  use HelloPhoenix.Web, :view

  def example_chart(:column, data), do: example_chart("Column", data)
  def example_chart(:bar, data), do: example_chart("Bar", data)
  def example_chart(:pie, data), do: example_chart("Pie", data)
  def example_chart(:line, data), do: example_chart("Line", data)
  def example_chart(:area, data), do: example_chart("Area", data)
  def example_chart(:scatter, data), do: example_chart("Scatter", data)

  def example_chart(klass, data) do
    data = Poison.encode!(data)
    raw """
      <div id="chart-#{klass}" style="height:300px">Loading..</div>
      <script>
        new Chartkick.#{klass}Chart('chart-#{klass}', #{data});
      </script>
    """
  end
end
