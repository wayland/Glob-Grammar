use	v6.d;

class	Glob::ToRegexActions {
	method	TOP($match)	{
		my @made-elements = gather for |$match[0] {
			take $_<char>.made;
		};
		$match.make: '^' ~ @made-elements.join('') ~ '$';
	}
	method	char($/)	{
		for <alnum star quaestio range other> {
			$/{$_} and make($/{$_}.made);
		}
	}
	method	alnum($/)	{ make(~$/); }
	method	star($/)	{ make('.*'); }
	method	quaestio($/){ make('.');}
	method	range($/)	{ make('<[' ~ $/<range> ~ ']>') }
	method	other($/)	{ make('\\' ~ $/.Str); }
}
