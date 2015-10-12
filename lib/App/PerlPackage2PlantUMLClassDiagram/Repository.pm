package App::PerlPackage2PlantUMLClassDiagram::Repository;
use 5.008001;
use strict;
use warnings;

sub new {
    my ($class) = @_;

    bless {
        files => [],
    }, $class;
}

sub files {
    my ($self) = @_;

    $self->{files};
}

sub to_plantuml {
    <<'UML'
@startuml
@enduml
UML
}

1;
