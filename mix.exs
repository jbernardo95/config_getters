defmodule ConfigGetters.Mixfile do
  use Mix.Project

  def project do
    [
      app: :config_getters,
      version: "0.1.0",

      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,

      deps: deps(),
      package: package(),

      name: "config_getters",
      description: "Simple config value getter generator for Elixir applications",
      source_url: "https://github.com/jbernardo95/config_getters",
      homepage_url: "https://github.com/jbernardo95/config_getters",
      docs: [main: "readme",
             extras: ["README.md", "CHANGELOG.md"]]
    ]
  end

  def application do
    []
  end

  defp deps do
    [{:ex_doc, "~> 0.16", only: :dev, runtime: false}]
  end

  def package do
    [maintainers: ["jbernardo95"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/jbernardo95/config_getters"}]
  end
end
