
Chat commands
-------------

Just like you\'re used to, you can send certain `!bang` commands in the
game chat

When supplying a player name, partial names will work as well. (the
line `!warn oz` will probably resolve to `!warn pozzo`). If there are
multiple name matches, it will tell you that


### "Reason" Shortcuts

Some commands like `!report` also can have abbreviations, so
`!report poz fc` will be printed as
`!report pozzo Fighting Commander`. See the current list:

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
[Chat]: !warn pozzo afk
!! -> "!warn pozzo afk"
!0 -> "!warn"
!@ -> "pozzo afk"
!$ -> "afk"
```


### Command Summary

------------------------------------------------------------------------------------------------------------------------------------------------------------
Command          Usage                       Who?                 Explanation
-------------    ------------------------    -----------------    ------------------------------------------------------------------------------------------
!rules                                       all                  Show link to server ruleset

!help                                        all                  Show available commands
                                                          
!shownext\                                   all                  Show next map in rotation
!sn\                                                      
!nextmap\                                                 
!nm                                                      
                                                          
!admins                                      all                  Show admins online

!yes                                         all                  Vote YES (if vote is ongoing)

!no                                          all                  Vote NO (if vote is ongoing)
                                                          
!report\         !r USER WHY\                all                  Report to admins
!r               !r pozzo troll
                                
!help_atgun\                                 all                  Explain AT gun fix \
!h_at                                                             (can't move gun to aim)
                                
!help_voice\                                 all                  Explain voice fix \
!h_vo                                                             (soldier shouts randomly)

!help_para\                                  all                  Explain parachute 
!h_pa

!cmp                                         all                  Show Link to CMP

!reroll\                                     low-lvl              Re-pick random nextmap \
!rr                                                               (only ONCE per round!)

!vote_reroll\                                low-lvl              Start vote to re-roll 
!vrr                                                              

!vote_runnext\                               low-lvl              Start vote to runnext
!vrn

!dissolve\       !dissolve NUM\              low-lvl              Disband squad \
!disband         !dissolve NUM WHY\                               on your **own** team 
                 !dissolve 2\
                 !dissolve 2 nazi

!kill\           !kill PLY\                  low-lvl              Murder player
!murder\         !kill PLY WHY
!m

!kick\           !kick PLY WHY\              low-lvl              Kick player
!k               !kick -n NUM WHY

!ban\            !ban PLY WHY\               low-lvl              Ban player for two weeks
!b               !ban -n NUM WHY

!banround\       !banround PLY WHY           low-lvl              Ban player for 1h
!br\
!rb\
!roundban

!banday\         !banday PLY WHY             low-lvl              Ban player for 24h
!bd\
!db\
!dayban

!permaban\       !permaban PLY WHY           low-lvl              Perma-ban player 
!pb\
!bp

!resign          !resign PLY\                low-lvl              Resign commander/\
                 !resign PLY WHY                                  remove from squad

!say\            !say MSG                    low-lvl              Write global message
!s

!sayteam\        !sayteam MSG                low-lvl              Write to own team
!st

!sayenemy\       !sayenemy MSG               low-lvl              Write to enemy team
!se

!sayadmin\       !sayadmin MSG               low-lvl              Write to admins
!sa

!switch\         !switch PLAYER\             low-lvl              Move player 
!sw          

!axis            !axis PLAYER                low-lvl              Move player to Axis 

!allies          !allies PLAYER              low-lvl              Move player to Allies 

!warn\           !warn PLAYER WHY            low-lvl              Warn Player 
!w

!hist            !hist\                      low-lvl              Show global TKs, \
                 !hist PLAYER                                     OR player TKs and Kicks

!hash            !hash PLAYER                low-lvl              Show player hash \
                                                                  (on internet servers)

!runnext\                                    low-lvl              Run next map
!rn

!fixsquadbug                                 low-lvl              Try fixing broken squads

!version                                     low-lvl              Show admin tools version

!scramble\                                   mid-lvl              Scramble teams on next map
!scram\
!shuffle\
!shuf

!unscramble                                  mid-lvl              Cancel the scramble request

!setnext         !setnext MAP\               mid-lvl              Set next map (default 64p)
                 !setnext MAP LY\
                 !setnext brest \
                 !setnext brest 64\

!restart                                     mid-lvl              Restart map 

!tickets         !tickets BOTH\              high-lvl             Set tickets
                 !tickets AXIS ALLIES\
                 !tickets 1000\
                 !tickets 800 600

!maps\                                       betatest             Show map list
!maplist

!giveme          !giveme OBJECT              betatest             Spawn object next to you

!fly\            !fly\                       betatest             Launch into the air \
!fling           !fly HEIGHT\                                     (default is yourself and 100m)
                 !fly HEIGHT PLAYER\
                 !fly 400 pozzo

!spawntime       !spawntime NUM              betatest             Set spawntime in seconds

!camera                                      betatest             Spawn the filmcamera <3

!cap             !cap TEAM NAME\             betatest             Give flag to team \
                 !cap -l TEAM NAME                                Adding '-l' makes it \
                                                                  search localizations, like \
                                                                  "outskirts" on tobruk \
                                                                  (actual flagname is \
                                                                  `64_CP_FT_2`)

!3p                                          betatest             Force 3rd person camera

!1p                                          betatest             Force 1st person camera

!coord                                       betatest             Show position & direction 

!maplint                                     betatest             Run the maplint

!speed                                       betatest             Show your current speed

!oob             !oob ON\                    betatest             Turn OOB on/off, 
                 !oob OFF                                         

!run             !run SCRIPTNAME             betatest             Run a script

!exec            !exec COMMAND               betatest             Execute a rcon command

!finish          !finish TEAMNAME            betatest             Bleed out a team

!startdemo       !startdemo FILENAME         betatest             Start battle recorder

!stopdemo                                    betatest             Stop batte recorder

!bleed           !bleed TEAM NUM\            betatest             Set bleed rate \
                 !bleed AX AL   \                                 (tickets per minute)
                 !bleed 30 50\
                 !bleed axis 40\
                 !bleed both 60
------------------------------------------------------------------------------------------------------------------------------------------------------------


### Map Shortnames

*Some* maps have short abbreviations defined (see [the map table](https://pozzo-fh.github.io/maps/index.html) ), so you can 
```
!setnext sfakia
```
instead of typing out 
```
!setnext the_battle_for_sfakia
```

Currently there is **no** partial name match, so you **CANNOT** `!setnext sfa`!


Setup
-----

### Plugin System

Plugins are enabled by default, see `game/gameplayPlugin.py`:
```python
plugins_admin = [
    'BangBang',  # chat commands
    'IdleTracker',  # kick afk players
    'PlayerLogger',  # log player IDs
    'SteamRoller',  # balance and swap/shuffle
    'TeamKillLogger',  # log teamkills
    'Greeter',  # message on first spawn
    'Announcer',  # messages at regular intervals
    'VoteChat',  # messages at regular intervals
]
plugins_admin_nobots = [
    'Carousel',  # map rotation
]

