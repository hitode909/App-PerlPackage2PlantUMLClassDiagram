requires 'perl', '5.008001';

requires 'PPI';
requires 'Text::MicroTemplate::DataSection';

on 'test' => sub {
    requires 'Test::More', '0.98';
};

