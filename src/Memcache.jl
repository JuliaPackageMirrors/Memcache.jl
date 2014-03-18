module Memcache

import Base.close, Base.touch, Base.get, Base.add, Base.replace, Base.quit

export set, cas, add, replace, append, prepend, get, touch, incr, decr, delete
export MemcacheClient, stats, version, flush_all, close, slabs_reassign, slabs_automove, quit
export MemcacheClients
# not exporting add_client as it could unintentionally change hash distribution calculation in the middle of execution
#export add_client

# Julia 0.2 compatibility patch
if isless(Base.VERSION, v"0.3.0-")
read!(a,b) = read(a,b)
end

include("client.jl")
include("multi.jl")

end # module

