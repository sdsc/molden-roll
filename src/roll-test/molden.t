#!/usr/bin/perl -w
# molden roll installation test.  Usage:
# molden.t [nodetype]
#   where nodetype is one of "Compute", "Dbnode", "Frontend" or "Login"
#   if not specified, the test assumes either Compute or Frontend

use Test::More qw(no_plan);

my $appliance = $#ARGV >= 0 ? $ARGV[0] :
                -d '/export/rocks/install' ? 'Frontend' : 'Compute';
my $installedOnAppliancesPattern = '.';
my $isInstalled = -d '/opt/molden';
my $output;

my $TESTFILE = 'tmpmolden';

# molden-common.xml
if($appliance =~ /$installedOnAppliancesPattern/) {
  ok($isInstalled, 'molden installed');
} else {
  ok(! $isInstalled, 'molden not installed');
}
SKIP: {

  skip 'molden not installed', 5 if ! $isInstalled;
  $output=`module load molden; molden 2>&1`;
  ok($output =~ /Molden: cannot connect to X server/, 'molden exectutable starts');
  $output=`module load molden; gmolden 2>&1`;
  ok($output =~ /Molden: cannot connect to X server/, 'gmolden exectutable starts');

  `/bin/ls /opt/modulefiles/applications/molden/[0-9.]* 2>&1`;
  ok($? == 0, 'molden module installed');
  `/bin/ls /opt/modulefiles/applications/molden/.version.[0-9.]* 2>&1`;
  ok($? == 0, 'molden version module installed');
  ok(-l '/opt/modulefiles/applications/molden/.version',
     'molden version module link created');
}

`rm -fr $TESTFILE*`;
