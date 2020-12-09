#!/bin/sh
make CHANGES
make README.md
make dist
TAR=`ls -t *.tar.gz|head -1`
PERL5LIB=`dirname $0`/3rd/lib/perl5 \
PERL_LWP_SSL_VERIFY_HOSTNAME=0 ./3rd/bin/cpan-upload -u OETIKER $TAR
