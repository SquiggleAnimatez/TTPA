# Art assets:
model-path resources

# Server:
server-version TTPA-Beta-1.0.1
min-access-level 0
accountdb-type local
shard-low-pop 1
shard-mid-pop 10

# RPC:
want-rpc-server #f
rpc-server-endpoint http://localhost:8080/

# DClass file:
dc-file dependencies/astron/dclass/toon.dc

# Core features:
want-pets #t
want-parties #f
want-cogdominiums #t
want-achievements #t
want-pets #f
want-parties #f

# Chat:
want-whitelist #t

# Cashbot boss:
want-resistance-toonup #t
want-resistance-restock #t
want-resistance-money #f

# Developer options:
show-population #t
show-total-population #t
force-skip-tutorial #f
want-instant-parties #f

# Weather
weather-cycle-duration 100

audio-library-name p3fmod_audio
