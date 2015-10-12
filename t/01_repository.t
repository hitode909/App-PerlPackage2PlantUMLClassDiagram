use strict;
use Test::More 0.98;
use App::PerlPackage2PlantUMLClassDiagram::Repository;

subtest 'when empty' => sub {
    my $repository = App::PerlPackage2PlantUMLClassDiagram::Repository->new;
    isa_ok $repository, 'App::PerlPackage2PlantUMLClassDiagram::Repository';
    is_deeply $repository->files, [];
    is $repository->to_plantuml, <<'UML';
@startuml
@enduml
UML
};

done_testing;

