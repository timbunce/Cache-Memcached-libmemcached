use strict;
use inc::Module::Install;

name('Cache-Memcached-libmemcached');
all_from('lib/Cache/Memcached/libmemcached.pm');

requires('Memcached::libmemcached', '0.4405');
requires('Storable');
requires('Carp');
requires('Task::Weaken');

recommends('Compress::Zlib');

build_requires('Test::More', 0.80);

auto_include;
WriteAll;
