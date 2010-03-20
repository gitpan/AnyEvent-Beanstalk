
use strict;
use warnings;



use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'AnyEvent::Beanstalk',
                       'DISTNAME' => 'AnyEvent-Beanstalk',
                       'AUTHOR' => 'Graham Barr',
                       'ABSTRACT' => 'Async client to talk to beanstalkd server',
                       'EXE_FILES' => [],
                       'VERSION' => '1.100790',
                       'LICENSE' => 'perl',
                       'PREREQ_PM' => {
                                        'YAML' => '0',
                                        'AnyEvent' => '0',
                                        'ExtUtils::MakeMaker' => '6.11',
                                        'Class::Accessor::Fast' => '0'
                                      }
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



