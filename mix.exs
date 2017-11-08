defmodule Membrane.Element.PortAudio.Mixfile do
  use Mix.Project

  def project do
    [app: :membrane_element_portaudio,
     compilers: ~w(bundlex.lib) ++ Mix.compilers,
     version: "0.0.1",
     elixir: "~> 1.3",
     elixirc_paths: elixirc_paths(Mix.env),
     description: "Membrane Multimedia Framework (PortAudio Element)",
     maintainers: ["Marcin Lewandowski"],
     licenses: ["LGPL"],
     name: "Membrane Element: PortAudio",
     source_url: "https://github.com/membraneframework/membrane-element-portaudio",
     preferred_cli_env: [espec: :test],
     deps: deps()]
  end


  def application do
    [applications: [
    ], mod: {Membrane.Element.PortAudio, []}]
  end


  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_),     do: ["lib",]


  defp deps do
    [
      {:membrane_core, git: "git@github.com:membraneframework/membrane-core.git", branch: "v0.1"},
      {:membrane_common_c, git: "git@github.com:membraneframework/membrane-common-c.git"},
      {:membrane_caps_audio_raw, git: "git@github.com:membraneframework/membrane-caps-audio-raw.git"},
      {:bundlex, git: "git@github.com:radiokit/bundlex.git"},
    ]
  end
end
