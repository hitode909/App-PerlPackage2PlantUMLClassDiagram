package User;
use parent qw(Mammal HasPassword);

sub new {
    my ($class) = @_;
}

sub name {
    my ($self) = @_;
}

sub _password {
    my ($self) = @_;
}

1;
