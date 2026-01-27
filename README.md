# Tigerente

A command line tool to connect to and manage LEGO Spike Primes running Spielzeug.

It works by running a background process that keeps the bluetooth connection alive; any commands are sent to it.

## Name

Nobody had a good idea how to name this, so we chose something that has to do with toys.

## Features

- Connect & Disconnect
- Sync folders
- Live Sync folders (keep synced)
- Reboot
- Start & Stop programs
- Download and flash Spielzeug automatically

## Example usage

```bash
# Connect to a hub
$ tente connect
These devices seem to be nearby:
- HubA (34:08:E1:8D:26:98)
- HubB (38:0B:3C:A2:27:91)
Choose a device to connect to: HubB
[✔] (00:11) Connected to HubB.

# Sync the "src" folder to the connected hub
$ tente sync src
[ℹ] You are connected to HubB.
  Sync directory... ━━━━━━━━━━━━━━━━━━━━━━━ 100% 0:00:04
[✔] Synced.

# Again, but ensure you are connected to HubA
$ tente sync src --dev HubA 
[ℹ] You are connected to HubA.
  Sync directory... ━━━━━━━━━━━━━━━━━━━━━━━ 100% 0:00:05
[✔] Synced.

# Disconnect from the connected hub
$ tente disconnect
[ℹ] You were connected to HubA.
[✔] (00:03) Disconnected.
```
