
\version "2.16.0"

\languageSaveAndChange #default-language

% TODO 6.9

% #ukulele-tuning

% \addChordShape #'bes    #ukulele-tuning   #"3-(;2;1;1)"  % Bb

% Major
\addChordShape #'bes    #ukulele-tuning #"3;2;1;1;"
\addChordShape #'ges    #ukulele-tuning #"3;1;2;1;"
\addChordShape #'des    #ukulele-tuning #"1;1;1;4;"
% Minor
\addChordShape #'bes:m  #ukulele-tuning #"3;1;1;1;"
\addChordShape #'g:m    #ukulele-tuning #"3;2;3;1;"
\addChordShape #'aes:m  #ukulele-tuning #"1;3;4;2;"
\addChordShape #'ges:m  #ukulele-tuning #"2;1;2;4;"
\addChordShape #'ees:m  #ukulele-tuning #"3;3;2;1;"

% Minor (maj7)
\addChordShape #'bes:m7+ #ukulele-tuning #"2;1;1;1;"
\addChordShape #'d:m7+  #ukulele-tuning #"2;2;1;4;"
\addChordShape #'aes:m7+ #ukulele-tuning #"1;3;3;2;"

% Minor 7
\addChordShape #'d:m7   #ukulele-tuning #"2;2;1;3;"
\addChordShape #'f:m7   #ukulele-tuning #"1;3;1;3;"

% Minor 6
\addChordShape #'b:m6   #ukulele-tuning #"1;2;2;2;"
\addChordShape #'d:m6   #ukulele-tuning #"2;2;1;2;"
\addChordShape #'f:m6   #ukulele-tuning #"1;2;1;3;"
\addChordShape #'aes:m6 #ukulele-tuning #"1;3;1;2;"
\addChordShape #'bes:m6 #ukulele-tuning #"3;1;3;1;"

% 6
\addChordShape #'cis:6  #ukulele-tuning #"1;1;1;1;"
\addChordShape #'b:6    #ukulele-tuning #"1;3;2;2;"
\addChordShape #'f:6    #ukulele-tuning #"2;2;1;3;"
\addChordShape #'aes:6  #ukulele-tuning #"1;3;1;3;"

% 7
\addChordShape #'bes:7  #ukulele-tuning #"1;2;1;1;"
\addChordShape #'des:7  #ukulele-tuning #"1;1;1;2;"
\addChordShape #'f:7    #ukulele-tuning #"2;3;1;3;"
\addChordShape #'aes:7  #ukulele-tuning #"1;3;2;3;"
\addChordShape #'g:7    #ukulele-tuning #"x;2;1;2;"
\addChordShape #'ges:7  #ukulele-tuning #"3;4;2;1;"

% maj7
\addChordShape #'bes:maj7 #ukulele-tuning #"2;2;1;1;"
\addChordShape #'des:maj7 #ukulele-tuning #"1;1;1;3;"
\addChordShape #'aes:maj7 #ukulele-tuning #"1;3;3;3;"

% Diminished
\addChordShape #'b:dim  #ukulele-tuning #"1;2;1;2;"

% Augmented
\addChordShape #'bes:aug #ukulele-tuning #"3;2;2;1;"
\addChordShape #'a:aug  #ukulele-tuning #"2;1;1;4;"

% Augmented 7
\addChordShape #'bes:aug7 #ukulele-tuning #"1;2;2;1;"
\addChordShape #'des:aug7 #ukulele-tuning #"2;1;1;2;"
\addChordShape #'f:aug7   #ukulele-tuning #"2;3;1;4;"
\addChordShape #'aes:aug7 #ukulele-tuning #"1;4;2;3;"

% 9
\addChordShape #'des:9  #ukulele-tuning #"4;3;1;4;"

% 6/9
\addChordShape #'ges:6.9 #ukulele-tuning #"1;3;2;1;"
\addChordShape #'des:6.9 #ukulele-tuning #"3;3;1;4;"

% 13th
\addChordShape #'bes:13 #ukulele-tuning #"1;2;3;1;"
\addChordShape #'g:13   #ukulele-tuning #"x;5;7;7;"

%%%  Add predefined chords

% definitions of predefined diagrams below here

%%%%  c chords
%
% C
\storePredefinedDiagram #default-fret-table \chordmode {c}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'bes ukulele-tuning))

