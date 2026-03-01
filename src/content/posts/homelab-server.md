+++
date = '2026-02-09T21:02:15+01:00'
draft = false
title = 'HomeLab - Server'
summary = "An overview of the server and it's stack that I'm using as my HomeLab / Servers."
tags = ["homelab", "server", "proxmox"]
toc = true
+++


## Current Setup

### Hypervisor

GMKtec NucBox M5 Plus (Ryzen 7 5824U / 64 GB RAM / 1 TB m.2) running Proxmox

### Virtual Machines

- 101 - docker - Public Facing Services

- 102 - docker - Internal-Only Facing Services

- 103 - ollama - Local LLM Inference

### Configuring DynDNS on Fritz.box

> Update URL

`https://dynamicdns.park-your-domain.com/update?host=<username>&domain=<domain>&password=<passwd>&ip=<ipaddr>`

*Info:* same for everyone using DynDNS on NameCheap

> Domain Name

`carlossousa.tech`

*Info:* Your Domain / Root Domain

> Username

`voyager`

*Info:* the subdomain you want to update. Use `@` if you want to update your root domain

> Password

*Info:* Defined in your NameCheap configuration / settings
