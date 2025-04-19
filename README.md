# Glob Grammar

### Glob::Grammar

Grammar for (the Glob language)[https://en.wikipedia.org/wiki/Glob_(programming)].  

Supports ? and * and ranges (at least some).  

### Glob::ToRegexActions

If passed as the action to Glob::Grammar, it converts the glob into a (string) regex that can be used for matching against

### Sample usage

```
use	Glob::Grammar;
use	Glob::ToRegexActions;

my $fetched-regex = Glob::Grammar.parse('Module::Name::*', actions => Glob::ToRegexActions.new()).made;
say $fetched-regex;
# OUTPUT: ^Module\\:\\:Name\\:\\:.*$

my $match = 'Module::Name::Complete' ~~ /<$fetched-regex>/;
say $match;
# OUTPUT: Module::Name::Complete
```
