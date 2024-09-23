defmodule EctoBase64 do
  @external_resource "README.md"
  @moduledoc "README.md"
             |> File.read!()
             |> String.split("<!-- MDOC !-->")
             |> Enum.fetch!(1)

  use Ecto.Type

  def type, do: :string

  def cast(data) when is_binary(data) do
    {:ok, data}
  end

  def cast(_), do: :error

  def load(data) when is_binary(data) do
    Base.decode64(data)
  end

  def load(_), do: :error

  def dump(data) when is_binary(data) do
    {:ok, Base.encode64(data)}
  end

  def dump(_), do: :error
end
