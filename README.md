# Chartkick Phoenix example

Example Phoenix app using [chartkick-ex](https://github.com/buren/chartkick-ex).

All examples are located in `web/templates/page/index.html.eex`.

To run the app locally clone the repo and:

  1. Install `mix deps.get`
  2. Start `mix phoenix.server`
  3. Open [`localhost:4000`](http://localhost:4000)

Project dependencies:
```elixir
[{:poison, "~> 1.5"},
{:chartkick, "~>0.0.2"}]
```
