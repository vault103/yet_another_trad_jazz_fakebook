\version "2.16.0"

\languageSaveAndChange #default-language

% #bass-tuning

%flatThree   = \markup { \concat { \flat "3" } }
%flatThree   = \markup { "test" }
%flatFifth   = \markup { \concat { \flat 5 } }
%augFifth    = \markup { \concat { \sharp 5 } }

% Major 6 7 maj7
% Minor 6 7 maj7
% Dim   7

% \addChordShape #'fis:6  #bass-tuning  #"2;x;1;3;"  % C6

%%%%  c chords
%
% C
\storePredefinedDiagram #default-fret-table \chordmode {c}
                        #bass-tuning
                        #'(
                            (open 4 3)
                            (place-fret 4 3 5)
                            (place-fret 3 3 1)
                            (place-fret 2 2 3)
                            (place-fret 2 5 5)
                            (open 1 5)
                            (place-fret 1 5 1)
                        )

% Cm
\storePredefinedDiagram #default-fret-table \chordmode {c:m}
                        #bass-tuning
                        #'(
                            (place-fret 4 3 5)
                            (place-fret 3 3 1)
                            (place-fret 3 6 3)
                            (place-fret 2 1 3)
                            (place-fret 2 5 5)
                            (open 1 5)
                            (place-fret 1 5 1)
                        )
% Cdim
\storePredefinedDiagram #default-fret-table \chordmode {c:dim}
                        #bass-tuning
                        #'(
                            (place-fret 4 2 5)
                            (place-fret 3 3 1)
                            (place-fret 3 6 3)
                            (place-fret 2 1 3)
                            (place-fret 2 4 5)
                            (place-fret 1 5 1)
                        )

% Caug
\storePredefinedDiagram #default-fret-table \chordmode {c:aug}
                        #bass-tuning
                        #'(
                            (open 4 3)
                            (place-fret 4 4 5)
                            (place-fret 3 3 1)
                            (place-fret 2 2 3)
                            (place-fret 2 6 5)
                            (place-fret 1 1 5)
                            (place-fret 1 5 1)
                        )
                        

%%%%  c# (cis) chords
%
% C#
\storePredefinedDiagram #default-fret-table \chordmode {cis}
                        #bass-tuning
                        #'(
                            (place-fret 4 1 3)
                            (place-fret 4 4 5)
                            (place-fret 3 4 1)
                            (place-fret 2 3 3)
                            (place-fret 2 6 5)
                            (place-fret 1 1 5)
                            (place-fret 1 6 1)
                        )

% C#m
\storePredefinedDiagram #default-fret-table \chordmode {cis:m}
                        #bass-tuning
                        #'(
                            (open 4 3)
                            (place-fret 4 4 5)
                            (place-fret 3 4 1)
                            (place-fret 2 2 3)
                            (place-fret 2 6 5)
                            (place-fret 1 1 5)
                            (place-fret 1 6 1)
                        )

% C#dim
\storePredefinedDiagram #default-fret-table \chordmode {cis:dim}
                        #bass-tuning
                        #'(
                            (open 4 3)
                            (place-fret 4 3 5)
                            (place-fret 3 4 1)
                            (place-fret 2 2 3)
                            (place-fret 2 5 5)
                            (place-fret 1 6 1)
                            (open 1 5)
                        )

% C#aug
\storePredefinedDiagram #default-fret-table \chordmode {cis:aug}
                        #bass-tuning
                        #'(
                            (place-fret 4 1 3)
                            (place-fret 4 5 5)
                            (open 3 5)
                            (place-fret 3 4 1)
                            (place-fret 2 3 3)
                            (place-fret 1 2 5)
                            (place-fret 1 6 1)
                        )

%%%%  Db (des) chords
%
% Db
\storePredefinedDiagram #default-fret-table \chordmode {des}
                        #bass-tuning
                        #'(
                            (place-fret 4 1 3)
                            (place-fret 4 4 5)
                            (place-fret 3 4 1)
                            (place-fret 2 3 3)
                            (place-fret 2 6 5)
                            (place-fret 1 1 5)
                            (place-fret 1 6 1)
                        )

