
Chat commands
-------------

Just like you\'re used to, you can send certain `!bang` commands in the
game chat

When supplying a player name, partial names will work as well. (the line
`!warn oz` will probably resolve to `!warn Pozzo`). If there are
multiple name matches, it will tell you that

### "Reason" Shortcuts

Some commands like `!report` also can have abbreviations, so
`!report poz fc` will be printed as
`!report Pozzo Fighting Commander`. See the current list:

``` {.python}
"afk": "Being AFK",
"fc": "Fighting Commander",
"ftk": "Forcing Teamkills",
"gp": "Disrupting Gameplay",
"lang": "Offensive Language",
"locked": "Locked squad",
"name": "Bad Nickname",
"nazi": "Nazi bullshit",
"spam": "Spamming",
"steal": "Asset stealing",
"tk": "Teamkilling",
"troll": "Trolling",
```

### History Shortcuts

Shortcuts reusing command history are also available:

- `!!`: repeat entire input
- `!0`: repeat command
- `!@`: repeat all arguments
- `!$`: repeat last argument

Example:
```
[Chat]: !warn Pozzo afk
!! -> "!warn Pozzo afk"
!0 -> "!warn"
!@ -> "Pozzo afk"
!$ -> "afk"
```



### Summary of Commands


----------------------------------------------------------------------------------------------------------------------------------------------------------------
Command          Usage                           Who can Run          Explanation
-------------    ----------------------------    -----------------    ------------------------------------------------------------------------------------------
!rules                                           everyone             Show link to server ruleset

!help                                            everyone             Show available commands
                                                              
!shownext\                                       everyone             Show next map in rotation
!sn\                                                          
!nextmap\                                                     
!nm                                                          
                                                              
!admins                                          everyone             Show admins online. Shown to whole server
                                                              
!report\         !r USER REASON\                 everyone             Report to admins
!r               !r pozzo troll
                                
