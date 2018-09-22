defmodule MyChat.Message do
  use Ecto.Schema
  import Ecto.Changeset
  alias MyChat.Message


  schema "messages" do
    field :message, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(message, attrs) do
    message
    |> cast(attrs, [:name, :message])
    |> validate_required([:name, :message])
  end

  @doc false
  def get_messages(limit \\ 20) do
    MyChat.Repo.all(Message, limit: limit)
  end
end
