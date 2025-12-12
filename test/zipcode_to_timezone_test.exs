defmodule ZipcodeToTimezoneTest do
  use ExUnit.Case
  doctest ZipcodeToTimezone

  test "the truth" do
    assert 1 + 1 == 2

    [
      # "92103"
    ]
    |> Enum.each(fn zip ->
      assert ZipcodeToTimezone.get(zip), "Missing timezone: #{zip}"
    end)
  end
end