% Dbm
\storePredefinedDiagram #default-fret-table \chordmode {des:m}
                        #bass-tuning
                        #'(
                            (open 4 3)
                            (place-fret 4 4 5)
                            (place-fret 3 4 1)
                            (place-fret 2 2 3)
                            (place-fret 2 6 5)
                            (place-fret 1 1 5)
                            (place-fret 1 6 1)
                        )

% Dbdim
\storePredefinedDiagram #default-fret-table \chordmode {des:dim}
                        #bass-tuning
                        #'(
                            (open 4 3)
                            (place-fret 4 3 5)
                            (place-fret 3 4 1)
                            (place-fret 2 2 3)
                            (place-fret 2 5 5)
                            (place-fret 1 6 1)
                            (open 1 5)
                        )

% Dbaug
\storePredefinedDiagram #default-fret-table \chordmode {des:aug}
                        #bass-tuning
                        #'(
                            (place-fret 4 1 3)
                            (place-fret 4 5 5)
                            (open 3 5)
                            (place-fret 3 4 1)
                            (place-fret 2 3 3)
                            (place-fret 1 2 5)
                            (place-fret 1 6 1)
                        )

%%%%  d chords
% D
\storePredefinedDiagram #default-fret-table \chordmode {d}
                        #bass-tuning
                        #'(
                            (place-fret 4 2 3)
                            (place-fret 4 5 5)
                            (open 3 5)
                            (place-fret 3 5 1)
                            (open 2 1)
                            (place-fret 2 4 3)
                            (place-fret 1 2 5)
                        )

% Dm
\storePredefinedDiagram #default-fret-table \chordmode {d:m}
                        #bass-tuning
                        #'(
                            (place-fret 4 1 3)
                            (place-fret 4 5 5)
                            (open 3 5)
                            (place-fret 3 5 1)
                            (open 2 1)
                            (place-fret 2 3 3)
                            (place-fret 1 2 5)
                        )

% Ddim
\storePredefinedDiagram #default-fret-table \chordmode {d:dim}
                        #bass-tuning
                        #'(
                            (place-fret 4 1 3)
                            (place-fret 4 4 5)
                            (place-fret 3 5 1)
                            (open 2 1)
                            (place-fret 2 3 3)
                            (place-fret 2 6 5)
                            (place-fret 1 1 5)
                        )

% Daug
\storePredefinedDiagram #default-fret-table \chordmode {d:aug}
                        #bass-tuning
                        #'(
                            (place-fret 4 2 3)
                            (place-fret 4 6 5)
                            (place-fret 3 1 5)
                            (place-fret 3 5 1)
                            (open 2 1)
                            (place-fret 2 4 3)
                            (place-fret 1 3 5)
                        )

%%%%  dis chords
%
% D#
\storePredefinedDiagram #default-fret-table \chordmode {dis}
                        #bass-tuning
                        #'(
                            (place-fret 4 3 3)
                            (place-fret 4 6 5)
                            (place-fret 3 1 5)
                            (place-fret 3 6 1)
                            (place-fret 2 1 1)
                            (place-fret 2 5 3)
                            (open 1 3)
                            (place-fret 1 3 5)
                        )

% D#m
\storePredefinedDiagram #default-fret-table \chordmode {dis:m}
                        #bass-tuning
                        #'(
                            (place-fret 4 2 3)
                            (place-fret 4 6 5)
                            (place-fret 3 1 5)
                            (place-fret 3 6 1)
                            (place-fret 2 1 1)
                            (place-fret 2 4 3)
                            (place-fret 1 3 5)
                        )

% D#dim
\storePredefinedDiagram #default-fret-table \chordmode {dis:dim}
                        #bass-tuning
                        #'(
                            (place-fret 4 2 3)
                            (place-fret 4 5 5)
                            (open 3 5)
                            (place-fret 3 6 1)
                            (place-fret 2 1 1)
                            (place-fret 2 4 3)
                            (place-fret 1 2 5)
                        )