% Cmaj7
\storePredefinedDiagram #default-fret-table \chordmode {c:maj7}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'bes:maj7 ukulele-tuning))
% C6
\storePredefinedDiagram #default-fret-table \chordmode {c:6}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'b:6 ukulele-tuning))
% Cm
\storePredefinedDiagram #default-fret-table \chordmode {c:m}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'bes:m ukulele-tuning))
% Cm(maj7)
\storePredefinedDiagram #default-fret-table \chordmode {c:m7+}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'bes:m7+ ukulele-tuning))
% Cm7
\storePredefinedDiagram #default-fret-table \chordmode {c:m7}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'cis:6 ukulele-tuning))
% Cm6
\storePredefinedDiagram #default-fret-table \chordmode {c:m6}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'b:m6 ukulele-tuning))
% C7
\storePredefinedDiagram #default-fret-table \chordmode {c:7}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'bes:7 ukulele-tuning))
% Cdim
\storePredefinedDiagram #default-fret-table \chordmode {c:dim}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'b:dim ukulele-tuning))
% Cdim7
\storePredefinedDiagram #default-fret-table \chordmode {c:dim7}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'b:dim ukulele-tuning))
% Caug
\storePredefinedDiagram #default-fret-table \chordmode {c:aug}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'bes:aug ukulele-tuning))
% Caug7
\storePredefinedDiagram #default-fret-table \chordmode {c:aug7}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'bes:aug7 ukulele-tuning))
%%%%  c# (cis) chords
%
% C#
\storePredefinedDiagram #default-fret-table \chordmode {cis}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'des ukulele-tuning))
% C#maj7
\storePredefinedDiagram #default-fret-table \chordmode {cis:maj7}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'des:maj7 ukulele-tuning))
% C#6
\storePredefinedDiagram #default-fret-table \chordmode {cis:6}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'cis:6 ukulele-tuning))
% C#m
\storePredefinedDiagram #default-fret-table \chordmode {cis:m}
                        #ukulele-tuning
                        #(offset-fret 3 (chord-shape 'bes:m ukulele-tuning))
% C#m(maj7)
\storePredefinedDiagram #default-fret-table \chordmode {cis:m7+}
                        #ukulele-tuning
                        #(offset-fret 3 (chord-shape 'bes:m7+ ukulele-tuning))
% C#m7
\storePredefinedDiagram #default-fret-table \chordmode {cis:m7}
                        #ukulele-tuning
                        #(offset-fret 3 (chord-shape 'cis:6 ukulele-tuning))
% C#m6
\storePredefinedDiagram #default-fret-table \chordmode {cis:m6}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'b:m6 ukulele-tuning))
% C#7
\storePredefinedDiagram #default-fret-table \chordmode {cis:7}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'des:7 ukulele-tuning))
% C#dim
\storePredefinedDiagram #default-fret-table \chordmode {cis:dim}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'b:dim ukulele-tuning))
% C#dim7
\storePredefinedDiagram #default-fret-table \chordmode {cis:dim7}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'b:dim ukulele-tuning))
% C#aug
\storePredefinedDiagram #default-fret-table \chordmode {cis:aug}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'a:aug ukulele-tuning))
% C#aug7
\storePredefinedDiagram #default-fret-table \chordmode {cis:aug7}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'des:aug7 ukulele-tuning))
%%%%  Db (des) chords
%
% Db
\storePredefinedDiagram #default-fret-table \chordmode {des}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'des ukulele-tuning))
% Dbmaj7
\storePredefinedDiagram #default-fret-table \chordmode {des:maj7}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'des:maj7 ukulele-tuning))
% Db6
\storePredefinedDiagram #default-fret-table \chordmode {des:6}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'cis:6 ukulele-tuning))
% Dbm
\storePredefinedDiagram #default-fret-table \chordmode {des:m}
                        #ukulele-tuning
                        #(offset-fret 3 (chord-shape 'bes:m ukulele-tuning))
% Dbm(maj7)
\storePredefinedDiagram #default-fret-table \chordmode {des:m7+}
                        #ukulele-tuning
                        #(offset-fret 3 (chord-shape 'bes:m7+ ukulele-tuning))
% Dbm7
\storePredefinedDiagram #default-fret-table \chordmode {des:m7}
                        #ukulele-tuning
                        #(offset-fret 3 (chord-shape 'cis:6 ukulele-tuning))
% Dbm6
\storePredefinedDiagram #default-fret-table \chordmode {des:m6}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'b:m6 ukulele-tuning))
% Db7
\storePredefinedDiagram #default-fret-table \chordmode {des:7}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'des:7 ukulele-tuning))
% Dbdim
\storePredefinedDiagram #default-fret-table \chordmode {des:dim}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'b:dim ukulele-tuning))
% Dbdim7
\storePredefinedDiagram #default-fret-table \chordmode {des:dim7}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'b:dim ukulele-tuning))
% Dbaug
\storePredefinedDiagram #default-fret-table \chordmode {des:aug}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'a:aug ukulele-tuning))
% Dbaug7
\storePredefinedDiagram #default-fret-table \chordmode {des:aug7}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'des:aug7 ukulele-tuning))

