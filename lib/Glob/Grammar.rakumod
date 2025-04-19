use	v6.d;

grammar Glob::Grammar {
	token TOP {
		( <char> )+
	}

	token	char		{ <alnum> | <star> | <quaestio> | <range> | <other> }
	token	alnum		{ \w }
	token	star		{ '*' }
	token	quaestio	{ '?' }
	token	range		{ '[' <range=-[ \] ]>* ']' }
	token	other		{ . }
}