% D#aug
\storePredefinedDiagram #default-fret-table \chordmode {dis:aug}
                        #bass-tuning
                        #'(
                            (place-fret 4 3 3)
                            (place-fret 3 2 5)
                            (place-fret 3 6 1)
                            (place-fret 2 1 1)
                            (place-fret 2 5 3)
                            (open 1 3)
                            (place-fret 1 4 5)
                        )

%%%%  ees chords
%
% Eb
\storePredefinedDiagram #default-fret-table \chordmode {ees}
                        #bass-tuning
                        #'(
                            (place-fret 4 3 3)
                            (place-fret 4 6 5)
                            (place-fret 3 1 5)
                            (place-fret 3 6 1)
                            (place-fret 2 1 1)
                            (place-fret 2 5 3)
                            (open 1 3)
                            (place-fret 1 3 5)
                        )

% Ebm
\storePredefinedDiagram #default-fret-table \chordmode {ees:m}
                        #bass-tuning
                        #'(
                            (place-fret 4 2 3)
                            (place-fret 4 6 5)
                            (place-fret 3 1 5)
                            (place-fret 3 6 1)
                            (place-fret 2 1 1)
                            (place-fret 2 4 3)
                            (place-fret 1 3 5)
                        )

% Ebdim
\storePredefinedDiagram #default-fret-table \chordmode {ees:dim}
                        #bass-tuning
                        #'(
                            (place-fret 4 2 3)
                            (place-fret 4 5 5)
                            (open 3 5)
                            (place-fret 3 6 1)
                            (place-fret 2 1 1)
                            (place-fret 2 4 3)
                            (place-fret 1 2 5)
                        )

% Ebaug
\storePredefinedDiagram #default-fret-table \chordmode {ees:aug}
                        #bass-tuning
                        #'(
                            (place-fret 4 3 3)
                            (place-fret 3 2 5)
                            (place-fret 3 6 1)
                            (place-fret 2 1 1)
                            (place-fret 2 5 3)
                            (open 1 3)
                            (place-fret 1 4 5)
                        )

%%%%  e chords
%
% E
\storePredefinedDiagram #default-fret-table \chordmode {e}
                        #bass-tuning
                        #'(
                            (open 4 1)
                            (place-fret 4 4 3)
                            (place-fret 3 2 5)
                            (place-fret 2 2 1)
                            (place-fret 2 6 3)
                            (place-fret 1 1 3)
                            (place-fret 1 4 5)
                        )

% Em
\storePredefinedDiagram #default-fret-table \chordmode {e:m}
                        #bass-tuning
                        #'(
                            (open 4 1)
                            (place-fret 4 3 3)
                            (place-fret 3 2 5)
                            (place-fret 2 2 1)
                            (place-fret 2 5 3)
                            (open 1 3)
                            (place-fret 1 4 5)
                        )

% Edim
\storePredefinedDiagram #default-fret-table \chordmode {e:dim}
                        #bass-tuning
                        #'(
                            (open 4 1)
                            (place-fret 4 3 3)
                            (place-fret 4 6 5)
                            (place-fret 3 1 5)
                            (place-fret 2 2 1)
                            (place-fret 2 5 3)
                            (open 1 3)
                            (place-fret 1 3 5)
                        )

% Eaug
\storePredefinedDiagram #default-fret-table \chordmode {e:aug}
                        #bass-tuning
                        #'(
                            (open 4 1)
                            (place-fret 4 4 3)
                            (place-fret 3 3 5)
                            (place-fret 2 2 1)
                            (place-fret 2 6 3)
                            (place-fret 1 1 3)
                            (place-fret 1 5 5)
                        )


