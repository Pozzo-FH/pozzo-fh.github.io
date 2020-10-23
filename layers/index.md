as you might or might not have seen mentioned on discord, the new soom(tm) to be deployed map rotation system has the ability to set custom limits for each map, which layer gets picked at how many connected players. This also includes the possibility for an upper limit so that a map with, say, a maximum of 75 players will not be picked by the maprotation when the server is full at 100 ppl.

Currently, the default thresholds are at 22.5 and 44.5 players (22ppl -> 16 layer, 23ppl -> 32 layer, 44ppl->32 layer, 45++ -> 64 layer)

Currently, four maps have an upper limit of 75 configured, these are Hyacinth, Bardia, Tunis and Ramelle (see below)

The full list of all the per-map intervals is this:

```
alam_halfa =             [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
anctoville_1944 =        [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
arad =                   [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
bardia =                 [[ 0, 22,], [ 23, 44,], [ 45,  75,],]
bastogne =               [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
battle_of_brest =        [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
battle_of_keren =        [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
crete_1941 =             [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
dukla_pass =             [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
el_alamein =             [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
eppeldorf =              [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
falaise_pocket =         [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
fall_of_tobruk =         [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
gazala =                 [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
giarabub =               [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
gold_beach =             [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
hurtgen_forest =         [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
ihantala =               [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
lebisey =                [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
lenino =                 [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
mareth_line =            [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
mersa_matruh =           [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
meuse_river =            [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
motovskiy_bay =          [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
mount_olympus =          [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
ogledow =                [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
omaha_beach =            [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
operation_cobra =        [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
operation_goodwood =     [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
operation_hyacinth =     [[ 0, 22,], [ 23, 44,], [ 45,  75,],]
operation_luttich =      [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
operation_totalize =     [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
pegasus =                [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
pointe_du_hoc =          [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
port_en_bessin =         [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
purple_heart_lane =      [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
ramelle =                [[ 0, 22,], [ 23, 44,], [ 45,  75,],]
sammatus =               [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
seelow =                 [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
sidi_bou_zid =           [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
sidi_rezegh =            [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
siege_of_tobruk =        [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
st_lo_breakthrough =     [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
st_vith =                [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
studienka =              [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
supercharge =            [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
tali =                   [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
the_battle_for_sfakia =  [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
tunis_1943 =             [[ 0, 22,], [ 23, 44,], [ 45,  75,],]
villers_bocage =         [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
vossenack =              [[ 0, 22,], [ 23, 44,], [ 45, 100,],]
```

---

For the map devs/betatesters: This is set in the new metadata for each map, in the meta.toml, specifically in the "intervals" entry:
```
intervals = [ [ 0, 22,], [ 23, 44,], [ 45, 75,],]
```
