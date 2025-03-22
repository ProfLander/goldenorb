**GoldenOrb**

In-development total camera and aiming overhaul for Anomaly.

Uses modded exe functionality to add or extend composable features affecting the actor, arms, weapon, and camera.

Examples include:
- Detached reticle
- Fully-detached free aim
- Enhanced free look
- GoldenEye / Perfect Dark style auto aim
- Variable lean and crouch
- Physical recoil
- Customizable camera inertia
- True bodycam effects
- Inverse kinematic weapon positioning
- And myriad other possibilities

**Installation**

- Add to a vanilla MO2 preset alongside *Parallax Reflex Sights* and *Shader 3D Scopes*, placing *GoldenOrb* at the bottom.
- Clear shader cache
- Once in-game, open the console and execute `g_firepos 1` and `g_firepos_zoom 1` to enable muzzle-based hitscan trajectory
  - If either command fails, your modded exes are out of date
- To enable debug visualization, set `DRAW` to true in one of the `robodolg_*.script` modules
- To switch between modules, modify the commented lines in `goldenorb_modifiers.script`. The three of primary interest are `offset_aim`, `free_aim`, and `body_cam`

**Known Issues**
- Various weapons need their positions updated for correct scoping behaviour
  - Current good test cases:
    - MP5
    - Mk14 EBR
- 3D Shader Scopes has been modified for better accuracy, but deviation from crosshair will occur relative to view angle until eye-relative weapon orientation is implemented
- ADS zoom is not correctly overridden until the second map load.

**Plan Document**
See [goldenorb.org](goldenorb.org) for overall progress and planned features.