% Db9
\storePredefinedDiagram #default-fret-table \chordmode {des:9}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'des:9 ukulele-tuning))

%%%%  d chords
% D
\storePredefinedDiagram #default-fret-table \chordmode {d}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'des ukulele-tuning))
% Dmaj7
\storePredefinedDiagram #default-fret-table \chordmode {d:maj7}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'des:maj7 ukulele-tuning))
% D6
\storePredefinedDiagram #default-fret-table \chordmode {d:6}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'cis:6 ukulele-tuning))
% Dm
\storePredefinedDiagram #default-fret-table \chordmode {d:m}
                        #ukulele-tuning
                        #"2;2;1;x;"
% Dm(maj7)
\storePredefinedDiagram #default-fret-table \chordmode {d:m7+}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'd:m7+ ukulele-tuning))
% Dm7
\storePredefinedDiagram #default-fret-table \chordmode {d:m7}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'd:m7 ukulele-tuning))
% Dm6
\storePredefinedDiagram #default-fret-table \chordmode {d'':m6}
                        #ukulele-tuning
                        #(offset-fret 4 (chord-shape 'bes:m6 ukulele-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {d:m6}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'd:m6 ukulele-tuning))
% D7
\storePredefinedDiagram #default-fret-table \chordmode {d:7}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'des:7 ukulele-tuning))
% Ddim
\storePredefinedDiagram #default-fret-table \chordmode {d:dim}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'b:dim ukulele-tuning))
% Ddim7
\storePredefinedDiagram #default-fret-table \chordmode {d:dim7}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'b:dim ukulele-tuning))
% Daug
\storePredefinedDiagram #default-fret-table \chordmode {d:aug}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'bes:aug ukulele-tuning))
% Daug7
\storePredefinedDiagram #default-fret-table \chordmode {d:aug7}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'des:aug7 ukulele-tuning))

% D6/9
\storePredefinedDiagram #default-fret-table \chordmode {d:6.9}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'des:6.9 ukulele-tuning))

%%%%  dis chords
%
% D#
\storePredefinedDiagram #default-fret-table \chordmode {dis}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'des ukulele-tuning))
% D#maj7
\storePredefinedDiagram #default-fret-table \chordmode {dis:maj7}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'des:maj7 ukulele-tuning))
% D#6
\storePredefinedDiagram #default-fret-table \chordmode {dis:6}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'cis:6 ukulele-tuning))
% D#m
\storePredefinedDiagram #default-fret-table \chordmode {dis:m}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'ees:m ukulele-tuning))
% D#m(maj7)
\storePredefinedDiagram #default-fret-table \chordmode {dis:m7+}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'd:m7+ ukulele-tuning))
% D#m7
\storePredefinedDiagram #default-fret-table \chordmode {dis:m7}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'd:m7 ukulele-tuning))
% D#m6
\storePredefinedDiagram #default-fret-table \chordmode {dis'':m6}
                        #ukulele-tuning
                        #(offset-fret 5 (chord-shape 'bes:m6 ukulele-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {dis:m6}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'd:m6 ukulele-tuning))
% D#7
\storePredefinedDiagram #default-fret-table \chordmode {dis:7}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'des:7 ukulele-tuning))
% D#dim
\storePredefinedDiagram #default-fret-table \chordmode {dis:dim}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'b:dim ukulele-tuning))
% D#dim7
\storePredefinedDiagram #default-fret-table \chordmode {dis:dim7}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'b:dim ukulele-tuning))
% D#aug
\storePredefinedDiagram #default-fret-table \chordmode {dis:aug}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'bes:aug ukulele-tuning))
% D#aug7
\storePredefinedDiagram #default-fret-table \chordmode {dis:aug7}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'des:aug7 ukulele-tuning))

%%%%  ees chords
%
% Eb
\storePredefinedDiagram #default-fret-table \chordmode {ees}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'des ukulele-tuning))
% Ebmaj7
\storePredefinedDiagram #default-fret-table \chordmode {ees:maj7}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'des:maj7 ukulele-tuning))
% Eb6
\storePredefinedDiagram #default-fret-table \chordmode {ees:6}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'cis:6 ukulele-tuning))
% Ebm
\storePredefinedDiagram #default-fret-table \chordmode {ees:m}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'ees:m ukulele-tuning))
% Ebm(maj7)
\storePredefinedDiagram #default-fret-table \chordmode {ees:m7+}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'd:m7+ ukulele-tuning))
% Ebm7
\storePredefinedDiagram #default-fret-table \chordmode {ees:m7}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'd:m7 ukulele-tuning))
% Ebm6
\storePredefinedDiagram #default-fret-table \chordmode {ees'':m6}
                        #ukulele-tuning
                        #(offset-fret 5 (chord-shape 'bes:m6 ukulele-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ees:m6}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'd:m6 ukulele-tuning))