%%%%  f chords
%
% F
\storePredefinedDiagram #default-fret-table \chordmode {f}
                        #bass-tuning
                        #'(
                            (place-fret 4 1 1)
                            (place-fret 4 5 3)
                            (open 3 3)
                            (place-fret 3 3 5)
                            (place-fret 2 3 1)
                            (place-fret 1 2 3)
                            (place-fret 1 5 5)
                        )
% Fm
\storePredefinedDiagram #default-fret-table \chordmode {f:m}
                        #bass-tuning
                        #'(
                            (place-fret 4 1 1)
                            (place-fret 4 4 3)
                            (place-fret 3 3 5)
                            (place-fret 2 3 1)
                            (place-fret 2 6 3)
                            (place-fret 1 1 3)
                            (place-fret 1 5 5)
                        )

% Fdim
\storePredefinedDiagram #default-fret-table \chordmode {f:dim}
                        #bass-tuning
                        #'(
                            (place-fret 4 1 1)
                            (place-fret 4 4 3)
                            (place-fret 3 2 5)
                            (place-fret 2 3 1)
                            (place-fret 2 6 3)
                            (place-fret 1 1 3)
                            (place-fret 1 4 5)
                        )


% Faug
\storePredefinedDiagram #default-fret-table \chordmode {f:aug}
                        #bass-tuning
                        #'(
                            (place-fret 4 1 1)
                            (place-fret 4 5 3)
                            (open 3 3)
                            (place-fret 3 4 5)
                            (place-fret 2 3 1)
                            (place-fret 1 2 3)
                            (place-fret 1 6 5)
                        )

%%%%  fis chords
%
% F#
\storePredefinedDiagram #default-fret-table \chordmode {fis}
                        #bass-tuning
                        #'(
                            (place-fret 4 2 1)
                            (place-fret 4 6 3)
                            (place-fret 3 1 3)
                            (place-fret 3 4 5)
                            (place-fret 2 4 1)
                            (place-fret 1 3 3)
                            (place-fret 1 6 5)
                        )


% F#m
\storePredefinedDiagram #default-fret-table \chordmode {fis:m}
                        #bass-tuning
                        #'(
                            (place-fret 4 2 1)
                            (place-fret 4 5 3)
                            (open 3 3)
                            (place-fret 3 4 5)
                            (place-fret 2 4 1)
                            (place-fret 1 2 3)
                            (place-fret 1 6 5)
                        )

% F#dim
\storePredefinedDiagram #default-fret-table \chordmode {fis:dim}
                        #bass-tuning
                        #'(
                            (place-fret 4 2 1)
                            (place-fret 4 5 3)
                            (open 3 3)
                            (place-fret 3 3 5)
                            (place-fret 2 4 1)
                            (place-fret 1 2 3)
                            (place-fret 1 5 5)
                        )

% F#aug
\storePredefinedDiagram #default-fret-table \chordmode {fis:aug}
                        #bass-tuning
                        #'(
                            (place-fret 4 2 1)
                            (place-fret 4 6 3)
                            (place-fret 3 1 3)
                            (place-fret 3 5 5)
                            (open 2 5)
                            (place-fret 2 4 1)
                            (place-fret 1 3 3)
                        )

%%%%  ges chords
%
% Gb
\storePredefinedDiagram #default-fret-table \chordmode {ges}
                        #bass-tuning
                        #'(
                            (place-fret 4 2 1)
                            (place-fret 4 6 3)
                            (place-fret 3 1 3)
                            (place-fret 3 4 5)
                            (place-fret 2 4 1)
                            (place-fret 1 3 3)
                            (place-fret 1 6 5)
                        )

% Gbm
\storePredefinedDiagram #default-fret-table \chordmode {ges:m}
                        #bass-tuning
                        #'(
                            (place-fret 4 2 1)
                            (place-fret 4 5 3)
                            (open 3 3)
                            (place-fret 3 4 5)
                            (place-fret 2 4 1)
                            (place-fret 1 2 3)
                            (place-fret 1 6 5)
                        )


