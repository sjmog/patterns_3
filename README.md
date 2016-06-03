# Composition over Inheritance

> "Prefer Composition to Inheritance"
> – Russ Olsen

A workshop that introduces composition, inheritance, and the benefits of one over the other.

### Starter (20 minutes)

- Demonstrate Inheritance using a `Parent` and `Child` class that implement the same method `speak`.
- Demonstrate the shortcomings of Inheritance by violating Liskov and introducing a `misbehave` method to `Child`
- Demonstrate the shortcomings of Inheritance by subclassing `Animal` from `Child` "because we want an `Animal` to speak"
- Demonstrate moving the `speak` method to a module `CanSpeak` and mixing it in to the class by composition.
- Check terminology: Inheritance, Composition, Mixin, Behaviour, Shared Behaviour.

### Main (40 minutes)

- Ask students to come to the board and write down:

| Superhero | Title |
|-----------|------|
| Superman  | Flight |

- Pick a couple. Build a basic `Superhero` class that implements the following:

```ruby
superman = Superhero.new("Superman", "flying")
superman.use_power # => "Superman is now flying!"
```

- **Ask students to implement a `Villain` class that responds to `use_power` with (e.g. `"Galactus is now eating planets, villainously!"`)**
- _Extension_: students should implement some way of having superheroes fight villains. There may be more shared behaviour to extract.

### Plenary (30 minutes)

- Share a few students' code, critique it, and then share the example code from this repository (encouraging critique).
- Common issues: 'over-modularising', mixing in state rather than behaviour, using metaprogramming, not using `super`
- Discussion topics: clean design, modules vs. classes for refactoring, `super` and the inheritance chain.
 