% Eb7
\storePredefinedDiagram #default-fret-table \chordmode {ees:7}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'des:7 ukulele-tuning))
% Ebdim
\storePredefinedDiagram #default-fret-table \chordmode {ees:dim}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'b:dim ukulele-tuning))
% Ebdim7
\storePredefinedDiagram #default-fret-table \chordmode {ees:dim7}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'b:dim ukulele-tuning))
% Ebaug
\storePredefinedDiagram #default-fret-table \chordmode {ees:aug}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'bes:aug ukulele-tuning))
% Ebaug7
\storePredefinedDiagram #default-fret-table \chordmode {ees:aug7}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'des:aug7 ukulele-tuning))

%%%%  e chords
%
% E
\storePredefinedDiagram #default-fret-table \chordmode {e}
                        #ukulele-tuning
                        #(offset-fret 3 (chord-shape 'des ukulele-tuning))
% Emaj7
\storePredefinedDiagram #default-fret-table \chordmode {e:maj7}
                        #ukulele-tuning
                        #(offset-fret 3 (chord-shape 'des:maj7 ukulele-tuning))
% E6
\storePredefinedDiagram #default-fret-table \chordmode {e:6}
                        #ukulele-tuning
                        #(offset-fret 3 (chord-shape 'cis:6 ukulele-tuning))
% Em
\storePredefinedDiagram #default-fret-table \chordmode {e:m}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'ees:m ukulele-tuning))
% Em(maj7)
\storePredefinedDiagram #default-fret-table \chordmode {e:m7+}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'd:m7+ ukulele-tuning))
% Em7
\storePredefinedDiagram #default-fret-table \chordmode {e:m7}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'd:m7 ukulele-tuning))
% Em6
\storePredefinedDiagram #default-fret-table \chordmode {e'':m6}
                        #ukulele-tuning
                        #(offset-fret 6 (chord-shape 'bes:m6 ukulele-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {e:m6}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'd:m6 ukulele-tuning))
% E7
\storePredefinedDiagram #default-fret-table \chordmode {e:7}
                        #ukulele-tuning
                        #(offset-fret 3 (chord-shape 'des:7 ukulele-tuning))
% Edim
\storePredefinedDiagram #default-fret-table \chordmode {e:dim}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'b:dim ukulele-tuning))
% Edim7
\storePredefinedDiagram #default-fret-table \chordmode {e:dim7}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'b:dim ukulele-tuning))
% Eaug
\storePredefinedDiagram #default-fret-table \chordmode {e:aug}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'bes:aug ukulele-tuning))
% Eaug7
\storePredefinedDiagram #default-fret-table \chordmode {e:aug7}
                        #ukulele-tuning
                        #(offset-fret 3 (chord-shape 'des:aug7 ukulele-tuning))

%%%%  f chords
%
% F
\storePredefinedDiagram #default-fret-table \chordmode {f''}
                        #ukulele-tuning
                        #(offset-fret 4 (chord-shape 'des ukulele-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {f}
                        #ukulele-tuning
                        #"2;x;1;3;"
% Fmaj7
\storePredefinedDiagram #default-fret-table \chordmode {f:maj7}
                        #ukulele-tuning
                        #(offset-fret 4 (chord-shape 'des:maj7 ukulele-tuning))
% F6
\storePredefinedDiagram #default-fret-table \chordmode {f:6}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'f:6 ukulele-tuning))
% Fm
\storePredefinedDiagram #default-fret-table \chordmode {f:m}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'ees:m ukulele-tuning))
% Fm(maj7)
\storePredefinedDiagram #default-fret-table \chordmode {f:m7+}
                        #ukulele-tuning
                        #(offset-fret 3 (chord-shape 'd:m7+ ukulele-tuning))
% Fm7
\storePredefinedDiagram #default-fret-table \chordmode {f'':m7}
                        #ukulele-tuning
                        #(offset-fret 3 (chord-shape 'd:m7 ukulele-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {f:m7}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'f:m7 ukulele-tuning))
% Fm6
\storePredefinedDiagram #default-fret-table \chordmode {f'':m6}
                        #ukulele-tuning
                        #(offset-fret 3 (chord-shape 'd:m6 ukulele-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {f:m6}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'f:m6 ukulele-tuning))
