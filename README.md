# Helix Weapons Package

## Overview

The Helix Weapons module is a comprehensive package designed for HELIX Game. It provides a modular approach to weapon creation, allowing developers to dynamically assemble weapons from individual parts (e.g., muzzles, optics, stocks) and configure their properties and behaviors. This module is particularly useful for creating customizable weapons within your HELIX World, enhancing the depth of gameplay and player engagement.

## Features

- **Modular Weapon Construction**: Easily construct weapons by combining various parts, including muzzles, optics, and stocks.
- **Customizable Weapon Attributes**: Set attributes such as ammo settings, damage, recoil, and more to tailor weapons to specific gameplay requirements.
- **Dynamic Part Attachment**: Attach or remove weapon parts on the fly, allowing for real-time customization in-game.
- **Predefined Weapon Templates**: We provide a lot of pre-made weapons such as `ACM` - `Patriot` or `Condor`. From Sniper rifles to SMGS, Pistols and more.

## Installation

To use the Helix Weapons module in your project, follow these steps:

1. Clone this repository or download the source code into your server Packages folder.
2. Make sure to add this package to start on your server Config.toml file.
3. Start the server with helix-weapons as a package on your Config.toml file.
![image](https://github.com/helix-game/helix-weapons/assets/67294331/913b04a0-8774-4884-a6b4-f5ab648d081d)


## Usage

### Creating a New Weapon

To create a new weapon, you can instantiate a weapon object from the `HelixWeapons` class and specify the weapon ID. Here's an example of creating an `ACM` rifle:

```lua
local weapon = helixWeapons["ACM"](Vector(0, 0, 0), Rotator(0.0, 0.0, 0.0))
