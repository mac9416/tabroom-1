package Tab::BallotValue;
use base 'Tab::DBI';
Tab::BallotValue->table('ballot_value');
Tab::BallotValue->columns(Primary => qw/id/);
Tab::BallotValue->columns(Essential => qw/ballot tag student tiebreak value timestamp content cat_id/);
Tab::BallotValue->columns(TEMP => qw/entryid/);

Tab::BallotValue->has_a(ballot => 'Tab::Ballot');
Tab::BallotValue->has_a(student => 'Tab::Student');

__PACKAGE__->_register_dates( qw/timestamp/);

