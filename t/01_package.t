use strict;
use Test::More 0.98;
use App::PerlPackage2PlantUMLClassDiagram::Package;

subtest 'basic' => sub {
    my $package = App::PerlPackage2PlantUMLClassDiagram::Package->new('t/data/User.pm');
    isa_ok $package, 'App::PerlPackage2PlantUMLClassDiagram::Package';
    is $package->source, 't/data/User.pm';
    isa_ok $package->document, 'PPI::Document';
    is $package->package_name, 'User';

    is_deeply $package->static_methods, ['new(%args)'];

    is_deeply $package->public_methods, ['name()'];
    is_deeply $package->private_methods, ['_password()'];

    is_deeply $package->parent_packages, ['Mammal', 'HasPassword'];

    is $package->to_class_syntax, <<'UML';
class User {
  {static} new(%args)
  + name()
  - _password()
}
UML
};

subtest 'method_signiture' => sub {
    my $package = App::PerlPackage2PlantUMLClassDiagram::Package->new('t/data/HasPassword.pm');
    is_deeply $package->public_methods, ['authenticate($login_info, $callback)'];
};

subtest 'without inheritance' => sub {
    my $package = App::PerlPackage2PlantUMLClassDiagram::Package->new('t/data/Mammal.pm');
    is $package->to_inherit_syntax, '';
};

done_testing;