% F7
\storePredefinedDiagram #default-fret-table \chordmode {f:7}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'f:7 ukulele-tuning))
% Fdim
\storePredefinedDiagram #default-fret-table \chordmode {f:dim}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'b:dim ukulele-tuning))
% Fdim7
\storePredefinedDiagram #default-fret-table \chordmode {f:dim7}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'b:dim ukulele-tuning))
% Faug
\storePredefinedDiagram #default-fret-table \chordmode {f:aug}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'a:aug ukulele-tuning))
% Faug7
\storePredefinedDiagram #default-fret-table \chordmode {f:aug7}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'f:aug7 ukulele-tuning))

%%%%  fis chords
%
% F#
\storePredefinedDiagram #default-fret-table \chordmode {fis}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'ges ukulele-tuning))
% F#maj7
\storePredefinedDiagram #default-fret-table \chordmode {fis:maj7}
                        #ukulele-tuning
                        #(offset-fret 5 (chord-shape 'des:maj7 ukulele-tuning))
% F#6
\storePredefinedDiagram #default-fret-table \chordmode {fis:6}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'f:6 ukulele-tuning))
% F#m
\storePredefinedDiagram #default-fret-table \chordmode {fis:m}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'ges:m ukulele-tuning))
% F#m(maj7)
\storePredefinedDiagram #default-fret-table \chordmode {fis:m7+}
                        #ukulele-tuning
                        #(offset-fret 4 (chord-shape 'd:m7+ ukulele-tuning))
% F#m7
\storePredefinedDiagram #default-fret-table \chordmode {fis'':m7}
                        #ukulele-tuning
                        #(offset-fret 4 (chord-shape 'd:m7 ukulele-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {fis:m7}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'f:m7 ukulele-tuning))
% F#m6
\storePredefinedDiagram #default-fret-table \chordmode {fis'':m6}
                        #ukulele-tuning
                        #(offset-fret 4 (chord-shape 'd:m6 ukulele-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {fis:m6}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'f:m6 ukulele-tuning))
% F#7
\storePredefinedDiagram #default-fret-table \chordmode {fis:7}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'ges:7 ukulele-tuning))
% F#dim
\storePredefinedDiagram #default-fret-table \chordmode {fis:dim}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'b:dim ukulele-tuning))
% F#dim7
\storePredefinedDiagram #default-fret-table \chordmode {fis:dim7}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'b:dim ukulele-tuning))
% F#aug
\storePredefinedDiagram #default-fret-table \chordmode {fis:aug}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'bes:aug ukulele-tuning))
% F#aug7
\storePredefinedDiagram #default-fret-table \chordmode {fis:aug7}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'f:aug7 ukulele-tuning))

%%%%  ges chords
%
% Gb
\storePredefinedDiagram #default-fret-table \chordmode {ges}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'ges ukulele-tuning))
% Gbmaj7
\storePredefinedDiagram #default-fret-table \chordmode {ges:maj7}
                        #ukulele-tuning
                        #(offset-fret 5 (chord-shape 'des:maj7 ukulele-tuning))
% Gb6
\storePredefinedDiagram #default-fret-table \chordmode {ges:6}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'f:6 ukulele-tuning))
% Gbm
\storePredefinedDiagram #default-fret-table \chordmode {ges:m}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'ges:m ukulele-tuning))
% Gbm(maj7)
\storePredefinedDiagram #default-fret-table \chordmode {ges:m7+}
                        #ukulele-tuning
                        #(offset-fret 4 (chord-shape 'd:m7+ ukulele-tuning))
% Gbm7
\storePredefinedDiagram #default-fret-table \chordmode {ges'':m7}
                        #ukulele-tuning
                        #(offset-fret 4 (chord-shape 'd:m7 ukulele-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ges:m7}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'f:m7 ukulele-tuning))
% Gbm6
\storePredefinedDiagram #default-fret-table \chordmode {ges'':m6}
                        #ukulele-tuning
                        #(offset-fret 4 (chord-shape 'd:m6 ukulele-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ges:m6}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'f:m6 ukulele-tuning))
% Gb7
\storePredefinedDiagram #default-fret-table \chordmode {ges:7}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'ges:7 ukulele-tuning))
% Gbdim
\storePredefinedDiagram #default-fret-table \chordmode {ges:dim}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'b:dim ukulele-tuning))
% Gbdim7
\storePredefinedDiagram #default-fret-table \chordmode {ges:dim7}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'b:dim ukulele-tuning))
% Gbaug
\storePredefinedDiagram #default-fret-table \chordmode {ges:aug}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'bes:aug ukulele-tuning))
% Gbaug7
\storePredefinedDiagram #default-fret-table \chordmode {ges:aug7}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'f:aug7 ukulele-tuning))

%%%%  g chords
%
% G
\storePredefinedDiagram #default-fret-table \chordmode {g}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'ges ukulele-tuning))
% Gmaj7
\storePredefinedDiagram #default-fret-table \chordmode {g:maj7}
                        #ukulele-tuning
                        #(offset-fret 6 (chord-shape 'des:maj7 ukulele-tuning))