plugins_admin_linux = [
    'NameChecker',  # purge nazi names
]
plugins_admin_beta = [
    'CamSetup',  # enable chasecams
]
```

On linux servers, you can check for squad names and playernames, if they
match a (nazi) badlist.

On betatest servers, chasecams are enabled.

On servers with bots (singleplayer and coop), randomized map rotation is not available.


### Map Randomizer {#carousel}

Maps are picked randomly from the server maplist. It will avoid running
the same map twice in a row, and it will avoid running two maps of the
same theatre (e.g. africa) back to back.

For randomized map rotation to work, all maps need to have a
`meta.toml` metadata file in the level basedir (outside of the .zip
files). See example for **Arad**:

```toml
layers = [ 16, 32, 64,]
intervals = [ [ 0, 22,], [ 23, 44,], [ 45, 100,],]
front = [ "east",]
date = "1944-09-14"
teams = [ "Germany", "Russia",]
version_added = "2.56"
authors = [ "hitm4k3r",]
```
"layers" is all the existing layers that a map has -- if a map is missing 
layers in your installation (or they are WIP), remove those! You can remove
them from the maplist, too, of course.

"intervals" means on 0-22 players it will pick 16p layer next, on 23-44
it will pick 32p layer, etc. these can be adjusted per map. E.g. if the
last layer is `[45, 75]`, the map will not get picked on a full (100
ppl) server.


### Admin Rights

In the `admins.toml` file, add the `admins_high`, `_low`, and `_mid`
lists to the `[users]` section, with the hashes of the admins. Example
below:

```toml
[users]
# if the admin arrays are empty, 
# defaults to "everything is allowed"
admins_high = [
    "d722905f13f2e89553837ab9bbe42302",  # user a
]
admins_mid = [
    "732753cd11d331e64867057cfdc7ecd5",  # who this?
    "74598b621924620609b37a12a2473819",  # another
]
admins_low = [
    "45d8218d92cd1c3de9508ad5133a1693",  # some mod
]
```

### Nazi Word Blacklist

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



Main Configuration
------------------

Configuration is done in the `config.toml` config file.

Set debug (for more aggressive logs/warnings), and beta (to enable beta 
commands)

```toml
[general]
debug = true
beta = true
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
# the <PLAYER> token will be replaced 
# with the actual player name
# if you want to disable this, put `welcome = ""`