% Gbdim
\storePredefinedDiagram #default-fret-table \chordmode {ges:dim}
                        #bass-tuning
                        #'(
                            (place-fret 4 2 1)
                            (place-fret 4 5 3)
                            (open 3 3)
                            (place-fret 3 3 5)
                            (place-fret 2 4 1)
                            (place-fret 1 2 3)
                            (place-fret 1 5 5)
                        )


% Gbaug
\storePredefinedDiagram #default-fret-table \chordmode {ges:aug}
                        #bass-tuning
                        #'(
                            (place-fret 4 2 1)
                            (place-fret 4 6 3)
                            (place-fret 3 1 3)
                            (place-fret 3 5 5)
                            (open 2 5)
                            (place-fret 2 4 1)
                            (place-fret 1 3 3)
                        )

%%%%  g chords
%
% G
\storePredefinedDiagram #default-fret-table \chordmode {g}
                        #bass-tuning
                        #'(
                            (place-fret 4 3 1)
                            (place-fret 3 2 3)
                            (place-fret 3 5 5)
                            (open 2 5)
                            (place-fret 2 5 1)
                            (open 1 1)
                            (place-fret 1 4 3)
                        )

% Gm
\storePredefinedDiagram #default-fret-table \chordmode {g:m}
                        #bass-tuning
                        #'(
                            (place-fret 4 3 1)
                            (place-fret 4 6 3)
                            (place-fret 3 1 3)
                            (place-fret 3 5 5)
                            (open 2 5)
                            (place-fret 2 5 1)
                            (open 1 1)
                            (place-fret 1 3 3)
                        )


% Gdim
\storePredefinedDiagram #default-fret-table \chordmode {g:dim}
                        #bass-tuning
                        #'(
                            (place-fret 4 3 1)
                            (place-fret 4 6 3)
                            (place-fret 3 1 3)
                            (place-fret 3 4 5)
                            (place-fret 2 5 1)
                            (open 1 1)
                            (place-fret 1 3 3)
                            (place-fret 1 6 5)
                        )


% Gaug
\storePredefinedDiagram #default-fret-table \chordmode {g:aug}
                        #bass-tuning
                        #'(
                            (place-fret 4 3 1)
                            (place-fret 3 2 3)
                            (place-fret 3 6 5)
                            (place-fret 2 1 5)
                            (place-fret 2 5 1)
                            (open 1 1)
                            (place-fret 1 4 3)
                        )

%%%%  gis chords
%
% G#
\storePredefinedDiagram #default-fret-table \chordmode {gis}
                        #bass-tuning
                        #'(
                            (place-fret 4 4 1)
                            (place-fret 3 3 3)
                            (place-fret 3 6 5)
                            (place-fret 2 1 5)
                            (place-fret 2 6 1)
                            (place-fret 1 1 1)
                            (place-fret 1 5 3)
                        )

% G#m
\storePredefinedDiagram #default-fret-table \chordmode {gis:m}
                        #bass-tuning
                        #'(
                            (place-fret 4 4 1)
                            (place-fret 3 2 3)
                            (place-fret 3 6 5)
                            (place-fret 2 1 5)
                            (place-fret 2 6 1)
                            (place-fret 1 1 1)
                            (place-fret 1 4 3)
                        )

% G#dim
\storePredefinedDiagram #default-fret-table \chordmode {gis:dim}
                        #bass-tuning
                        #'(
                            (place-fret 4 4 1)
                            (place-fret 3 2 3)
                            (place-fret 3 5 5)
                            (open 2 5)
                            (place-fret 2 6 1)
                            (place-fret 1 1 1)
                            (place-fret 1 4 3)
                        )

% G#aug
\storePredefinedDiagram #default-fret-table \chordmode {gis:aug}
                        #bass-tuning
                        #'(
                            (open 4 5)
                            (place-fret 4 4 1)
                            (place-fret 3 3 3)
                            (place-fret 2 2 5)
                            (place-fret 2 6 1)
                            (place-fret 1 1 1)
                            (place-fret 1 5 3)
                        )