% G6
\storePredefinedDiagram #default-fret-table \chordmode {g:6}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'f:6 ukulele-tuning))
% Gm
\storePredefinedDiagram #default-fret-table \chordmode {g:m}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'ges:m ukulele-tuning))
% Gm(maj7)
\storePredefinedDiagram #default-fret-table \chordmode {g:m7+}
                        #ukulele-tuning
                        #(offset-fret 5 (chord-shape 'd:m7+ ukulele-tuning))
% Gm7
\storePredefinedDiagram #default-fret-table \chordmode {g'':m7}
                        #ukulele-tuning
                        #(offset-fret 5 (chord-shape 'd:m7 ukulele-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {g:m7}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'f:m7 ukulele-tuning))
% Gm6
\storePredefinedDiagram #default-fret-table \chordmode {g'':m6}
                        #ukulele-tuning
                        #(offset-fret 5 (chord-shape 'd:m6 ukulele-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {g:m6}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'f:m6 ukulele-tuning))
% G7
\storePredefinedDiagram #default-fret-table \chordmode {g:7}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'g:7 ukulele-tuning))
% Gdim
\storePredefinedDiagram #default-fret-table \chordmode {g:dim}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'b:dim ukulele-tuning))
% Gdim7
\storePredefinedDiagram #default-fret-table \chordmode {g:dim7}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'b:dim ukulele-tuning))
% Gaug
\storePredefinedDiagram #default-fret-table \chordmode {g:aug}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'bes:aug ukulele-tuning))
% Gaug7
\storePredefinedDiagram #default-fret-table \chordmode {g:aug7}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'f:aug7 ukulele-tuning))

% G6/9
\storePredefinedDiagram #default-fret-table \chordmode {g:6.9}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'ges:6.9 ukulele-tuning))

% G13
\storePredefinedDiagram #default-fret-table \chordmode {g:13}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'g:13 ukulele-tuning))

%%%%  gis chords
%
% G#
\storePredefinedDiagram #default-fret-table \chordmode {gis}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'ges ukulele-tuning))
% G#maj7
\storePredefinedDiagram #default-fret-table \chordmode {gis:maj7}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'aes:maj7 ukulele-tuning))
% G#6
\storePredefinedDiagram #default-fret-table \chordmode {gis:6}
                        #ukulele-tuning
                        #(offset-fret 3 (chord-shape 'f:6 ukulele-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {gis,,:6}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'aes:6 ukulele-tuning))
% G#m
\storePredefinedDiagram #default-fret-table \chordmode {gis:m}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'aes:m ukulele-tuning))
% G#m(maj7)
\storePredefinedDiagram #default-fret-table \chordmode {gis:m7+}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'aes:m7+ ukulele-tuning))
% G#m7
\storePredefinedDiagram #default-fret-table \chordmode {gis'':m7}
                        #ukulele-tuning
                        #(offset-fret 3 (chord-shape 'f:m7 ukulele-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {gis:m7}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'b:6 ukulele-tuning))
% G#m6
\storePredefinedDiagram #default-fret-table \chordmode {gis'':m6}
                        #ukulele-tuning
                        #(offset-fret 3 (chord-shape 'f:m6 ukulele-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {gis:m6}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'aes:m6 ukulele-tuning))
% G#7
\storePredefinedDiagram #default-fret-table \chordmode {gis:7}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'aes:7 ukulele-tuning))
% G#dim
\storePredefinedDiagram #default-fret-table \chordmode {gis:dim}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'b:dim ukulele-tuning))
% G#dim7
\storePredefinedDiagram #default-fret-table \chordmode {gis:dim7}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'b:dim ukulele-tuning))
% G#aug
\storePredefinedDiagram #default-fret-table \chordmode {gis:aug}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'bes:aug ukulele-tuning))
% G#aug7
\storePredefinedDiagram #default-fret-table \chordmode {gis:aug7}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'aes:aug7 ukulele-tuning))

%%%%  aes chords
%
% Ab
\storePredefinedDiagram #default-fret-table \chordmode {aes}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'ges ukulele-tuning))
% Abmaj7
\storePredefinedDiagram #default-fret-table \chordmode {aes:maj7}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'aes:maj7 ukulele-tuning))
% Ab6
\storePredefinedDiagram #default-fret-table \chordmode {aes:6}
                        #ukulele-tuning
                        #(offset-fret 3 (chord-shape 'f:6 ukulele-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {aes,,:6}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'aes:6 ukulele-tuning))
