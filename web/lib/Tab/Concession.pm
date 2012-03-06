package Tab::Item;
use base 'Tab::DBI';
Tab::Item->table('item');
Tab::Item->columns(Primary => qw/id/);
Tab::Item->columns(Essential => qw/name price tourn deadline/);
Tab::Item->columns(Other => qw/description event timestamp/);
Tab::Item->has_a(tourn => 'Tab::Tourn');
Tab::Item->has_a(event => 'Tab::Event');
Tab::Item->has_many(purchases => 'Tab::Purchase', 'item');
__PACKAGE__->_register_datetimes( qw/timestamp/);
__PACKAGE__->_register_datetimes( qw/deadline/);
