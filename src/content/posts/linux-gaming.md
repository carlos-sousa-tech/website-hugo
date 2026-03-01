+++
date = '2026-02-09T21:02:15+01:00'
draft = false
title = 'Linux Gaming'
summary = "Collection of tips and tricks on gaming on Linux"
tags = ["gaming", "linux"]
toc = true
+++

## Limiting FPS with VULKAN in Steam

 If you playing on Linux you might have the issue where you don't want to use VSync - mainly when running a weird special setup with multiple monitors, with rotations and different refresh rates - but at the same time you don't want your PC to be running that card game at 900 FPS and using Energy / putting Heat out like there is no tomorrow.

If the game is running on VULKAN - or via the Proton compatibilty layer - you can limit the FPS by: 

- In Steam, find the game you want

- Right Click > Properties

- Under the command to start the game, write:

`DXVK_FRAME_RATE=90 %command%`

Where `90` is the FPS you want the limit set to.

## Limiting FPS with MangoHUD in Steam

If you playing on Linux you might have the issue where you don't want to use VSync - mainly when running a weird special setup with multiple monitors, with rotations and different refresh rates - but at the same time you don't want your PC to be running that card game at 900 FPS and using Energy / putting Heat out like there is no tomorrow. 

If you can't use VULKAN / Proton Compatibility Layer, you can use MangoHUD.

- Install mangohud

`sudo dnf install mangohud`

- On Steam, find the game you want, Right Click > Properties, and under the command to start the game write

`MANGOHUD_CONFIG=nodisplay,fps_limit=90 mangohud %command`

Where `90` is the FPS you want the limit set to.