% Abm
\storePredefinedDiagram #default-fret-table \chordmode {aes:m}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'aes:m ukulele-tuning))
% Abm(maj7)
\storePredefinedDiagram #default-fret-table \chordmode {aes:m7+}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'aes:m7+ ukulele-tuning))
% Abm7
\storePredefinedDiagram #default-fret-table \chordmode {aes'':m7}
                        #ukulele-tuning
                        #(offset-fret 3 (chord-shape 'f:m7 ukulele-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {aes:m7}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'b:6 ukulele-tuning))
% Abm6
\storePredefinedDiagram #default-fret-table \chordmode {aes'':m6}
                        #ukulele-tuning
                        #(offset-fret 3 (chord-shape 'f:m6 ukulele-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {aes:m6}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'aes:m6 ukulele-tuning))
% Ab7
\storePredefinedDiagram #default-fret-table \chordmode {aes'':7}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'ges:7 ukulele-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {aes:7}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'aes:7 ukulele-tuning))
% Abdim
\storePredefinedDiagram #default-fret-table \chordmode {aes:dim}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'b:dim ukulele-tuning))
% Abdim7
\storePredefinedDiagram #default-fret-table \chordmode {aes:dim7}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'b:dim ukulele-tuning))
% Abaug
\storePredefinedDiagram #default-fret-table \chordmode {aes:aug}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'bes:aug ukulele-tuning))
% Abaug7
\storePredefinedDiagram #default-fret-table \chordmode {aes:aug7}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'aes:aug7 ukulele-tuning))

%%%%  a chords
%
% A
\storePredefinedDiagram #default-fret-table \chordmode {a}
                        #ukulele-tuning
                        #(offset-fret 3 (chord-shape 'ges ukulele-tuning))
% Amaj7
\storePredefinedDiagram #default-fret-table \chordmode {a:maj7}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'aes:maj7 ukulele-tuning))
% A6
\storePredefinedDiagram #default-fret-table \chordmode {a:6}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'aes:6 ukulele-tuning))
% Am
\storePredefinedDiagram #default-fret-table \chordmode {a:m}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'aes:m ukulele-tuning))
% Am(maj7)
\storePredefinedDiagram #default-fret-table \chordmode {a:m7+}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'aes:m7+ ukulele-tuning))
% Am7
\storePredefinedDiagram #default-fret-table \chordmode {a'':m7}
                        #ukulele-tuning
                        #(offset-fret 4 (chord-shape 'f:m7 ukulele-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {a:m7}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'b:6 ukulele-tuning))
% Am6
\storePredefinedDiagram #default-fret-table \chordmode {a'':m6}
                        #ukulele-tuning
                        #(offset-fret 4 (chord-shape 'f:m6 ukulele-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {a:m6}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'aes:m6 ukulele-tuning))
% A7
\storePredefinedDiagram #default-fret-table \chordmode {a:7}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'aes:7 ukulele-tuning))
% Adim
\storePredefinedDiagram #default-fret-table \chordmode {a:dim}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'b:dim ukulele-tuning))
% Adim7
\storePredefinedDiagram #default-fret-table \chordmode {a:dim7}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'b:dim ukulele-tuning))
% Aaug
\storePredefinedDiagram #default-fret-table \chordmode {a:aug}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'a:aug ukulele-tuning))
% Aaug7
\storePredefinedDiagram #default-fret-table \chordmode {a:aug7}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'aes:aug7 ukulele-tuning))

%%%%  ais chords
%
% A#
\storePredefinedDiagram #default-fret-table \chordmode {ais}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'bes ukulele-tuning))
% A#maj7
\storePredefinedDiagram #default-fret-table \chordmode {ais:maj7}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'bes:maj7 ukulele-tuning))
% A#6
\storePredefinedDiagram #default-fret-table \chordmode {ais:6}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'aes:6 ukulele-tuning))
% A#m
\storePredefinedDiagram #default-fret-table \chordmode {ais:m}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'bes:m ukulele-tuning))
% A#m(maj7)
\storePredefinedDiagram #default-fret-table \chordmode {ais:m7+}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'aes:m7+ ukulele-tuning))
% A#m7
\storePredefinedDiagram #default-fret-table \chordmode {ais'':m7}
                        #ukulele-tuning
                        #(offset-fret 5 (chord-shape 'f:m7 ukulele-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ais:m7}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'b:6 ukulele-tuning))
