# EctoBase64

<!-- MDOC !-->

Custom `Ecto` type to base64 {en,de}code binary data in your database.

## Installation

```elixir
def deps do
  [
    {:ecto_base64, "~> 0.1.0"}
  ]
end
```

## Usage

```elixir
schema "users" do
  field :totp_secret, EctoBase64
end
```