!help_atgun\                                     everyone             Explain AT gun fix (can't move gun to aim)
!h_at
                                
!help_voice\                                     everyone             Explain voice fix (soldier shouts randomly)
!h_vo

!help_para\                                      everyone             Explain parachute 
!h_pa

!cmp                                             everyone             Show Link to CMP

!dissolve        !dissolve SQUADNUMBER\          low-lvl Admins       Disband squad on your **own** team 
                 !dissolve SQUADNUMBER REASON\
                 !dissolve 2\
                 !dissolve 2 nazi

!kill\           !kill PLAYER\                   low-lvl Admins       Murder player
!murder\         !kill PLAYER REASON
!m

!kick\           !kick PLAYER REASON             low-lvl Admins       Kick player
!k

!ban\            !ban PLAYER REASON              low-lvl Admins       Ban player for two weeks
!b

!permaban\       !permaban PLAYER REASON         low-lvl Admins       Perma-ban player 
!pb

!resign          !resign PLAYER\                 low-lvl Admins       Resign commander/remove from squad
                 !resign PLAYER REASON

!say\            !say MESSAGE                    low-lvl Admins       Write global message
!s

!sayteam\        !sayteam MESSAGE                low-lvl Admins       Write message to own team
!st

!sayenemy\       !sayenemy MESSAGE               low-lvl Admins       Write message to enemy team
!se

!switch\         !switch PLAYER\                 low-lvl Admins       Move player to opposite team NOW
!sw          

!axis            !axis PLAYER                    low-lvl Admins       Move player to Axis NOW

!allies          !allies PLAYER                  low-lvl Admins       Move player to Allies NOW

!warn\           !warn PLAYER REASON             low-lvl Admins       Warn Player 
!w

!hist            !hist\                          low-lvl Admins       Show global TKs, OR player TKs and Kicks
                 !hist PLAYER

!runnext                                         mid-lvl Admins       Run next map

!setnext         !setnext MAP\                   mid-lvl Admins       Set next map. Layer defaults to 64
                 !setnext MAP LAYER\
                 !setnext MAP LAYER MODE\
                 !setnext brest \
                 !setnext brest 64\
                 !setnext brest 64 gpm_cq\

!restart                                         mid-lvl Admins       Restart map 

!swap                                            high-lvl Admins      Move everyone to opposite team

!scramble\                                       high-lvl Admins      Scramble the teams randomly
!scram\
!shuffle\
!shuf\
!random\
!randomize

!hash            !hash PLAYER                    beta users           Show player hash (on internet servers)

!maps\                                           beta users           Show map list
!maplist

!giveme          !giveme OBJECT                  beta users           Spawn object next to you, e.g. a tank

!spawntime       !spawntime SECONDS              beta users           Set spawntime in seconds

!camera                                          beta users           Spawn the filmcamera <3

!cap             !cap FLAGNAME TEAMNAME          beta users           Give flag to team ("axis", "allies", "grey")

!3p                                              beta users           Force 3rd person soldier camera

!1p                                              beta users           Force 1st person soldier camera

!coord                                           beta users           Show player position and direction 

!maplint                                         beta users           Run the maplint

!run             !run SCRIPTNAME                 beta users           Run a script

!exec            !exec COMMAND                   beta users           Execute a rcon command

!finish          !finish TEAMNAME                beta users           Quickly bleed a team to death

!startdemo       !startdemo FILENAME             beta users           Start the battle recorder

!stopdemo                                        beta users           Stop the batte recorder

!tickets         !tickets BOTH\                  beta users           Set tickets
                 !tickets AXIS ALLIES\
                 !tickets 1000\
                 !tickets 800 600

!bleed           !bleed TEAMNAME AMOUNT\         beta users           Set bleed rate (tickets per minute)
                 !bleed AXIS ALLIES\
                 !bleed 30 50\
                 !bleed axis 40\
                 !bleed both 60
----------------------------------------------------------------------------------------------------------------------------------------------------------------


### Map Shortnames

*Some* maps have short abbreviations defined, so you can 
```
!setnext sfakia
```
instead of typing out 
```
!setnext the_battle_for_sfakia
```

Currently there is **no** partial name match, so you **CANNOT** `!setnext sfa`!

Shortname              Name
---------------------  ---------------------
alam_halfa             alam_halfa
alam                   alam_halfa
halfa                  alam_halfa
anctoville_1944        anctoville_1944
anctoville             anctoville_1944
ancto                  anctoville_1944
arad                   arad
bardia                 bardia
bastogne               bastogne
battle_of_brest        battle_of_brest
brest                  battle_of_brest
breast                 battle_of_brest
battle_of_keren        battle_of_keren
keren                  battle_of_keren
karen                  battle_of_keren
cmp_berlin             cmp_berlin
berlin                 cmp_berlin
cmp_irrawaddy_river    cmp_irrawaddy_river
irrawaddy              cmp_irrawaddy_river
irra                   cmp_irrawaddy_river
cmp_midway_1942        cmp_midway_1942
midway                 cmp_midway_1942
midway_1942            cmp_midway_1942
cmp_raid_on_cabantuan  cmp_raid_on_cabantuan
cabantuan              cmp_raid_on_cabantuan
caba                   cmp_raid_on_cabantuan
cmp_tarawa             cmp_tarawa
tarawa                 cmp_tarawa
cmp_tulagi             cmp_tulagi
tulagi                 cmp_tulagi
cmp_wake_island        cmp_wake_island
wake                   cmp_wake_island
crete_1941             crete_1941
crete                  crete_1941
dukla_pass             dukla_pass
dukla                  dukla_pass
valley_of_death        dukla_pass
el_alamein             el_alamein
el_ala                 el_alamein
alamein                el_alamein
ala                    el_alamein
eppeldorf              eppeldorf
eppel                  eppeldorf
falaise_pocket         falaise_pocket
falaise                falaise_pocket
fall_of_tobruk         fall_of_tobruk
fot                    fall_of_tobruk
flavion                flavion
flav                   flavion
flavortown             flavion
gazala                 gazala
giarabub               giarabub
viagraboob             giarabub
gold_beach             gold_beach
gold                   gold_beach
hurtgen_forest         hurtgen_forest
hurtgen                hurtgen_forest
ihantala               ihantala
iha                    ihantala
lebisey                lebisey
lenino                 lenino
mareth_line            mareth_line
mareth                 mareth_line
mersa_matruh           mersa_matruh
mathruh                mersa_matruh
mersa                  mersa_matruh
meuse_river            meuse_river
meuse                  meuse_river
motovskiy_bay          motovskiy_bay
motovskiy              motovskiy_bay
moto                   motovskiy_bay
mount_olympus          mount_olympus
olympus                mount_olympus
ogledow                ogledow
omaha_beach            omaha_beach
omaha                  omaha_beach
operation_cobra        operation_cobra
cobra                  operation_cobra
operation_goodwood     operation_goodwood
goodwood               operation_goodwood
operation_hyacinth     operation_hyacinth
hyacinth               operation_hyacinth
operation_luttich      operation_luttich
luttich                operation_luttich
lettuce                operation_luttich
operation_mars         operation_mars
opmars                 operation_mars
mars                   operation_mars
totalize               operation_totalize
operation_totalize     operation_totalize
pegasus                pegasus
pointe_du_hoc          pointe_du_hoc
pdh                    pointe_du_hoc
port_en_bessin         port_en_bessin
bessin                 port_en_bessin
peb                    port_en_bessin
purple_heart_lane      purple_heart_lane
phl                    purple_heart_lane
ramelle                ramelle
ryan                   ramelle
sammatus               sammatus
seelow                 seelow
sidi_bou_zid           sidi_bou_zid
sidi_bou               sidi_bou_zid
zid                    sidi_bou_zid
sbz                    sidi_bou_zid
sidi_rezegh            sidi_rezegh
rezegh                 sidi_rezegh
rez                    sidi_rezegh
sidi_rez               sidi_rezegh
siege_of_tobruk        siege_of_tobruk
sot                    siege_of_tobruk
st_lo_breakthrough     st_lo_breakthrough
st_lo                  st_lo_breakthrough
stlo                   st_lo_breakthrough
st_vith                st_vith
stvith                 st_vith
vith                   st_vith
studienka              studienka
supercharge            supercharge
tali                   tali
the_battle_for_sfakia  the_battle_for_sfakia
sfakia                 the_battle_for_sfakia
tomarovka              tomarovka
tunis_1943             tunis_1943
tunis                  tunis_1943
villers_bocage         villers_bocage
villers                villers_bocage
village_bukkake        villers_bocage
bukkake                villers_bocage
vossenack              vossenack
vosse                  vossenack

Configuration
-------------

### Installation

Plugins are enabled by default, see `game/gameplayPlugin.py`:
```python
plugins_admin = [
    'BangBang',  # chat commands
    'Carousel',  # map rotation and indici
    'IdleTracker',  # kick afk players
    'PlayerLogger',  # log player IDs
    'SteamRoller',  # balance and swap/shuffle
    'TeamKillLogger',  # log teamkills
    'Greeter',  # message on first spawn
    'Announcer',  # messages at regular intervals
]
plugins_admin_linux = [
    'NameChecker',  # purge nazi names
]
```

On linux servers, you can check for squad names and playernames, if they
match a (nazi) badlist.

For map rotation to work, all maps need to have a
`meta.toml` metadata file in the level basedir (outside of the .zip
files). See example for berlin:

```toml
layers = [ 16, 32, 64,]
intervals = [ [ 0, 22,], [ 23, 44,], [ 45, 100,],]
front = [ "east", "urban",]
themes = [ "cmp", "urban",]
date = "1945-04-16"
teams = [ "Germany", "Russia",]
```
"layers" is all the existing layers that a map has -- if a map is missing 
layers in your installation, remove those!

"intervals" means on 0-22 players it will pick 16p layer next, on 23-44
it will pick 32p layer, etc. these can be adjusted per map. E.g. if the
last layer is `[45, 75]`, the map will not get picked on a full (100
ppl) server.

### General

Configuration is done in the `config.toml` config file.

Set debug (for more aggressive logs/warnings), and beta (to enable beta 
commands)

```toml
[general]
debug = true
beta = true
```

### Configure admins

In the `admins.toml` file, add the `admins_high`, `_low`, and `_mid`
lists to the `[users]` section, with the hashes of the admins. Example
below:

```toml
[users]
# if the admin arrays are empty, defaults to "everything is allowed"
admins_high = [
    "d722905f13f2e89553837ab9bbe42302",       # some very important user
]
admins_mid = [
    "732753cd11d331e64867057cfdc7ecd5",       # who is this?
    "74598b621924620609b37a12a2473819",       # another
]
admins_low = [
    "45d8218d92cd1c3de9508ad5133a1693",       # some lowly mod
]
```

### Autobalancer

The `SteamRoller` plugin handles both auto-balancing players *during*
the round, and scrambles the teams just before round start. Commands to
swap or scramble the teams are available as `!bang` commands as well

```toml
[balance]
shuffle_on_start = true
swap_on_start = false
protect_commander = true
protect_squadmembers = true
protect_squadleader = true
```

**IMPORTANT:** To enable team swap (without randomization), you **need** to 
disable shuffling, so it looks like this:
```toml
shuffle_on_start = false
swap_on_start = true
```

### Map Rotation

How many maps to remember when avoiding duplications. `n_last_played`
defines how many rounds to wait until a map can be played again.
`n_last_categories` sets how many maps to wait until a map category
(winter, urban, eastfront, africa) can repeat itself.

The `theme` makes sure only maps from a certain map theme (cmp, finland, 
maps with italians, ...) come on. This ignores the `n_last_categories` setting.

The `favorites` list defines maps which are excluded from the 
`n_last_categories` setting, so these maps will appear in the rotation much more frequently.

```toml
  [maps]
  n_last_played = 8             # don't repeat maps
  n_last_categories = 1         # don't repeat theatres 
                                # (africa, winter, urban, ...)
  theme = ""
  favorites = []
```

### Auto-Ban

Define forbidden words for usernames/squads in the `badnames.toml`: if
anyone joins with e.g. "adolf" in the name, they get auto-banned. If you
make a squad named "1488", you get auto-kicked.

```toml

# usernames/squadnames that get you autokicked
words = [
  "adolf", "sieg heil", "siegheil",
  "waffen_ss", 
]
```

### Afk Kicking

In this setting, configure the AFK autokicker and ban/kick related things.

The `ban_duration` setting configures how long a temporary ban is. Usually
set at two weeks.

The AFK tracker checks every `idle_check_interval` seconds if a player has been active. Otherwise it kicks them. On the default settings, below a certain number of players however, players don't get kicked but autobalanced instead, 
so that the server is not emptied too much.

```toml
[janitor]
# don't start kicking AFKs unless at least X players online
min_players_for_kick = 50
# if min_players_for_kick has not been reached, at least balance the AFKs?
balance_afks_before_minplayers = true
# seconds until you get kicked/balanced
max_idle_time = 600
idle_check_interval = 30
idle_yaw_threshold = 0.5
# bantime in seconds
# good default is two weeks: 1209600 = 60 * 60 * 24 * 14
ban_duration = 1209600
```

### Messages

Configure which messages are shown.

The `welcome` line is displayed when you first spawn.

The `rules` message is displayed when someone uses the ingame `!rules` command.

The `announce` message list is a set of messages which are displayed
every `announce_interval` seconds.

The `show_disconnect` setting decides whether to print a line when a
player disconnects.

The `show_connect` setting decides whether to print a line FOR ADMINS when a
player connects.

```toml

[messages]
# displayed on first spawn after join
# the <PLAYER> token will be replaced with the actual player name
# if you want to disable this, put `welcome = ""`
welcome = "Welcome <PLAYER> to the FH2 Test Server!"
# short line pointing to server rules website
rules = "For Rules visit https://russianhope2.com/stats/?go=server-rules"
# those will be displayed regularly 
# if you want to disable these, put `announce = []`
announce = [
  "Join us on FH2 Discord",
  "Check out fhmod.org for news",
  "We love you all <3",
  "Jean a une longue mustache honhonhon",
  "New CMP campaign is now open!",
  "Join the CMP campaign at cmp-gaming.com",
]
# if using announce, this is the interval in seconds
announce_interval = 300
# display message on disconnect. recommended to only disable this if another
# "X has disconnected" print script is active in parallel
show_disconnect = true
show_connect = true
```