% A#m6
\storePredefinedDiagram #default-fret-table \chordmode {ais'':m6}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'aes:m6 ukulele-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ais:m6}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'bes:m6 ukulele-tuning))
% A#7
\storePredefinedDiagram #default-fret-table \chordmode {ais:7}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'bes:7 ukulele-tuning))
% A#dim
\storePredefinedDiagram #default-fret-table \chordmode {ais:dim}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'b:dim ukulele-tuning))
% A#dim7
\storePredefinedDiagram #default-fret-table \chordmode {ais:dim7}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'b:dim ukulele-tuning))
% A#aug
\storePredefinedDiagram #default-fret-table \chordmode {ais:aug}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'a:aug ukulele-tuning))
% A#aug7
\storePredefinedDiagram #default-fret-table \chordmode {ais:aug7}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'bes:aug7 ukulele-tuning))
%%%%  bes chords
%
% Bb
\storePredefinedDiagram #default-fret-table \chordmode {bes}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'bes ukulele-tuning))
% Bbmaj7
\storePredefinedDiagram #default-fret-table \chordmode {bes:maj7}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'bes:maj7 ukulele-tuning))
% Bb6
\storePredefinedDiagram #default-fret-table \chordmode {bes:6}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'aes:6 ukulele-tuning))
% Bbm
\storePredefinedDiagram #default-fret-table \chordmode {bes:m}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'bes:m ukulele-tuning))
% Bbm(maj7)
\storePredefinedDiagram #default-fret-table \chordmode {bes:m7+}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'aes:m7+ ukulele-tuning))
% Bbm7
\storePredefinedDiagram #default-fret-table \chordmode {bes'':m7}
                        #ukulele-tuning
                        #(offset-fret 5 (chord-shape 'f:m7 ukulele-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {bes:m7}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'b:6 ukulele-tuning))
% Bbm6
\storePredefinedDiagram #default-fret-table \chordmode {bes'':m6}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'aes:m6 ukulele-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {bes:m6}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'bes:m6 ukulele-tuning))
% Bb7
\storePredefinedDiagram #default-fret-table \chordmode {bes:7}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'bes:7 ukulele-tuning))
% Bbdim
\storePredefinedDiagram #default-fret-table \chordmode {bes:dim}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'b:dim ukulele-tuning))
% Bbdim7
\storePredefinedDiagram #default-fret-table \chordmode {bes:dim7}
                        #ukulele-tuning
                        #(offset-fret 2 (chord-shape 'b:dim ukulele-tuning))
% Bbaug
\storePredefinedDiagram #default-fret-table \chordmode {bes:aug}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'a:aug ukulele-tuning))
% Bbaug7
\storePredefinedDiagram #default-fret-table \chordmode {bes:aug7}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'bes:aug7 ukulele-tuning))

% Bb13
\storePredefinedDiagram #default-fret-table \chordmode {bes:13}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'bes:13 ukulele-tuning))

%%%%  b chords
%
% B
\storePredefinedDiagram #default-fret-table \chordmode {b}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'bes ukulele-tuning))
% Bmaj7
\storePredefinedDiagram #default-fret-table \chordmode {b:maj7}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'bes:maj7 ukulele-tuning))
% B6
\storePredefinedDiagram #default-fret-table \chordmode {b:6}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'b:6 ukulele-tuning))
% Bm
\storePredefinedDiagram #default-fret-table \chordmode {b:m}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'bes:m ukulele-tuning))
% Bm(maj7)
\storePredefinedDiagram #default-fret-table \chordmode {b:m7+}
                        #ukulele-tuning
                        #(offset-fret 3 (chord-shape 'aes:m7+ ukulele-tuning))
% Bm7
\storePredefinedDiagram #default-fret-table \chordmode {b'':m7}
                        #ukulele-tuning
                        #(offset-fret 6 (chord-shape 'f:m7 ukulele-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {b:m7}
                        #ukulele-tuning
                        #(offset-fret 3 (chord-shape 'b:6 ukulele-tuning))
% Bm6
\storePredefinedDiagram #default-fret-table \chordmode {b'':m6}
                        #ukulele-tuning
                        #(offset-fret 3 (chord-shape 'aes:m6 ukulele-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {b:m6}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'bes:m6 ukulele-tuning))
% B7
\storePredefinedDiagram #default-fret-table \chordmode {b:7}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'bes:7 ukulele-tuning))
% Bdim
\storePredefinedDiagram #default-fret-table \chordmode {b:dim}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'b:dim ukulele-tuning))
% Bdim7
\storePredefinedDiagram #default-fret-table \chordmode {b:dim7}
                        #ukulele-tuning
                        #(offset-fret 0 (chord-shape 'b:dim ukulele-tuning))
% Baug
\storePredefinedDiagram #default-fret-table \chordmode {b:aug}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'bes:aug ukulele-tuning))
% Baug7
\storePredefinedDiagram #default-fret-table \chordmode {b:aug7}
                        #ukulele-tuning
                        #(offset-fret 1 (chord-shape 'bes:aug7 ukulele-tuning))
