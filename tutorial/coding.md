---
title: "Vehicle Coding"
---

## Artillery remotecam limits

Say you have an artillery piece with barrel elevation limits like this:

```sql
rem soviet M30 12mm .tweak file
rem RotationalBundle containing the Barrel

ObjectTemplate.setMinRotation 0/-20/0
ObjectTemplate.setMaxRotation 0/15/0
```

To translate this into the correct elevation limits for the remotecam, do these
steps:

- move the limits to the 3rd coordinate
- switch the Min and Max
- switch the sign on the coordinates

so on the remotecam it looks like this:

```sql
rem Soviet M30 120mm remotecam .tweak
rem remotecam elevation dial

ObjectTemplate.setMinRotation 0/0/-15
ObjectTemplate.setMaxRotation 0/0/20
```

It is important that the `maxSpeed` and `Acceleration` also have similar 
values:

```sql
rem barrel
ObjectTemplate.setMaxSpeed 0/5/0
ObjectTemplate.setAcceleration 0/250/0

rem remotecam
ObjectTemplate.setMaxSpeed 0/0/5
ObjectTemplate.setAcceleration 0/0/-250
```

These speed and acceleration settings work well for *any* artillery gun,
it's easier for players if they all move the same.