welcome = "Welcome <PLAYER> to the FH2 Test Server!"

# short line pointing to server rules website
rules = "For Rules visit XXX"

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

# display message on disconnect. 
# recommended to only disable this if another
# "X has disconnected" print script is active in parallel
show_disconnect = true
show_connect = true
```

### Bans and (AFK) Kicks

In this setting, configure the AFK autokicker and ban/kick related things.

The `ban_duration` setting configures how long a temporary ban is. Usually
set at two weeks.

The AFK tracker checks every `idle_check_interval` seconds if a player has been active. Otherwise it kicks them. On the default settings, below a certain number of players however, players don't get kicked but autobalanced instead, 
so that the server is not emptied too much.

```toml
[janitor]
# don't start kicking AFKs unless at least X players online
min_players_for_kick = 50

# if min_players_for_kick has not been reached, 
# at least balance the AFKs?
balance_afks_before_minplayers = true

# seconds until you get kicked/balanced
max_idle_time = 600
idle_check_interval = 30
idle_yaw_threshold = 0.5

# bantime in seconds
# good default is two weeks: 1209600 = 60 * 60 * 24 * 14
ban_duration = 1209600
```


### Map Rotation

How many maps to remember when avoiding duplications. `n_last_played`
defines how many rounds to wait until a map can be played again.

`n_last_categories` sets how many maps to wait until a map category
(winter, urban, eastfront, africa) can repeat itself. These are setup in the 
[per-map configuration](#carousel). NOTE: it is recommended to make this at 
least 2 smaller than the number of available fronts!

The `favorites` list defines maps which maps will appear in the rotation
much more frequently, e.g. newly released ones.

```toml
[maps]
# favorite maps that should 
# appear more often in the rotation
# e.g. newly released maps; 
#   favorites = ['stonne', 'flavion']
favorites = []    

# don't repeat maps
n_last_played = 12

# don't repeat theatres (africa, winter, urban, ...)
n_last_fronts = 1
```

### Autobalancer

The `SteamRoller` plugin handles both auto-balancing players *during*
the round, and swaps the teams just before round start. It's possible to
exclude certain players from being affected by autobalance:

```toml
[balance]
swap_on_start = true
protect_commander = true
protect_squadmembers = true
protect_squadleader = true
protect_admins = false

smb_difference = 1
```

The `smb_difference` tells how big the difference between teams needs to be 
to trigger balancing.

### HUD

FH2.6 introduces a new message system, where admin/gameplay messages
are *no longer buried in the killfeed*. Important messages are also
localized. If you would like the old behavior, or are running this on a pre-2.6
server, disable this.

```toml
[hud]
use_new_format = true
```


### Stats API

Config for the stats API that the PlayFH2 server uses 
(contact them for questions)

```toml
[stats_api]
enabled = true
backend_url = ""
token = ""
```

### Voting

You can start votes to reroll the next map, or run the nextmap. To cast a
vote, write `!yes` or `!no` in chat.

```toml
[voting]
vote_runnext_allowed = true
vote_reroll_allowed = true

# vote duration and time between notifications (all seconds)
notify_period = 14
vote_duration = 60
```
