+++
date = '2026-02-09T21:02:15+01:00'
draft = false
title = 'How to Check Phase, Neutral and Ground of AC Wiring'
summary = "A quick reference on finding which wire is the Phase, Neutral and Ground on AC Wiring (eg: your home)"
tags = ["electrical", "home", "troubleshoot"]
toc = false
+++


## How to check Phase, Neutral and Ground of AC Wiring Using a Multimeter

I'm by no means an Electrical Engineer but from time to time I have to do your typical DC wiring and soldering. But AC is a completely different beast to me, since I rarely have to interact with it.

That's why this was done: so I can get this information quicker instead of burning stuff down and / or having 230V - or read that as 120V if you live in 'Murica - rushing through my heart.

*   With the Power Supply / Lamp / LIVE **(BE EXTRA CAREFUL)**
*   Set the Multimeter to AC Volts
*   Connect to 2 terminals
    *   If you connected Phase and Neutral = 230 Volts
    *   If you connected Phase and Earth = 230 Volts
    *   If you connected Neutral and Earth = 0 Volts
    *   So the same wire giving the 230 Volts reading will be the Phase (Live Wire)
*   Now that you've identified the Phase Wire:
    *   Shut of Power Supply **(SHUT IT OFF)**
    *   Set meter to Ohms
    *   Test Phase to Earth = should be open/high resistance
    *   Test Phase to the other wire = if it reads 0 - or near - Ohms, that is the Neutral wire.
