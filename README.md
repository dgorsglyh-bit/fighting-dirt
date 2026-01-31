# Jam Game

A Godot 4.5 action-adventure game developed for a game jam. Navigate through a village, help local residents, and face off against formidable bosses in this top-down adventure.

## Features

- **Top-Down Combat**: Face various enemies and bosses using a projectile-based combat system.
- **Narrative Quests**: Help a grandma find her lost cat, Patron, to earn rewards.
- **Dynamic Spawning**: Encounter endless waves of enemies in the main arena.
- **Interactive Environment**: Explore the village and collection "rubbish" to progress.

## Project Structure

The project has been normalized to follow clean, consistent naming conventions:

- `scenes/`: Contains all Godot scenes (`.tscn`).
  - `village.tscn`: The main exploration area.
  - `boss_fight.tscn`: Dedicated arena for boss encounters.
  - `boss.tscn`: The main boss character.
- `scripts/`: All game logic written in GDScript.
  - `global_vars.gd`: Global state (Player HP, EXP, etc.).
  - `main.gd`: Game controller and enemy spawning logic.
- `sprites/`: All visual assets (PNG, JPG, WebP).
  - Organized with descriptive ASCII names for better compatibility.

## Technical Details

- **Engine**: Godot 4.5
- **Renderer**: GL Compatibility (Mobile friendly)
- **Resolution**: Scalable 2D viewport

## Controls

- **Movement**: WASD / Arrow Keys (Depending on implementation)
- **Attack**: Mouse Click / F Key (See `project.godot` input map)

---
*Note: This project was normalized from a legacy structure to ensure cross-platform compatibility and maintainability.*
