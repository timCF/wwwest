defmodule Wwwest.Mixfile do
  use Mix.Project

  def project do
    [app: :wwwest,
     version: "0.0.1",
     elixir: "~> 1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications:  [
                      :logger,
                      :silverb,
                      :cowboy,
                      :logex,
                      :jazz
                    ],
     mod: {Wwwest, []}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:silverb, github: "timCF/silverb"},
      {:cowboy, github: "ninenines/cowboy"},
      {:logex, github: "timCF/logex"},
      {:jazz, github: "meh/jazz"}
    ]
  end
end