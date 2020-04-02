% file: basic-loc1.pl
% Illustrates locative predication, case movement, head raising, and wh movement.
% The copula raises to T.    

% Workflow
% swipl
% ['setup.pl'].
% ['grammars/basic-loc1.pl'].
% showParse([he,be,prs,inside]).

% Then display derivation with d to display a derivation in a wish popup. Wish shows as
% a feather in the mac doc.
% Click dump ps to produce a ps file ltree.ps.


% Similarly
%  showParse([who,be,prs,inside]).

% Empty complementizers, really empty

% Combine with T to yield C
[]::[='T','C'].            % empty declarative complementizer
% Combine with T to yield C, satisfies wh-movement to Spec.
[]::[='T',+wh,'C'].      % empty wh complementizer

% pronouns
% Basic D that has to move to get case.
[he]::['D',-k].

% Wh pronoun that has to move to get case, then move to a position contributing wh.
[who]::['D',-k,-wh].

% L (Location) with D argument
% Primitively [he inside] or [who inside]
[inside]::[='D','L'].

% Copular predicator
% Turns L into B.
[be]::[='L','B'].

% tense
%  combines with B to give T
%  B->T
%  assigns case in Spec
% Triggers head raising, in this grammar of 'be'.
[prs]::[=>'B',+k,'T'].

%  Turns C into R to collapse the tuple for 'who is inside'.
[]::[='C','R'].

% R is the root category.
startCategory('R').