%%%%  aes chords
%
% Ab
\storePredefinedDiagram #default-fret-table \chordmode {aes}
                        #bass-tuning
                        #'(
                            (place-fret 4 4 1)
                            (place-fret 3 3 3)
                            (place-fret 3 6 5)
                            (place-fret 2 1 5)
                            (place-fret 2 6 1)
                            (place-fret 1 1 1)
                            (place-fret 1 5 3)
                        )

% Abm
\storePredefinedDiagram #default-fret-table \chordmode {aes:m}
                        #bass-tuning
                        #'(
                            (place-fret 4 4 1)
                            (place-fret 3 2 3)
                            (place-fret 3 6 5)
                            (place-fret 2 1 5)
                            (place-fret 2 6 1)
                            (place-fret 1 1 1)
                            (place-fret 1 4 3)
                        )


% Abdim
\storePredefinedDiagram #default-fret-table \chordmode {aes:dim}
                        #bass-tuning
                        #'(
                            (place-fret 4 4 1)
                            (place-fret 3 2 3)
                            (place-fret 3 5 5)
                            (open 2 5)
                            (place-fret 2 6 1)
                            (place-fret 1 1 1)
                            (place-fret 1 4 3)
                        )

% Abaug
\storePredefinedDiagram #default-fret-table \chordmode {aes:aug}
                        #bass-tuning
                        #'(
                            (open 4 5)
                            (place-fret 4 4 1)
                            (place-fret 3 3 3)
                            (place-fret 2 2 5)
                            (place-fret 2 6 1)
                            (place-fret 1 1 1)
                            (place-fret 1 5 3)
                        )

%%%%  a chords
%
% A
\storePredefinedDiagram #default-fret-table \chordmode {a}
                        #bass-tuning
                        #'(
                            (open 4 5)
                            (place-fret 4 5 1)
                            (open 3 1)
                            (place-fret 3 4 3)
                            (place-fret 2 2 5)
                            (place-fret 1 2 1)
                            (place-fret 1 6 3)
                        )

% Am
\storePredefinedDiagram #default-fret-table \chordmode {a:m}
                        #bass-tuning
                        #'(
                            (open 4 5)
                            (place-fret 4 5 1)
                            (open 3 1)
                            (place-fret 3 3 3)
                            (place-fret 2 2 5)
                            (place-fret 1 2 1)
                            (place-fret 1 5 3)
                        )

% Adim
\storePredefinedDiagram #default-fret-table \chordmode {a:dim}
                        #bass-tuning
                        #'(
                            (place-fret 4 5 1)
                            (open 3 1)
                            (place-fret 3 3 3)
                            (place-fret 3 6 5)
                            (place-fret 2 1 5)
                            (place-fret 1 2 1)
                            (place-fret 1 5 3)
                        )

% Aaug
\storePredefinedDiagram #default-fret-table \chordmode {a:aug}
                        #bass-tuning
                        #'(
                            (place-fret 4 1 5)
                            (place-fret 4 5 1)
                            (open 3 1)
                            (place-fret 3 4 3)
                            (place-fret 2 3 5)
                            (place-fret 1 2 1)
                            (place-fret 1 6 3)
                        )


%%%%  ais chords
%
% A#
\storePredefinedDiagram #default-fret-table \chordmode {ais}
                        #bass-tuning
                        #'(
                            (place-fret 4 1 5)
                            (place-fret 4 6 1)
                            (place-fret 3 1 1)
                            (place-fret 3 5 3)
                            (open 2 3)
                            (place-fret 2 3 5)
                            (place-fret 1 3 1)
                        )

% A#m
\storePredefinedDiagram #default-fret-table \chordmode {ais:m}
                        #bass-tuning
                        #'(
                            (place-fret 4 1 5)
                            (place-fret 4 6 1)
                            (place-fret 3 1 1)
                            (place-fret 3 4 3)
                            (place-fret 2 3 5)
                            (place-fret 1 3 1)
                            (place-fret 1 6 3)
                        )

