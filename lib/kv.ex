defmodule KV do
  def create_zoo do
    ["lion", "tiger", "gorilla", "elephant", "monkey", "giraffe"]
  end

  def randomize(zoo) do
    Enum.shuffle(zoo)
  end

  def contains?(zoo, animal) do
    Enum.member?(zoo, animal)
  end

  def see_animals(zoo, count) do
    {_seen, to_see} = Enum.split(zoo, -count)
    to_see
  end

  def save(zoo, filename) do
    binary = :erlang.term_to_binary(zoo)
    File.write(filename, binary)
  end

  def load(filename) do
    case File.read(filename) do
      {:ok, binary} -> :erlang.binary_to_term(binary)
      {:error, _reason} -> "File does not exist"
    end
  end

  def selection(number_of_animals) do
    KV.create_zoo()
    |> KV.randomize
    |> KV.see_animals(number_of_animals)
  end
end
