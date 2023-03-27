COLORS = ["red", "green", "blue", "purple"]
NAMES = ["beanie", "fedora", "top hat", "cowboy", "beret"]

$hats = [
  {
    inches: 12,
    color: "red",
    name: "HAPPY",
  },

  {
    inches: 5,
    color: "blue",
    name: "fedora",
  },
]

# Service implementation
class HaberdasherHandler
  def make_hat(req, env)
    hat = {
      inches: req.inches,
      color: COLORS.sample,
      name: NAMES.sample,
    }
    $hats << hat
    hat
  end

  def get_all(req, env)
    {
      hats: $hats
    }
  end
end