% A#dim
\storePredefinedDiagram #default-fret-table \chordmode {ais:dim}
                        #bass-tuning
                        #'(
                            (open 4 5)
                            (place-fret 4 6 1)
                            (place-fret 3 1 1)
                            (place-fret 3 4 3)
                            (place-fret 2 2 5)
                            (place-fret 1 3 1)
                            (place-fret 1 6 3)
                        )

% A#aug
\storePredefinedDiagram #default-fret-table \chordmode {ais:aug}
                        #bass-tuning
                        #'(
                            (place-fret 4 2 5)
                            (place-fret 4 6 1)
                            (place-fret 3 1 1)
                            (place-fret 3 5 3)
                            (open 2 3)
                            (place-fret 2 4 5)
                            (place-fret 1 3 1)
                        )

%%%%  bes chords
%
% Bb
\storePredefinedDiagram #default-fret-table \chordmode {bes}
                        #bass-tuning
                        #'(
                            (place-fret 4 1 5)
                            (place-fret 4 6 1)
                            (place-fret 3 1 1)
                            (place-fret 3 5 3)
                            (open 2 3)
                            (place-fret 2 3 5)
                            (place-fret 1 3 1)
                        )

% Bbm
\storePredefinedDiagram #default-fret-table \chordmode {bes:m}
                        #bass-tuning
                        #'(
                            (place-fret 4 1 5)
                            (place-fret 4 6 1)
                            (place-fret 3 1 1)
                            (place-fret 3 4 3)
                            (place-fret 2 3 5)
                            (place-fret 1 3 1)
                            (place-fret 1 6 3)
                        )

% Bbdim
\storePredefinedDiagram #default-fret-table \chordmode {bes:dim}
                        #bass-tuning
                        #'(
                            (open 4 5)
                            (place-fret 4 6 1)
                            (place-fret 3 1 1)
                            (place-fret 3 4 3)
                            (place-fret 2 2 5)
                            (place-fret 1 3 1)
                            (place-fret 1 6 3)
                        )

% Bbaug
\storePredefinedDiagram #default-fret-table \chordmode {bes:aug}
                        #bass-tuning
                        #'(
                            (place-fret 4 2 5)
                            (place-fret 4 6 1)
                            (place-fret 3 1 1)
                            (place-fret 3 5 3)
                            (open 2 3)
                            (place-fret 2 4 5)
                            (place-fret 1 3 1)
                        )

%%%%  b chords
%
% B
\storePredefinedDiagram #default-fret-table \chordmode {b}
                        #bass-tuning
                        #'(
                            (place-fret 4 2 5)
                            (place-fret 3 2 1)
                            (place-fret 3 6 3)
                            (place-fret 2 1 3)
                            (place-fret 2 4 5)
                            (place-fret 1 4 1)
                        )

% Bm
\storePredefinedDiagram #default-fret-table \chordmode {b:m}
                        #bass-tuning
                        #'(
                            (place-fret 4 2 5)
                            (place-fret 3 2 1)
                            (place-fret 3 5 3)
                            (open 2 3)
                            (place-fret 2 4 5)
                            (place-fret 1 4 1)
                        )

% Bdim
\storePredefinedDiagram #default-fret-table \chordmode {b:dim}
                        #bass-tuning
                        #'(
                            (place-fret 4 1 5)
                            (place-fret 3 2 1)
                            (place-fret 3 5 3)
                            (open 2 3)
                            (place-fret 2 3 5)
                            (place-fret 1 4 1)
                        )

% Baug
\storePredefinedDiagram #default-fret-table \chordmode {b:aug}
                        #bass-tuning
                        #'(
                            (place-fret 4 3 5)
                            (place-fret 3 2 1)
                            (place-fret 3 6 3)
                            (place-fret 2 1 3)
                            (place-fret 2 5 5)
                            (open 1 5)
                            (place-fret 1 4 1)
                        )
