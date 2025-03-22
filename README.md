**GoldenOrb**

In-development total camera and aiming overhaul for Anomaly.

Uses modded exe functionality to add or extend composable features affecting the actor, arms, weapon, and camera.

Examples include detached reticle, fully-detached free aim, enhanced free look, GoldenEye / Perfect Dark style auto aim, variable lean and crouch, physical recoil, customizable camera inertia, true bodycam effects, and inverse kinematic weapon positioning, umong myriad other possibilities.

**Installation**

Add to a vanilla MO2 preset alongside *Parallax Reflex Sights* and *Shader 3D Scopes*, placing *GoldenOrb* at the bottom.

**Known Issues**
- Various weapons need their positions updated for correct scoping behaviour
  - Current good test cases:
    - MP5
    - Mk14 EBR
- 3D Shader Scopes has been modified for better accuracy, but deviation from crosshair will occur relative to view angle until eye-relative weapon orientation is implemented
- ADS zoom is not correctly overridden until the second map load.

**Plan Document**
See [goldenorb.org](goldenorb.org) for planned features and overall progress.
