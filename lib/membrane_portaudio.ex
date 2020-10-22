defmodule Membrane.PortAudio do
  @moduledoc false
  use Application

  def start(_type, _args) do
    children = [__MODULE__.SyncExecutor]

    opts = [strategy: :one_for_one, name: Membrane.PortAudio]
    Supervisor.start_link(children, opts)
  end
end
