# Make Cache::Memcached::libmemcached appear to be Cache::Memcached::Fast
#
# Can be used to run the Cache::Memcached::Fast with Cache::Memcached::libmemcached
# to test cmpatibility
# PERL5OPT="-Mlib=$HOME/repros/Cache-Memcached-libmemcached/blib/lib -MCache::Memcached::libmemcachedAsFast" make test

die "Cache::Memcached::Fast already loaded"
    if $Cache::Memcached::Fast::VERSION;

package # hide from PAUSE indexer just in case it ever sees this
    Cache::Memcached::Fast;

use strict;

use parent qw(Cache::Memcached::libmemcached);

$INC{"Cache/Memcached/Fast.pm"} = __FILE__;

our $VERSION = 0;

warn "Cache::Memcached::libmemcachedAsFast emulating Cache::Memcached::Fast!\n";

1;
