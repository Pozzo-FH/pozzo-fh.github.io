---
title: "Basics of mapdata.py"
---

## Bare Minimum 

Copy this template when creating a new mapdata.py from scratch

```python
# -*- coding: utf-8 -*-
# pylint: disable=C0103,C0111,F0401,C0302,R0913

from game.plugins import (
    plugin,
    limitKit,
    NCOrifleData,
    teamSPs,
    ticketLoss,
)

nco_kits = [
    plugin(
        NCOrifleData,
        kits=("GA_NCOMP40", "RE_NCO_42"),
        soldiers=("GcWhSnow_white_nco_redband", "re_nco_soldier_telogrieka"),
    ),
]

kitlimits_64 = [
    plugin(limitKit, team=1, slot=1, kit="GW_SMGAssault_limited", limit=0.1),
    plugin(limitKit, team=2, slot=1, kit="RE_SMGAssault_Limited", limit=0.15),
]
kitlimits_32 = [
    plugin(limitKit, team=1, slot=1, kit="GW_SMGAssault_limited", limit=0.3),
    plugin(limitKit, team=2, slot=1, kit="RE_SMGAssault_Limited", limit=0.45),
]
kitlimits_16 = [
    plugin(limitKit, team=1, slot=1, kit="GW_SMGAssault_limited", limit=0.2),
    plugin(limitKit, team=2, slot=1, kit="RE_SMGAssault_Limited", limit=0.25),
]

spawns = [
    plugin(teamSPs),
]

tickets_64 = [plugin(ticketLoss, ticketLoss1=20, ticketLoss2=20)]
tickets_32 = [plugin(ticketLoss, ticketLoss1=16, ticketLoss2=16)]
tickets_16 = [plugin(ticketLoss, ticketLoss1=12, ticketLoss2=12)]


gpm_cq = {
    64: (nco_kits + spawns + tickets_64 + kitlimits_64),
    32: (nco_kits + spawns + tickets_32 + kitlimits_32),
    16: (nco_kits + spawns + tickets_16 + kitlimits_16),
}
```


## NCO Kits

Define your NCO kits like below. It is recommended to also specify the 
soldiers in there. This will save you confusion if you use different
kits or soldiers on different layers.

```python
nco_kits = [
    plugin(
        NCOrifleData,
        kits=("GA_NCOMP40", "RE_NCO_42"),
        soldiers=("GcWhSnow_white_nco_redband", "re_nco_soldier_telogrieka"),
    ),
]
```


## Team Spawns

This allows you to make spawns *for axis/allies only*!

If you named your spawnpoints **well** -- the spawnpoint name 

- has the name of its flag in its own name
- for team-only spawns, has `axis` or `allies` in its name

then you can just configure the plugin like this, without specifying
any names at all.

```python
spawns = [
    plugin(teamSPs),  # Auto-fill
]
```

## Sector Tickets

For each flag (usually the dummy flag that locks the sector) you can specify
how tickets are updated.

The config is like this: make a `dict(str->2-tuple)`, with the flagname
string as key. The dict value is a `2-tuple` of `int` or `string`. `tup[0]` is the
axis ticket update, `tup[1]` is the allies ticket update.

Ticket updates can be:

- No changing tickets
  - `None`, `"+0"`, `"-0"`
- Absolute new tickets (set tickets to 500 if flag changes hand)
  - `100`, `"200"` (`int` or castable-to-`int`)
- Relative ticket update (add 200 tickets to current ones)
  - `"+100"`, `"-200"` (string `+-`, followed by castable-to-`int`)

```python
from game.plugins import SectorTickets

tickets_per_Sector = [
    plugin(
        SectorTickets,
        sector_tickets={
            "CP_64_mymap_sectorlock1dummy": {
                "axis": 300,
                "allies": "100"
            },
            "CP_64_mymap_sectorlock2dummy": {
                "capped_by": "axis",
                "allies": "-40"
            },
        }
    )
]
```

## Dynamic OOB

Has its [own tutorial](./dynoob.html)
