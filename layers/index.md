as you might or might not have seen mentioned on discord, the new soom(tm) to be deployed map rotation system has the ability to set custom limits for each map, which layer gets picked at how many connected players. This also includes the possibility for an upper limit so that a map with, say, a maximum of 75 players will not be picked by the maprotation when the server is full at 100 ppl.

Currently, the default thresholds are at 22.5 and 44.5 players (22ppl -> 16 layer, 23ppl -> 32 layer, 44ppl->32 layer, 45++ -> 64 layer)

Currently, four maps have an upper limit of 75 configured, these are Hyacinth, Bardia, Tunis and Ramelle (see below)

The full list of all the per-map intervals is this:

Mapname                     16            32              64
----------                  ----------    ------------    ---------------
Alam_Halfa                  [ 0, 22, ]    [ 23, 100, ]    [ 101, 200 ,]
Anctoville_1944             [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
Arad                        [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
bardia                      [ 0, 22, ]    [ 23, 54,  ]    [ 55, 75 ,]
bastogne                    [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
battle_of_brest             [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
battle_of_keren             [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
bodange                     [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
cmp_berlin                  [ 0, 22, ]    [ 23, 59,  ]    [ 60, 100 ,]
cmp_irrawaddy_river         [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
cmp_midway_1942             [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
cmp_raid_on_cabantuan       [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
cmp_tarawa                  [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
cmp_tulagi                  [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
cmp_wake_island             [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
Crete_1941                  [ 0, 22, ]    [ 23, 62,  ]    [ 63, 100 ,]
dukla_pass                  [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
El_Alamein                  [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
eppeldorf                   [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
falaise_pocket              [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
Fall_of_Tobruk              [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
flavion                     [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
gazala                      [ 0, 22, ]    [ 23, 100, ]    [ 101, 200 ,]
Giarabub                    [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
gold_beach                  [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
hurtgen_forest              [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
ihantala                    [ 0, 22, ]    [ 23, 62,  ]    [ 63, 100 ,]
la_horgne                   [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
lebisey                     [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
lenino                      [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
Mareth_Line                 [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
Mersa_Matruh                [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
meuse_river                 [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
motovskiy_bay               [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
mount_olympus               [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
ogledow                     [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
omaha_beach                 [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
operation_cobra             [ 0, 22, ]    [ 23, 62,  ]    [ 63, 100 ,]
Operation_Goodwood          [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
Operation_Hyacinth          [ 0, 22, ]    [ 23, 54,  ]    [ 55, 75  ,]
operation_luttich           [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
operation_mars              [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
operation_totalize          [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
pegasus                     [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
pointe_du_hoc               [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
port_en_bessin              [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
Purple_Heart_Lane           [ 0, 22, ]    [ 23, 54,  ]    [ 55, 75  ,]
ramelle                     [ 0, 22, ]    [ 23, 54,  ]    [ 55, 75  ,]
sammatus                    [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
seelow                      [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
Sidi_Bou_Zid                [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
Sidi_Rezegh                 [ 0, 22, ]    [ 23, 62,  ]    [ 63, 100 ,]
Siege_of_Tobruk             [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
st_lo_breakthrough          [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
stonne                      [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
studienka                   [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
st_vith                     [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
Supercharge                 [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
tali                        [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
the_battle_for_sfakia       [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
tunis_1943                  [ 0, 22, ]    [ 23, 54,  ]    [ 55, 75  ,]
villers_bocage              [ 0, 22, ]    [ 23, 62,  ]    [ 63, 100 ,]
villy_la_ferte              [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
Vossenack                   [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
zuydcoote                   [ 0, 22, ]    [ 23, 54,  ]    [ 55, 100 ,]
----------                  ----------    ------------    ---------------

---

For the map devs/betatesters: This is set in the new metadata for each map, in the meta.toml, specifically in the "intervals" entry:
```
intervals = [ [ 0, 22,], [ 23, 44,], [ 45, 75 ,]
```
