%%%% This file is part of LilyPond, the GNU music typesetter.
%%%%
%%%% Copyright (C) 2008--2012 Carl D. Sorensen <c_sorensen@byu.edu>
%%%%
%%%% LilyPond is free software: you can redistribute it and/or modify
%%%% it under the terms of the GNU General Public License as published by
%%%% the Free Software Foundation, either version 3 of the License, or
%%%% (at your option) any later version.
%%%%
%%%% LilyPond is distributed in the hope that it will be useful,
%%%% but WITHOUT ANY WARRANTY; without even the implied warranty of
%%%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%%%% GNU General Public License for more details.
%%%%
%%%% You should have received a copy of the GNU General Public License
%%%% along with LilyPond.  If not, see <http://www.gnu.org/licenses/>.

% chord definitions require default pitchnames
\languageSaveAndChange #default-language

%\include "predefined-guitar-ninth-fretboards.ly"

%%%  Add basic chordshapes

\version "2.16.0"

\addChordShape #'f      #guitar-tuning  #"1;x;3;2;x;x;"  % C
\addChordShape #'ees:/g #guitar-tuning  #"3;x;1;3;x;x;"  % C/E
\addChordShape #'b:/ges #guitar-tuning  #"2;x;1;4;x;x;"  % C/G

\addChordShape #'f:maj7 #guitar-tuning  #"1;x;2;2;x;x;"  % Cmaj7
\addChordShape #'c:maj7/g #guitar-tuning #"3;x;2;4;x;x;" % Cmaj7/G

\addChordShape #'fis:6  #guitar-tuning  #"2;x;1;3;x;x;"  % C6
\addChordShape #'c:6/g  #guitar-tuning  #"3;x;2;2;x;x;"  % C6/G

\addChordShape #'f:m    #guitar-tuning  #"1;x;3;1;x;x;"    % Cm
\addChordShape #'ees:m/ges #guitar-tuning  #"2;x;1;3;x;x;" % Cm/Eb
\addChordShape #'bes:m/f #guitar-tuning  #"x;1;x;3;2;x;"   % Cm/G

\addChordShape #'f:m7   #guitar-tuning  #"1;x;1;1;x;x;"    % Cm7
\addChordShape #'c:m7/g #guitar-tuning  #"3;x;1;3;x;x;"    % Cm7/G
\addChordShape #'bes:m7 #guitar-tuning  #"x;1;x;1;2;x;"    % Cm7

\addChordShape #'f:m6   #guitar-tuning  #"2;x;1;2;x;x;"    % Cm6
\addChordShape #'c:m6/g #guitar-tuning  #"x;3;x;2;4;x;"    % Cm6/G


\addChordShape #'f:7    #guitar-tuning  #"1;x;1;2;x;x;"    % C7
\addChordShape #'c:7/g  #guitar-tuning  #"3;x;2;3;x;x;"    % C7/G

\addChordShape #'f:aug  #guitar-tuning  #"1;x;1;2;2;x;"    % C+
\addChordShape #'c:aug/c #guitar-tuning  #"x;3;2;1;x;x;"    % C+

\addChordShape #'fsi:dim #guitar-tuning #"2;x;1;2;x;x;"    % C-
\addChordShape #'c:dim/c #guitar-tuning  #"x;3;x;2;4;x;"    % C-

\addChordShape #'a:m7+  #guitar-tuning  #"x;1;x;2;2;x;"    % 

% 10 af
% 9 g
% 8 gf
% 7 f
% 6 e
% 5 ef
% 4 d
% 3 df
% 2 c
% 1 b
% 0 bf
% 11 a


%%%  Add predefined chords

% definitions of predefined diagrams below here

%%%%  c chords
%
% C
\storePredefinedDiagram #default-fret-table \chordmode {c,,}
                        #guitar-tuning
                        #(offset-fret 1 (chord-shape 'b:/ges guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {c}
                        #guitar-tuning
                        #(offset-fret 7 (chord-shape 'f guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {c''}
                        #guitar-tuning
                        #(offset-fret 9 (chord-shape 'ees:/g guitar-tuning))
% Cmaj7
\storePredefinedDiagram #default-fret-table \chordmode {c,,:maj7}
                        #guitar-tuning
                        #(offset-fret 0 (chord-shape 'c:maj7/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {c:maj7}
                        #guitar-tuning
                        #(offset-fret 7 (chord-shape 'f:maj7 guitar-tuning))
% C6
\storePredefinedDiagram #default-fret-table \chordmode {c,,:6}
                        #guitar-tuning
                        #(offset-fret 0 (chord-shape 'c:6/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {c:6}
                        #guitar-tuning
                        #(offset-fret 6 (chord-shape 'fis:6 guitar-tuning))
% Cm
\storePredefinedDiagram #default-fret-table \chordmode {c,,:m}
                        #guitar-tuning
                        #(offset-fret 2 (chord-shape 'bes:m/f guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {c:m}
                        #guitar-tuning
                        #(offset-fret 7 (chord-shape 'f:m guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {c'':m}
                        #guitar-tuning
                        #(offset-fret 9 (chord-shape 'ees:m/ges guitar-tuning))
% Cm(maj7)
\storePredefinedDiagram #default-fret-table \chordmode {c:m7+}
                        #guitar-tuning
                        #(offset-fret 2 (chord-shape 'a:m7+ guitar-tuning))
% Cm7
\storePredefinedDiagram #default-fret-table \chordmode {c,,:m7}
                        #guitar-tuning
                        #(offset-fret 0 (chord-shape 'c:m7/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {c:m7}
                        #guitar-tuning
                        #(offset-fret 2 (chord-shape 'bes:m7 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {c'':m7}
                        #guitar-tuning
                        #(offset-fret 7 (chord-shape 'f:m7 guitar-tuning))
% Cm6
\storePredefinedDiagram #default-fret-table \chordmode {c,,:m6}
                        #guitar-tuning
                        #(offset-fret 0 (chord-shape 'c:m6/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {c:m6}
                        #guitar-tuning
                        #(offset-fret 6 (chord-shape 'f:m6 guitar-tuning))
% C7
\storePredefinedDiagram #default-fret-table \chordmode {c,,:7}
                        #guitar-tuning
                        #(offset-fret 0 (chord-shape 'c:7/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {c:7}
                        #guitar-tuning
                        #(offset-fret 7 (chord-shape 'f:7 guitar-tuning))
% Cdim
\storePredefinedDiagram #default-fret-table \chordmode {c,,:dim}
                        #guitar-tuning
                        #(offset-fret 0 (chord-shape 'c:dim/c guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {c:dim}
                        #guitar-tuning
                        #(offset-fret 6 (chord-shape 'fsi:dim guitar-tuning))
% Cdim7
\storePredefinedDiagram #default-fret-table \chordmode {c,,:dim7}
                        #guitar-tuning
                        #(offset-fret 0 (chord-shape 'c:dim/c guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {c:dim7}
                        #guitar-tuning
                        #(offset-fret 6 (chord-shape 'fsi:dim guitar-tuning))
% Caug
\storePredefinedDiagram #default-fret-table \chordmode {c,,:aug}
                        #guitar-tuning
                        #(offset-fret 0 (chord-shape 'c:aug/c guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {c:aug}
                        #guitar-tuning
                        #(offset-fret 7 (chord-shape 'f:aug guitar-tuning))
%%%%  c# (cis) chords
%
% C#
\storePredefinedDiagram #default-fret-table \chordmode {cis,,}
                        #guitar-tuning
                        #(offset-fret 2 (chord-shape 'b:/ges guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {cis}
                        #guitar-tuning
                        #(offset-fret 8 (chord-shape 'f guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {cis''}
                        #guitar-tuning
                        #(offset-fret 10 (chord-shape 'ees:/g guitar-tuning))
% C#maj7
\storePredefinedDiagram #default-fret-table \chordmode {cis,,:maj7}
                        #guitar-tuning
                        #(offset-fret 1 (chord-shape 'c:maj7/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {cis:maj7}
                        #guitar-tuning
                        #(offset-fret 8 (chord-shape 'f:maj7 guitar-tuning))
% C#6
\storePredefinedDiagram #default-fret-table \chordmode {cis,,:6}
                        #guitar-tuning
                        #(offset-fret 1 (chord-shape 'c:6/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {cis:6}
                        #guitar-tuning
                        #(offset-fret 7 (chord-shape 'fis:6 guitar-tuning))
% C#m
\storePredefinedDiagram #default-fret-table \chordmode {cis,,:m}
                        #guitar-tuning
                        #(offset-fret 3 (chord-shape 'bes:m/f guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {cis:m}
                        #guitar-tuning
                        #(offset-fret 8 (chord-shape 'f:m guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {cis'':m}
                        #guitar-tuning
                        #(offset-fret 10 (chord-shape 'ees:m/ges guitar-tuning))
% C#m7
\storePredefinedDiagram #default-fret-table \chordmode {cis,,:m7}
                        #guitar-tuning
                        #(offset-fret 1 (chord-shape 'c:m7/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {cis:m7}
                        #guitar-tuning
                        #(offset-fret 3 (chord-shape 'bes:m7 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {cis'':m7}
                        #guitar-tuning
                        #(offset-fret 8 (chord-shape 'f:m7 guitar-tuning))
% C#m6
\storePredefinedDiagram #default-fret-table \chordmode {cis,,:m6}
                        #guitar-tuning
                        #(offset-fret 1 (chord-shape 'c:m6/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {cis:m6}
                        #guitar-tuning
                        #(offset-fret 7 (chord-shape 'f:m6 guitar-tuning))
% C#7
\storePredefinedDiagram #default-fret-table \chordmode {cis,,:7}
                        #guitar-tuning
                        #(offset-fret 1 (chord-shape 'c:7/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {cis:7}
                        #guitar-tuning
                        #(offset-fret 8 (chord-shape 'f:7 guitar-tuning))
% C#dim
\storePredefinedDiagram #default-fret-table \chordmode {cis,,:dim}
                        #guitar-tuning
                        #(offset-fret 1 (chord-shape 'c:dim/c guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {cis:dim}
                        #guitar-tuning
                        #(offset-fret 7 (chord-shape 'fsi:dim guitar-tuning))
% C#dim7
\storePredefinedDiagram #default-fret-table \chordmode {cis,,:dim7}
                        #guitar-tuning
                        #(offset-fret 1 (chord-shape 'c:dim/c guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {cis:dim7}
                        #guitar-tuning
                        #(offset-fret 7 (chord-shape 'fsi:dim guitar-tuning))
% C#aug
\storePredefinedDiagram #default-fret-table \chordmode {cis,,:aug}
                        #guitar-tuning
                        #(offset-fret 1 (chord-shape 'c:aug/c guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {cis:aug}
                        #guitar-tuning
                        #(offset-fret 8 (chord-shape 'f:aug guitar-tuning))
%%%%  Db (des) chords
%
% Db
\storePredefinedDiagram #default-fret-table \chordmode {des}
                        #guitar-tuning
                        #(offset-fret 2 (chord-shape 'b:/ges guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {des''}
                        #guitar-tuning
                        #(offset-fret 8 (chord-shape 'f guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {des'''}
                        #guitar-tuning
                        #(offset-fret 10 (chord-shape 'ees:/g guitar-tuning))
% Dbmaj7
\storePredefinedDiagram #default-fret-table \chordmode {des,,:maj7}
                        #guitar-tuning
                        #(offset-fret 1 (chord-shape 'c:maj7/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {des:maj7}
                        #guitar-tuning
                        #(offset-fret 8 (chord-shape 'f:maj7 guitar-tuning))
% Db6
\storePredefinedDiagram #default-fret-table \chordmode {des,,:6}
                        #guitar-tuning
                        #(offset-fret 1 (chord-shape 'c:6/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {des:6}
                        #guitar-tuning
                        #(offset-fret 7 (chord-shape 'fis:6 guitar-tuning))
% Dbm
\storePredefinedDiagram #default-fret-table \chordmode {des,,:m}
                        #guitar-tuning
                        #(offset-fret 3 (chord-shape 'bes:m/f guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {des:m}
                        #guitar-tuning
                        #(offset-fret 8 (chord-shape 'f:m guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {des'':m}
                        #guitar-tuning
                        #(offset-fret 10 (chord-shape 'ees:m/ges guitar-tuning))
% Dbm7
\storePredefinedDiagram #default-fret-table \chordmode {des,,:m7}
                        #guitar-tuning
                        #(offset-fret 1 (chord-shape 'c:m7/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {d:m7}
                        #guitar-tuning
                        #(offset-fret 3 (chord-shape 'bes:m7 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {des'':m7}
                        #guitar-tuning
                        #(offset-fret 8 (chord-shape 'f:m7 guitar-tuning))
% Dbm6
\storePredefinedDiagram #default-fret-table \chordmode {des,,:m6}
                        #guitar-tuning
                        #(offset-fret 1 (chord-shape 'c:m6/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {des:m6}
                        #guitar-tuning
                        #(offset-fret 7 (chord-shape 'f:m6 guitar-tuning))
% Db7
\storePredefinedDiagram #default-fret-table \chordmode {des:7}
                        #guitar-tuning
                        #(offset-fret 1 (chord-shape 'c:7/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {des'':7}
                        #guitar-tuning
                        #(offset-fret 8 (chord-shape 'f:7 guitar-tuning))
% Dbdim
\storePredefinedDiagram #default-fret-table \chordmode {des,,:dim}
                        #guitar-tuning
                        #(offset-fret 1 (chord-shape 'c:dim/c guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {des:dim}
                        #guitar-tuning
                        #(offset-fret 7 (chord-shape 'fsi:dim guitar-tuning))
% Dbdim7
\storePredefinedDiagram #default-fret-table \chordmode {des,,:dim7}
                        #guitar-tuning
                        #(offset-fret 1 (chord-shape 'c:dim/c guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {des:dim7}
                        #guitar-tuning
                        #(offset-fret 7 (chord-shape 'fsi:dim guitar-tuning))
% Dbaug
\storePredefinedDiagram #default-fret-table \chordmode {des,,:aug}
                        #guitar-tuning
                        #(offset-fret 1 (chord-shape 'c:aug/c guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {des:aug}
                        #guitar-tuning
                        #(offset-fret 8 (chord-shape 'f:aug guitar-tuning))
%%%%  d chords
% D
\storePredefinedDiagram #default-fret-table \chordmode {d}
                        #guitar-tuning
                        #(offset-fret 3 (chord-shape 'b:/ges guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {d''}
                        #guitar-tuning
                        #(offset-fret 9 (chord-shape 'f guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {d'''}
                        #guitar-tuning
                        #(offset-fret 11 (chord-shape 'ees:/g guitar-tuning))
% Dmaj7
\storePredefinedDiagram #default-fret-table \chordmode {d,,:maj7}
                        #guitar-tuning
                        #(offset-fret 2 (chord-shape 'c:maj7/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {d:maj7}
                        #guitar-tuning
                        #(offset-fret 9 (chord-shape 'f:maj7 guitar-tuning))
% D6
\storePredefinedDiagram #default-fret-table \chordmode {d,,:6}
                        #guitar-tuning
                        #(offset-fret 2 (chord-shape 'c:6/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {d:6}
                        #guitar-tuning
                        #(offset-fret 8 (chord-shape 'fis:6 guitar-tuning))
% Dm
\storePredefinedDiagram #default-fret-table \chordmode {d:m}
                        #guitar-tuning
                        #(offset-fret 4 (chord-shape 'bes:m/f guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {d'':m}
                        #guitar-tuning
                        #(offset-fret 9 (chord-shape 'f:m guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {d''':m}
                        #guitar-tuning
                        #(offset-fret 11 (chord-shape 'ees:m/ges guitar-tuning))
% Dm7
\storePredefinedDiagram #default-fret-table \chordmode {d,,:m7}
                        #guitar-tuning
                        #(offset-fret 2 (chord-shape 'c:m7/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {d:m7}
                        #guitar-tuning
                        #(offset-fret 4 (chord-shape 'bes:m7 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {d'':m7}
                        #guitar-tuning
                        #(offset-fret 9 (chord-shape 'f:m7 guitar-tuning))
% Dm6
\storePredefinedDiagram #default-fret-table \chordmode {d:m6}
                        #guitar-tuning
                        #(offset-fret 2 (chord-shape 'c:m6/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {d'':m6}
                        #guitar-tuning
                        #(offset-fret 8 (chord-shape 'f:m6 guitar-tuning))
% D7
\storePredefinedDiagram #default-fret-table \chordmode {d:7}
                        #guitar-tuning
                        #(offset-fret 2 (chord-shape 'c:7/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {d'':7}
                        #guitar-tuning
                        #(offset-fret 9 (chord-shape 'f:7 guitar-tuning))
% Ddim
\storePredefinedDiagram #default-fret-table \chordmode {d:dim}
                        #guitar-tuning
                        #(offset-fret 2 (chord-shape 'c:dim/c guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {d'':dim}
                        #guitar-tuning
                        #(offset-fret 8 (chord-shape 'fsi:dim guitar-tuning))
% Ddim7
\storePredefinedDiagram #default-fret-table \chordmode {d:dim7}
                        #guitar-tuning
                        #(offset-fret 2 (chord-shape 'c:dim/c guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {d'':dim7}
                        #guitar-tuning
                        #(offset-fret 8 (chord-shape 'fsi:dim guitar-tuning))
% Daug
\storePredefinedDiagram #default-fret-table \chordmode {d:aug}
                        #guitar-tuning
                        #(offset-fret 2 (chord-shape 'c:aug/c guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {d'':aug}
                        #guitar-tuning
                        #(offset-fret 9 (chord-shape 'f:aug guitar-tuning))
%%%%  dis chords
%
% D#
\storePredefinedDiagram #default-fret-table \chordmode {dis,,,}
                        #guitar-tuning
                        #(offset-fret 0 (chord-shape 'ees:/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {dis,,}
                        #guitar-tuning
                        #(offset-fret 4 (chord-shape 'b:/ges guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {dis}
                        #guitar-tuning
                        #(offset-fret 10 (chord-shape 'f guitar-tuning))
% D#maj7
\storePredefinedDiagram #default-fret-table \chordmode {dis,,:maj7}
                        #guitar-tuning
                        #(offset-fret 3 (chord-shape 'c:maj7/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {dis:maj7}
                        #guitar-tuning
                        #(offset-fret 10 (chord-shape 'f:maj7 guitar-tuning))
% D#6
\storePredefinedDiagram #default-fret-table \chordmode {dis,,:6}
                        #guitar-tuning
                        #(offset-fret 3 (chord-shape 'c:6/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {dis:6}
                        #guitar-tuning
                        #(offset-fret 9 (chord-shape 'fis:6 guitar-tuning))
% D#m
\storePredefinedDiagram #default-fret-table \chordmode {dis,,,:m}
                        #guitar-tuning
                        #(offset-fret 0 (chord-shape 'ees:m/ges guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {dis,,:m}
                        #guitar-tuning
                        #(offset-fret 5 (chord-shape 'bes:m/f guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {dis:m}
                        #guitar-tuning
                        #(offset-fret 10 (chord-shape 'f:m guitar-tuning))
% D#m7
\storePredefinedDiagram #default-fret-table \chordmode {dis,,:m7}
                        #guitar-tuning
                        #(offset-fret 3 (chord-shape 'c:m7/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {dis:m7}
                        #guitar-tuning
                        #(offset-fret 5 (chord-shape 'bes:m7 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {dis'':m7}
                        #guitar-tuning
                        #(offset-fret 10 (chord-shape 'f:m7 guitar-tuning))
% D#m6
\storePredefinedDiagram #default-fret-table \chordmode {dis,,:m6}
                        #guitar-tuning
                        #(offset-fret 3 (chord-shape 'c:m6/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {dis:m6}
                        #guitar-tuning
                        #(offset-fret 9 (chord-shape 'f:m6 guitar-tuning))
% D#7
\storePredefinedDiagram #default-fret-table \chordmode {dis,,:7}
                        #guitar-tuning
                        #(offset-fret 3 (chord-shape 'c:7/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {dis:7}
                        #guitar-tuning
                        #(offset-fret 10 (chord-shape 'f:7 guitar-tuning))
% D#dim
\storePredefinedDiagram #default-fret-table \chordmode {dis,,:dim}
                        #guitar-tuning
                        #(offset-fret 3 (chord-shape 'c:dim/c guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {dis:dim}
                        #guitar-tuning
                        #(offset-fret 9 (chord-shape 'fsi:dim guitar-tuning))
% D#dim7
\storePredefinedDiagram #default-fret-table \chordmode {dis,,:dim7}
                        #guitar-tuning
                        #(offset-fret 3 (chord-shape 'c:dim/c guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {dis:dim7}
                        #guitar-tuning
                        #(offset-fret 9 (chord-shape 'fsi:dim guitar-tuning))
% D#aug
\storePredefinedDiagram #default-fret-table \chordmode {dis,,:aug}
                        #guitar-tuning
                        #(offset-fret 3 (chord-shape 'c:aug/c guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {dis:aug}
                        #guitar-tuning
                        #(offset-fret 10 (chord-shape 'f:aug guitar-tuning))
%%%%  ees chords
%
% Eb
\storePredefinedDiagram #default-fret-table \chordmode {ees,,}
                        #guitar-tuning
                        #(offset-fret 0 (chord-shape 'ees:/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ees}
                        #guitar-tuning
                        #(offset-fret 4 (chord-shape 'b:/ges guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ees''}
                        #guitar-tuning
                        #(offset-fret 10 (chord-shape 'f guitar-tuning))
% Ebmaj7
\storePredefinedDiagram #default-fret-table \chordmode {ees:maj7}
                        #guitar-tuning
                        #(offset-fret 3 (chord-shape 'c:maj7/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ees'':maj7}
                        #guitar-tuning
                        #(offset-fret 10 (chord-shape 'f:maj7 guitar-tuning))
% Eb6
\storePredefinedDiagram #default-fret-table \chordmode {ees:6}
                        #guitar-tuning
                        #(offset-fret 3 (chord-shape 'c:6/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ees'':6}
                        #guitar-tuning
                        #(offset-fret 9 (chord-shape 'fis:6 guitar-tuning))
% Ebm
\storePredefinedDiagram #default-fret-table \chordmode {ees,,:m}
                        #guitar-tuning
                        #(offset-fret 0 (chord-shape 'ees:m/ges guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ees:m}
                        #guitar-tuning
                        #(offset-fret 5 (chord-shape 'bes:m/f guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ees'':m}
                        #guitar-tuning
                        #(offset-fret 10 (chord-shape 'f:m guitar-tuning))
% Ebm7
\storePredefinedDiagram #default-fret-table \chordmode {ees,,:m7}
                        #guitar-tuning
                        #(offset-fret 3 (chord-shape 'c:m7/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ees:m7}
                        #guitar-tuning
                        #(offset-fret 5 (chord-shape 'bes:m7 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ees'':m7}
                        #guitar-tuning
                        #(offset-fret 10 (chord-shape 'f:m7 guitar-tuning))
% Ebm6
\storePredefinedDiagram #default-fret-table \chordmode {ees,,:m6}
                        #guitar-tuning
                        #(offset-fret 3 (chord-shape 'c:m6/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ees:m6}
                        #guitar-tuning
                        #(offset-fret 9 (chord-shape 'f:m6 guitar-tuning))
% Eb7
\storePredefinedDiagram #default-fret-table \chordmode {ees:7}
                        #guitar-tuning
                        #(offset-fret 3 (chord-shape 'c:7/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ees'':7}
                        #guitar-tuning
                        #(offset-fret 10 (chord-shape 'f:7 guitar-tuning))
% Ebdim
\storePredefinedDiagram #default-fret-table \chordmode {ees:dim}
                        #guitar-tuning
                        #(offset-fret 3 (chord-shape 'c:dim/c guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ees'':dim}
                        #guitar-tuning
                        #(offset-fret 9 (chord-shape 'fsi:dim guitar-tuning))
% Ebdim7
\storePredefinedDiagram #default-fret-table \chordmode {ees:dim7}
                        #guitar-tuning
                        #(offset-fret 3 (chord-shape 'c:dim/c guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ees'':dim7}
                        #guitar-tuning
                        #(offset-fret 9 (chord-shape 'fsi:dim guitar-tuning))
% Ebaug
\storePredefinedDiagram #default-fret-table \chordmode {ees:aug}
                        #guitar-tuning
                        #(offset-fret 3 (chord-shape 'c:aug/c guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ees'':aug}
                        #guitar-tuning
                        #(offset-fret 10 (chord-shape 'f:aug guitar-tuning))
%%%%  e chords
%
% E
\storePredefinedDiagram #default-fret-table \chordmode {e,,}
                        #guitar-tuning
                        #(offset-fret 1 (chord-shape 'ees:/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {e}
                        #guitar-tuning
                        #(offset-fret 5 (chord-shape 'b:/ges guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {e''}
                        #guitar-tuning
                        #(offset-fret 11 (chord-shape 'f guitar-tuning))
% Emaj7
\storePredefinedDiagram #default-fret-table \chordmode {e,,:maj7}
                        #guitar-tuning
                        #(offset-fret 4 (chord-shape 'c:maj7/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {e:maj7}
                        #guitar-tuning
                        #(offset-fret 11 (chord-shape 'f:maj7 guitar-tuning))
% E6
\storePredefinedDiagram #default-fret-table \chordmode {e,,:6}
                        #guitar-tuning
                        #(offset-fret 4 (chord-shape 'c:6/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {e:6}
                        #guitar-tuning
                        #(offset-fret 10 (chord-shape 'fis:6 guitar-tuning))
% Em
\storePredefinedDiagram #default-fret-table \chordmode {e,,:m}
                        #guitar-tuning
                        #(offset-fret 0 (chord-shape 'ees:m/ges guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {e:m}
                        #guitar-tuning
                        #(offset-fret 6 (chord-shape 'bes:m/f guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {e'':m}
                        #guitar-tuning
                        #(offset-fret 11 (chord-shape 'f:m guitar-tuning))
% Em7
\storePredefinedDiagram #default-fret-table \chordmode {e,,:m7}
                        #guitar-tuning
                        #(offset-fret 4 (chord-shape 'c:m7/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {e:m7}
                        #guitar-tuning
                        #(offset-fret 6 (chord-shape 'bes:m7 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {e'':m7}
                        #guitar-tuning
                        #(offset-fret 11 (chord-shape 'f:m7 guitar-tuning))
% Em6
\storePredefinedDiagram #default-fret-table \chordmode {e,,:m6}
                        #guitar-tuning
                        #(offset-fret 4 (chord-shape 'c:m6/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {e:m6}
                        #guitar-tuning
                        #(offset-fret 10 (chord-shape 'f:m6 guitar-tuning))
% E7
\storePredefinedDiagram #default-fret-table \chordmode {e:7}
                        #guitar-tuning
                        #(offset-fret 4 (chord-shape 'c:7/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {e'':7}
                        #guitar-tuning
                        #(offset-fret 11 (chord-shape 'f:7 guitar-tuning))
% Edim
\storePredefinedDiagram #default-fret-table \chordmode {e:dim}
                        #guitar-tuning
                        #(offset-fret 4 (chord-shape 'c:dim/c guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {e'':dim}
                        #guitar-tuning
                        #(offset-fret 10 (chord-shape 'fsi:dim guitar-tuning))
% Edim7
\storePredefinedDiagram #default-fret-table \chordmode {e,,:dim7}
                        #guitar-tuning
                        #(offset-fret 4 (chord-shape 'c:dim/c guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {e:dim7}
                        #guitar-tuning
                        #(offset-fret 10 (chord-shape 'fsi:dim guitar-tuning))
% Eaug
\storePredefinedDiagram #default-fret-table \chordmode {e,,:aug}
                        #guitar-tuning
                        #(offset-fret 4 (chord-shape 'c:aug/c guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {e:aug}
                        #guitar-tuning
                        #(offset-fret 11 (chord-shape 'f:aug guitar-tuning))
%%%%  f chords
%
% F
\storePredefinedDiagram #default-fret-table \chordmode {f,,,}
                        #guitar-tuning
                        #(offset-fret 0 (chord-shape 'f guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {f,,}
                        #guitar-tuning
                        #(offset-fret 2 (chord-shape 'ees:/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {f}
                        #guitar-tuning
                        #(offset-fret 6 (chord-shape 'b:/ges guitar-tuning))
% Fmaj7
\storePredefinedDiagram #default-fret-table \chordmode {f,,:maj7}
                        #guitar-tuning
                        #(offset-fret 0 (chord-shape 'f:maj7 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {f:maj7}
                        #guitar-tuning
                        #(offset-fret 5 (chord-shape 'c:maj7/g guitar-tuning))
% F6                        
\storePredefinedDiagram #default-fret-table \chordmode {f:6}
                        #guitar-tuning
                        #(offset-fret 5 (chord-shape 'c:6/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {f'':6}
                        #guitar-tuning
                        #(offset-fret 11 (chord-shape 'fis:6 guitar-tuning))
% Fm
\storePredefinedDiagram #default-fret-table \chordmode {f,,:m}
                        #guitar-tuning
                        #(offset-fret 0 (chord-shape 'f:m guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {f:m}
                        #guitar-tuning
                        #(offset-fret 1 (chord-shape 'ees:m/ges guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {f'':m}
                        #guitar-tuning
                        #(offset-fret 7 (chord-shape 'bes:m/f guitar-tuning))
% Fm(maj7)
\storePredefinedDiagram #default-fret-table \chordmode {f:m7+}
                        #guitar-tuning
                        #(offset-fret 7 (chord-shape 'a:m7+ guitar-tuning))
% Fm7
\storePredefinedDiagram #default-fret-table \chordmode {f,,:m7}
                        #guitar-tuning
                        #(offset-fret 0 (chord-shape 'f:m7 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {f:m7}
                        #guitar-tuning
                        #(offset-fret 5 (chord-shape 'c:m7/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {f'':m7}
                        #guitar-tuning
                        #(offset-fret 7 (chord-shape 'bes:m7 guitar-tuning))
% Fm6
\storePredefinedDiagram #default-fret-table \chordmode {f:m6}
                        #guitar-tuning
                        #(offset-fret 5 (chord-shape 'c:m6/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {f'':m6}
                        #guitar-tuning
                        #(offset-fret 11 (chord-shape 'f:m6 guitar-tuning))
% F7
\storePredefinedDiagram #default-fret-table \chordmode {f,,:7}
                        #guitar-tuning
                        #(offset-fret 0 (chord-shape 'f:7 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {f:7}
                        #guitar-tuning
                        #(offset-fret 5 (chord-shape 'c:7/g guitar-tuning))
% Fdim
\storePredefinedDiagram #default-fret-table \chordmode {f:dim}
                        #guitar-tuning
                        #(offset-fret 5 (chord-shape 'c:dim/c guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {f'':dim}
                        #guitar-tuning
                        #(offset-fret 11 (chord-shape 'fsi:dim guitar-tuning))
% Fdim7
\storePredefinedDiagram #default-fret-table \chordmode {f:dim7}
                        #guitar-tuning
                        #(offset-fret 5 (chord-shape 'c:dim/c guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {f'':dim7}
                        #guitar-tuning
                        #(offset-fret 11 (chord-shape 'fsi:dim guitar-tuning))
% Faug
\storePredefinedDiagram #default-fret-table \chordmode {f,,:aug}
                        #guitar-tuning
                        #(offset-fret 0 (chord-shape 'f:aug guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {f:aug}
                        #guitar-tuning
                        #(offset-fret 5 (chord-shape 'c:aug/c guitar-tuning))
%%%%  fis chords
%
% F#
\storePredefinedDiagram #default-fret-table \chordmode {fis,,,}
                        #guitar-tuning
                        #(offset-fret 1 (chord-shape 'f guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {fis,,}
                        #guitar-tuning
                        #(offset-fret 3 (chord-shape 'ees:/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {fis}
                        #guitar-tuning
                        #(offset-fret 7 (chord-shape 'b:/ges guitar-tuning))
% F#maj7
\storePredefinedDiagram #default-fret-table \chordmode {fis,,:maj7}
                        #guitar-tuning
                        #(offset-fret 1 (chord-shape 'f:maj7 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {fis:maj7}
                        #guitar-tuning
                        #(offset-fret 6 (chord-shape 'c:maj7/g guitar-tuning))
% F#6
\storePredefinedDiagram #default-fret-table \chordmode {fis,,:6}
                        #guitar-tuning
                        #(offset-fret 0 (chord-shape 'fis:6 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {fis:6}
                        #guitar-tuning
                        #(offset-fret 6 (chord-shape 'c:6/g guitar-tuning))
% F#m
\storePredefinedDiagram #default-fret-table \chordmode {fis,,,:m}
                        #guitar-tuning
                        #(offset-fret 1 (chord-shape 'f:m guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {fis,,:m}
                        #guitar-tuning
                        #(offset-fret 2 (chord-shape 'ees:m/ges guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {fis:m}
                        #guitar-tuning
                        #(offset-fret 8 (chord-shape 'bes:m/f guitar-tuning))
% F#m7
\storePredefinedDiagram #default-fret-table \chordmode {fis,,:m7}
                        #guitar-tuning
                        #(offset-fret 1 (chord-shape 'f:m7 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {fis:m7}
                        #guitar-tuning
                        #(offset-fret 6 (chord-shape 'c:m7/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {fis'':m7}
                        #guitar-tuning
                        #(offset-fret 8 (chord-shape 'bes:m7 guitar-tuning))
% F#m6
\storePredefinedDiagram #default-fret-table \chordmode {fis,,:m6}
                        #guitar-tuning
                        #(offset-fret 0 (chord-shape 'f:m6 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {fis:m6}
                        #guitar-tuning
                        #(offset-fret 6 (chord-shape 'c:m6/g guitar-tuning))
% F#7
\storePredefinedDiagram #default-fret-table \chordmode {fis,,:7}
                        #guitar-tuning
                        #(offset-fret 1 (chord-shape 'f:7 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {fis:7}
                        #guitar-tuning
                        #(offset-fret 6 (chord-shape 'c:7/g guitar-tuning))
% F#dim
\storePredefinedDiagram #default-fret-table \chordmode {fis,,:dim}
                        #guitar-tuning
                        #(offset-fret 0 (chord-shape 'fsi:dim guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {fis:dim}
                        #guitar-tuning
                        #(offset-fret 6 (chord-shape 'c:dim/c guitar-tuning))
% F#dim7
\storePredefinedDiagram #default-fret-table \chordmode {fis,,:dim7}
                        #guitar-tuning
                        #(offset-fret 0 (chord-shape 'fsi:dim guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {fis:dim7}
                        #guitar-tuning
                        #(offset-fret 6 (chord-shape 'c:dim/c guitar-tuning))
% F#aug
\storePredefinedDiagram #default-fret-table \chordmode {fis,,:aug}
                        #guitar-tuning
                        #(offset-fret 1 (chord-shape 'f:aug guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {fis:aug}
                        #guitar-tuning
                        #(offset-fret 6 (chord-shape 'c:aug/c guitar-tuning))
%%%%  ges chords
%
% Gb
\storePredefinedDiagram #default-fret-table \chordmode {ges,,}
                        #guitar-tuning
                        #(offset-fret 1 (chord-shape 'f guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ges}
                        #guitar-tuning
                        #(offset-fret 3 (chord-shape 'ees:/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ges''}
                        #guitar-tuning
                        #(offset-fret 7 (chord-shape 'b:/ges guitar-tuning))
% Gb
\storePredefinedDiagram #default-fret-table \chordmode {ges,,:maj7}
                        #guitar-tuning
                        #(offset-fret 1 (chord-shape 'f:maj7 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ges:maj7}
                        #guitar-tuning
                        #(offset-fret 6 (chord-shape 'c:maj7/g guitar-tuning))
% Gb6
\storePredefinedDiagram #default-fret-table \chordmode {ges,,:6}
                        #guitar-tuning
                        #(offset-fret 0 (chord-shape 'fis:6 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ges:6}
                        #guitar-tuning
                        #(offset-fret 6 (chord-shape 'c:6/g guitar-tuning))
% Gbm
\storePredefinedDiagram #default-fret-table \chordmode {ges,,,:m}
                        #guitar-tuning
                        #(offset-fret 1 (chord-shape 'f:m guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ges,,:m}
                        #guitar-tuning
                        #(offset-fret 2 (chord-shape 'ees:m/ges guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ges:m}
                        #guitar-tuning
                        #(offset-fret 8 (chord-shape 'bes:m/f guitar-tuning))
% Gbm7
\storePredefinedDiagram #default-fret-table \chordmode {ges,,:m7}
                        #guitar-tuning
                        #(offset-fret 1 (chord-shape 'f:m7 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ges:m7}
                        #guitar-tuning
                        #(offset-fret 6 (chord-shape 'c:m7/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ges'':m7}
                        #guitar-tuning
                        #(offset-fret 8 (chord-shape 'bes:m7 guitar-tuning))
% Gbm6
\storePredefinedDiagram #default-fret-table \chordmode {ges,,:m6}
                        #guitar-tuning
                        #(offset-fret 0 (chord-shape 'f:m6 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ges:m6}
                        #guitar-tuning
                        #(offset-fret 6 (chord-shape 'c:m6/g guitar-tuning))
% Gb7
\storePredefinedDiagram #default-fret-table \chordmode {ges,,:7}
                        #guitar-tuning
                        #(offset-fret 1 (chord-shape 'f:7 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ges:7}
                        #guitar-tuning
                        #(offset-fret 6 (chord-shape 'c:7/g guitar-tuning))
% Gbdim
\storePredefinedDiagram #default-fret-table \chordmode {ges,,:dim}
                        #guitar-tuning
                        #(offset-fret 0 (chord-shape 'fsi:dim guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ges:dim}
                        #guitar-tuning
                        #(offset-fret 6 (chord-shape 'c:dim/c guitar-tuning))
% Gbdim7
\storePredefinedDiagram #default-fret-table \chordmode {ges,,:dim7}
                        #guitar-tuning
                        #(offset-fret 0 (chord-shape 'fsi:dim guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ges:dim7}
                        #guitar-tuning
                        #(offset-fret 6 (chord-shape 'c:dim/c guitar-tuning))
% Gbaug
\storePredefinedDiagram #default-fret-table \chordmode {ges,,:aug}
                        #guitar-tuning
                        #(offset-fret 1 (chord-shape 'f:aug guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ges:aug}
                        #guitar-tuning
                        #(offset-fret 6 (chord-shape 'c:aug/c guitar-tuning))
%%%%  g chords
%
% G
\storePredefinedDiagram #default-fret-table \chordmode {g,,}
                        #guitar-tuning
                        #(offset-fret 2 (chord-shape 'f guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {g}
                        #guitar-tuning
                        #(offset-fret 4 (chord-shape 'ees:/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {g''}
                        #guitar-tuning
                        #(offset-fret 8 (chord-shape 'b:/ges guitar-tuning))
% Gmaj7
\storePredefinedDiagram #default-fret-table \chordmode {g,,:maj7}
                        #guitar-tuning
                        #(offset-fret 2 (chord-shape 'f:maj7 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {g:maj7}
                        #guitar-tuning
                        #(offset-fret 7 (chord-shape 'c:maj7/g guitar-tuning))
% G6
\storePredefinedDiagram #default-fret-table \chordmode {g,,:6}
                        #guitar-tuning
                        #(offset-fret 1 (chord-shape 'fis:6 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {g:6}
                        #guitar-tuning
                        #(offset-fret 7 (chord-shape 'c:6/g guitar-tuning))
% Gm
\storePredefinedDiagram #default-fret-table \chordmode {g,,:m}
                        #guitar-tuning
                        #(offset-fret 2 (chord-shape 'f:m guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {g:m}
                        #guitar-tuning
                        #(offset-fret 3 (chord-shape 'ees:m/ges guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {g'':m}
                        #guitar-tuning
                        #(offset-fret 9 (chord-shape 'bes:m/f guitar-tuning))
% Gm7
\storePredefinedDiagram #default-fret-table \chordmode {g,,:m7}
                        #guitar-tuning
                        #(offset-fret 2 (chord-shape 'f:m7 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {g:m7}
                        #guitar-tuning
                        #(offset-fret 7 (chord-shape 'c:m7/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {g'':m7}
                        #guitar-tuning
                        #(offset-fret 9 (chord-shape 'bes:m7 guitar-tuning))
% Gm6
\storePredefinedDiagram #default-fret-table \chordmode {g,,:m6}
                        #guitar-tuning
                        #(offset-fret 1 (chord-shape 'f:m6 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {g:m6}
                        #guitar-tuning
                        #(offset-fret 7 (chord-shape 'c:m6/g guitar-tuning))
% G7
\storePredefinedDiagram #default-fret-table \chordmode {g:7}
                        #guitar-tuning
                        #(offset-fret 2 (chord-shape 'f:7 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {g'':7}
                        #guitar-tuning
                        #(offset-fret 7 (chord-shape 'c:7/g guitar-tuning))
% Gdim
\storePredefinedDiagram #default-fret-table \chordmode {g:dim}
                        #guitar-tuning
                        #(offset-fret 1 (chord-shape 'fsi:dim guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {g'':dim}
                        #guitar-tuning
                        #(offset-fret 7 (chord-shape 'c:dim/c guitar-tuning))
% Gdim7
\storePredefinedDiagram #default-fret-table \chordmode {g,,:dim7}
                        #guitar-tuning
                        #(offset-fret 1 (chord-shape 'fsi:dim guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {g:dim7}
                        #guitar-tuning
                        #(offset-fret 7 (chord-shape 'c:dim/c guitar-tuning))
% Gaug
\storePredefinedDiagram #default-fret-table \chordmode {g,,:aug}
                        #guitar-tuning
                        #(offset-fret 2 (chord-shape 'f:aug guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {g:aug}
                        #guitar-tuning
                        #(offset-fret 7 (chord-shape 'c:aug/c guitar-tuning))
%%%%  gis chords
%
% G#
\storePredefinedDiagram #default-fret-table \chordmode {gis,,,}
                        #guitar-tuning
                        #(offset-fret 3 (chord-shape 'f guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {gis,,}
                        #guitar-tuning
                        #(offset-fret 5 (chord-shape 'ees:/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {gis}
                        #guitar-tuning
                        #(offset-fret 9 (chord-shape 'b:/ges guitar-tuning))
% G#maj7
\storePredefinedDiagram #default-fret-table \chordmode {gis,,:maj7}
                        #guitar-tuning
                        #(offset-fret 3 (chord-shape 'f:maj7 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {gis:maj7}
                        #guitar-tuning
                        #(offset-fret 8 (chord-shape 'c:maj7/g guitar-tuning))
% G#6
\storePredefinedDiagram #default-fret-table \chordmode {gis,,:6}
                        #guitar-tuning
                        #(offset-fret 2 (chord-shape 'fis:6 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {gis:6}
                        #guitar-tuning
                        #(offset-fret 8 (chord-shape 'c:6/g guitar-tuning))
% G#m
\storePredefinedDiagram #default-fret-table \chordmode {gis,,,:m}
                        #guitar-tuning
                        #(offset-fret 3 (chord-shape 'f:m guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {gis,,:m}
                        #guitar-tuning
                        #(offset-fret 4 (chord-shape 'ees:m/ges guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {gis:m}
                        #guitar-tuning
                        #(offset-fret 10 (chord-shape 'bes:m/f guitar-tuning))
% G#m7
\storePredefinedDiagram #default-fret-table \chordmode {gis,,:m7}
                        #guitar-tuning
                        #(offset-fret 3 (chord-shape 'f:m7 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {gis:m7}
                        #guitar-tuning
                        #(offset-fret 8 (chord-shape 'c:m7/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {gis'':m7}
                        #guitar-tuning
                        #(offset-fret 10 (chord-shape 'bes:m7 guitar-tuning))
% G#m6
\storePredefinedDiagram #default-fret-table \chordmode {gis,,:m6}
                        #guitar-tuning
                        #(offset-fret 2 (chord-shape 'f:m6 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {gis:m6}
                        #guitar-tuning
                        #(offset-fret 8 (chord-shape 'c:m6/g guitar-tuning))
% G#7
\storePredefinedDiagram #default-fret-table \chordmode {gis,,:7}
                        #guitar-tuning
                        #(offset-fret 3 (chord-shape 'f:7 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {gis:7}
                        #guitar-tuning
                        #(offset-fret 8 (chord-shape 'c:7/g guitar-tuning))
% G#dim
\storePredefinedDiagram #default-fret-table \chordmode {gis,,:dim}
                        #guitar-tuning
                        #(offset-fret 2 (chord-shape 'fsi:dim guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {gis:dim}
                        #guitar-tuning
                        #(offset-fret 8 (chord-shape 'c:dim/c guitar-tuning))
% G#dim7
\storePredefinedDiagram #default-fret-table \chordmode {gis,,:dim7}
                        #guitar-tuning
                        #(offset-fret 2 (chord-shape 'fsi:dim guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {gis:dim7}
                        #guitar-tuning
                        #(offset-fret 8 (chord-shape 'c:dim/c guitar-tuning))
% G#aug
\storePredefinedDiagram #default-fret-table \chordmode {gis,,:aug}
                        #guitar-tuning
                        #(offset-fret 3 (chord-shape 'f:aug guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {gis:aug}
                        #guitar-tuning
                        #(offset-fret 8 (chord-shape 'c:aug/c guitar-tuning))
%%%%  aes chords
%
% Ab
\storePredefinedDiagram #default-fret-table \chordmode {aes,,}
                        #guitar-tuning
                        #(offset-fret 3 (chord-shape 'f guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {aes}
                        #guitar-tuning
                        #(offset-fret 5 (chord-shape 'ees:/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {aes''}
                        #guitar-tuning
                        #(offset-fret 9 (chord-shape 'b:/ges guitar-tuning))
% Abmaj7
\storePredefinedDiagram #default-fret-table \chordmode {aes:maj7}
                        #guitar-tuning
                        #(offset-fret 3 (chord-shape 'f:maj7 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {aes'':maj7}
                        #guitar-tuning
                        #(offset-fret 8 (chord-shape 'c:maj7/g guitar-tuning))
% Ab6
\storePredefinedDiagram #default-fret-table \chordmode {aes:6}
                        #guitar-tuning
                        #(offset-fret 2 (chord-shape 'fis:6 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {aes'':6}
                        #guitar-tuning
                        #(offset-fret 8 (chord-shape 'c:6/g guitar-tuning))
% Abm
\storePredefinedDiagram #default-fret-table \chordmode {aes,,:m}
                        #guitar-tuning
                        #(offset-fret 3 (chord-shape 'f:m guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {aes:m}
                        #guitar-tuning
                        #(offset-fret 4 (chord-shape 'ees:m/ges guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {aes'':m}
                        #guitar-tuning
                        #(offset-fret 10 (chord-shape 'bes:m/f guitar-tuning))
% Abm7
\storePredefinedDiagram #default-fret-table \chordmode {aes,,:m7}
                        #guitar-tuning
                        #(offset-fret 3 (chord-shape 'f:m7 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {aes:m7}
                        #guitar-tuning
                        #(offset-fret 8 (chord-shape 'c:m7/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {aes'':m7}
                        #guitar-tuning
                        #(offset-fret 10 (chord-shape 'bes:m7 guitar-tuning))
% Abm6
\storePredefinedDiagram #default-fret-table \chordmode {aes:m6}
                        #guitar-tuning
                        #(offset-fret 2 (chord-shape 'f:m6 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {aes'':m6}
                        #guitar-tuning
                        #(offset-fret 8 (chord-shape 'c:m6/g guitar-tuning))
% Ab7
\storePredefinedDiagram #default-fret-table \chordmode {aes:7}
                        #guitar-tuning
                        #(offset-fret 3 (chord-shape 'f:7 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {aes'':7}
                        #guitar-tuning
                        #(offset-fret 8 (chord-shape 'c:7/g guitar-tuning))
% Abdim
\storePredefinedDiagram #default-fret-table \chordmode {aes,,:dim}
                        #guitar-tuning
                        #(offset-fret 2 (chord-shape 'fsi:dim guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {aes:dim}
                        #guitar-tuning
                        #(offset-fret 8 (chord-shape 'c:dim/c guitar-tuning))
% Abdim7
\storePredefinedDiagram #default-fret-table \chordmode {aes,,:dim7}
                        #guitar-tuning
                        #(offset-fret 2 (chord-shape 'fsi:dim guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {aes:dim7}
                        #guitar-tuning
                        #(offset-fret 8 (chord-shape 'c:dim/c guitar-tuning))
% Abaug
\storePredefinedDiagram #default-fret-table \chordmode {aes,,:aug}
                        #guitar-tuning
                        #(offset-fret 3 (chord-shape 'f:aug guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {aes:aug}
                        #guitar-tuning
                        #(offset-fret 8 (chord-shape 'c:aug/c guitar-tuning))
%%%%  a chords
%
% A
\storePredefinedDiagram #default-fret-table \chordmode {a,,}
                        #guitar-tuning
                        #(offset-fret 4 (chord-shape 'f guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {a}
                        #guitar-tuning
                        #(offset-fret 6 (chord-shape 'ees:/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {a''}
                        #guitar-tuning
                        #(offset-fret 10 (chord-shape 'b:/ges guitar-tuning))
% Amaj7
\storePredefinedDiagram #default-fret-table \chordmode {a,,:maj7}
                        #guitar-tuning
                        #(offset-fret 4 (chord-shape 'f:maj7 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {a:maj7}
                        #guitar-tuning
                        #(offset-fret 9 (chord-shape 'c:maj7/g guitar-tuning))
% A6
\storePredefinedDiagram #default-fret-table \chordmode {a,,:6}
                        #guitar-tuning
                        #(offset-fret 3 (chord-shape 'fis:6 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {a:6}
                        #guitar-tuning
                        #(offset-fret 9 (chord-shape 'c:6/g guitar-tuning))
% Am
\storePredefinedDiagram #default-fret-table \chordmode {a,,:m}
                        #guitar-tuning
                        #(offset-fret 4 (chord-shape 'f:m guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {a:m}
                        #guitar-tuning
                        #(offset-fret 5 (chord-shape 'ees:m/ges guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {a'':m}
                        #guitar-tuning
                        #(offset-fret 11 (chord-shape 'bes:m/f guitar-tuning))
% Am7
\storePredefinedDiagram #default-fret-table \chordmode {a,,:m7}
                        #guitar-tuning
                        #(offset-fret 11 (chord-shape 'bes:m7 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {a:m7}
                        #guitar-tuning
                        #(offset-fret 4 (chord-shape 'f:m7 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {a'':m7}
                        #guitar-tuning
                        #(offset-fret 9 (chord-shape 'c:m7/g guitar-tuning))
% Am6
\storePredefinedDiagram #default-fret-table \chordmode {a:m6}
                        #guitar-tuning
                        #(offset-fret 3 (chord-shape 'f:m6 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {a'':m6}
                        #guitar-tuning
                        #(offset-fret 9 (chord-shape 'c:m6/g guitar-tuning))
% A7
\storePredefinedDiagram #default-fret-table \chordmode {a:7}
                        #guitar-tuning
                        #(offset-fret 4 (chord-shape 'f:7 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {a'':7}
                        #guitar-tuning
                        #(offset-fret 9 (chord-shape 'c:7/g guitar-tuning))
% Adim
\storePredefinedDiagram #default-fret-table \chordmode {a:dim}
                        #guitar-tuning
                        #(offset-fret 3 (chord-shape 'fsi:dim guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {a'':dim}
                        #guitar-tuning
                        #(offset-fret 9 (chord-shape 'c:dim/c guitar-tuning))
% Adim7
\storePredefinedDiagram #default-fret-table \chordmode {a,,:dim7}
                        #guitar-tuning
                        #(offset-fret 3 (chord-shape 'fsi:dim guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {a:dim7}
                        #guitar-tuning
                        #(offset-fret 9 (chord-shape 'c:dim/c guitar-tuning))
% Aaug
\storePredefinedDiagram #default-fret-table \chordmode {a,,:aug}
                        #guitar-tuning
                        #(offset-fret 4 (chord-shape 'f:aug guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {a:aug}
                        #guitar-tuning
                        #(offset-fret 9 (chord-shape 'c:aug/c guitar-tuning))
%%%%  ais chords
%
% A#
\storePredefinedDiagram #default-fret-table \chordmode {ais,,}
                        #guitar-tuning
                        #(offset-fret 5 (chord-shape 'f guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ais}
                        #guitar-tuning
                        #(offset-fret 7 (chord-shape 'ees:/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ais''}
                        #guitar-tuning
                        #(offset-fret 11 (chord-shape 'b:/ges guitar-tuning))
% A#maj7
\storePredefinedDiagram #default-fret-table \chordmode {ais:maj7}
                        #guitar-tuning
                        #(offset-fret 5 (chord-shape 'f:maj7 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ais'':maj7}
                        #guitar-tuning
                        #(offset-fret 10 (chord-shape 'c:maj7/g guitar-tuning))
% A#6
\storePredefinedDiagram #default-fret-table \chordmode {ais:6}
                        #guitar-tuning
                        #(offset-fret 4 (chord-shape 'fis:6 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ais'':6}
                        #guitar-tuning
                        #(offset-fret 10 (chord-shape 'c:6/g guitar-tuning))
% A#m
\storePredefinedDiagram #default-fret-table \chordmode {ais,,:m}
                        #guitar-tuning
                        #(offset-fret 0 (chord-shape 'bes:m/f guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ais:m}
                        #guitar-tuning
                        #(offset-fret 5 (chord-shape 'f:m guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ais'':m}
                        #guitar-tuning
                        #(offset-fret 6 (chord-shape 'ees:m/ges guitar-tuning))
% A#m7
\storePredefinedDiagram #default-fret-table \chordmode {ais,,:m7}
                        #guitar-tuning
                        #(offset-fret 0 (chord-shape 'bes:m7 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ais:m7}
                        #guitar-tuning
                        #(offset-fret 5 (chord-shape 'f:m7 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ais'':m7}
                        #guitar-tuning
                        #(offset-fret 10 (chord-shape 'c:m7/g guitar-tuning))
% A#m6
\storePredefinedDiagram #default-fret-table \chordmode {ais:m6}
                        #guitar-tuning
                        #(offset-fret 4 (chord-shape 'f:m6 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ais'':m6}
                        #guitar-tuning
                        #(offset-fret 10 (chord-shape 'c:m6/g guitar-tuning))
% A#7
\storePredefinedDiagram #default-fret-table \chordmode {ais:7}
                        #guitar-tuning
                        #(offset-fret 5 (chord-shape 'f:7 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ais'':7}
                        #guitar-tuning
                        #(offset-fret 10 (chord-shape 'c:7/g guitar-tuning))
% A#dim
\storePredefinedDiagram #default-fret-table \chordmode {ais:dim}
                        #guitar-tuning
                        #(offset-fret 4 (chord-shape 'fsi:dim guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ais'':dim}
                        #guitar-tuning
                        #(offset-fret 10 (chord-shape 'c:dim/c guitar-tuning))
% A#dim7
\storePredefinedDiagram #default-fret-table \chordmode {ais:dim7}
                        #guitar-tuning
                        #(offset-fret 4 (chord-shape 'fsi:dim guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ais'':dim7}
                        #guitar-tuning
                        #(offset-fret 10 (chord-shape 'c:dim/c guitar-tuning))
% A#aug
\storePredefinedDiagram #default-fret-table \chordmode {ais:aug}
                        #guitar-tuning
                        #(offset-fret 5 (chord-shape 'f:aug guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {ais'':aug}
                        #guitar-tuning
                        #(offset-fret 10 (chord-shape 'c:aug/c guitar-tuning))
%%%%  bes chords
%
% Bb
\storePredefinedDiagram #default-fret-table \chordmode {bes}
                        #guitar-tuning
                        #(offset-fret 5 (chord-shape 'f guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {bes''}
                        #guitar-tuning
                        #(offset-fret 7 (chord-shape 'ees:/g guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {bes'''}
                        #guitar-tuning
                        #(offset-fret 11 (chord-shape 'b:/ges guitar-tuning))
% Bbmaj7
\storePredefinedDiagram #default-fret-table \chordmode {bes:maj7}
                        #guitar-tuning
                        #(offset-fret 5 (chord-shape 'f:maj7 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {bes'':maj7}
                        #guitar-tuning
                        #(offset-fret 10 (chord-shape 'c:maj7/g guitar-tuning))
% Bb6
\storePredefinedDiagram #default-fret-table \chordmode {bes:6}
                        #guitar-tuning
                        #(offset-fret 4 (chord-shape 'fis:6 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {bes'':6}
                        #guitar-tuning
                        #(offset-fret 10 (chord-shape 'c:6/g guitar-tuning))
% Bbm
\storePredefinedDiagram #default-fret-table \chordmode {bes,,:m}
                        #guitar-tuning
                        #(offset-fret 0 (chord-shape 'bes:m/f guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {bes:m}
                        #guitar-tuning
                        #(offset-fret 5 (chord-shape 'f:m guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {bes'':m}
                        #guitar-tuning
                        #(offset-fret 6 (chord-shape 'ees:m/ges guitar-tuning))
% Bbm7
\storePredefinedDiagram #default-fret-table \chordmode {bes,,:m7}
                        #guitar-tuning
                        #(offset-fret 0 (chord-shape 'bes:m7 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {bes:m7}
                        #guitar-tuning
                        #(offset-fret 5 (chord-shape 'f:m7 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {bes'':m7}
                        #guitar-tuning
                        #(offset-fret 10 (chord-shape 'c:m7/g guitar-tuning))
% Bbm6
\storePredefinedDiagram #default-fret-table \chordmode {bes:m6}
                        #guitar-tuning
                        #(offset-fret 4 (chord-shape 'f:m6 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {bes'':m6}
                        #guitar-tuning
                        #(offset-fret 10 (chord-shape 'c:m6/g guitar-tuning))
% Bb7
\storePredefinedDiagram #default-fret-table \chordmode {bes:7}
                        #guitar-tuning
                        #(offset-fret 5 (chord-shape 'f:7 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {bes'':7}
                        #guitar-tuning
                        #(offset-fret 10 (chord-shape 'c:7/g guitar-tuning))
% Bbdim
\storePredefinedDiagram #default-fret-table \chordmode {bes:dim}
                        #guitar-tuning
                        #(offset-fret 4 (chord-shape 'fsi:dim guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {bes'':dim}
                        #guitar-tuning
                        #(offset-fret 10 (chord-shape 'c:dim/c guitar-tuning))
% Bbdim7
\storePredefinedDiagram #default-fret-table \chordmode {bes:dim7}
                        #guitar-tuning
                        #(offset-fret 4 (chord-shape 'fsi:dim guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {bes'':dim7}
                        #guitar-tuning
                        #(offset-fret 10 (chord-shape 'c:dim/c guitar-tuning))
% Bbaug
\storePredefinedDiagram #default-fret-table \chordmode {bes:aug}
                        #guitar-tuning
                        #(offset-fret 5 (chord-shape 'f:aug guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {bes'':aug}
                        #guitar-tuning
                        #(offset-fret 10 (chord-shape 'c:aug/c guitar-tuning))
%%%%  b chords
%
% B
\storePredefinedDiagram #default-fret-table \chordmode {b,,}
                        #guitar-tuning
                        #(offset-fret 0 (chord-shape 'b:/ges guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {b}
                        #guitar-tuning
                        #(offset-fret 6 (chord-shape 'f guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {b''}
                        #guitar-tuning
                        #(offset-fret 8 (chord-shape 'ees:/g guitar-tuning))

% Bmaj7
\storePredefinedDiagram #default-fret-table \chordmode {b:maj7}
                        #guitar-tuning
                        #(offset-fret 6 (chord-shape 'f:maj7 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {b'':maj7}
                        #guitar-tuning
                        #(offset-fret 11 (chord-shape 'c:maj7/g guitar-tuning))

% B6
\storePredefinedDiagram #default-fret-table \chordmode {b:6}
                        #guitar-tuning
                        #(offset-fret 5 (chord-shape 'fis:6 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {b'':6}
                        #guitar-tuning
                        #(offset-fret 11 (chord-shape 'c:6/g guitar-tuning))

% Bm
\storePredefinedDiagram #default-fret-table \chordmode {b,,:m}
                        #guitar-tuning
                        #(offset-fret 1 (chord-shape 'bes:m/f guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {b:m}
                        #guitar-tuning
                        #(offset-fret 6 (chord-shape 'f:m guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {b'':m}
                        #guitar-tuning
                        #(offset-fret 7 (chord-shape 'ees:m/ges guitar-tuning))

% Bm7
\storePredefinedDiagram #default-fret-table \chordmode {b,,:m7}
                        #guitar-tuning
                        #(offset-fret 1 (chord-shape 'bes:m7 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {b:m7}
                        #guitar-tuning
                        #(offset-fret 6 (chord-shape 'f:m7 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {b'':m7}
                        #guitar-tuning
                        #(offset-fret 11 (chord-shape 'c:m7/g guitar-tuning))

% Bm6
\storePredefinedDiagram #default-fret-table \chordmode {b:m6}
                        #guitar-tuning
                        #(offset-fret 5 (chord-shape 'f:m6 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {b'':m6}
                        #guitar-tuning
                        #(offset-fret 11 (chord-shape 'c:m6/g guitar-tuning))

% B7
\storePredefinedDiagram #default-fret-table \chordmode {b:7}
                        #guitar-tuning
                        #(offset-fret 6 (chord-shape 'f:7 guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {b'':7}
                        #guitar-tuning
                        #(offset-fret 11 (chord-shape 'c:7/g guitar-tuning))
% Bdim
\storePredefinedDiagram #default-fret-table \chordmode {b:dim}
                        #guitar-tuning
                        #(offset-fret 5 (chord-shape 'fsi:dim guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {b'':dim}
                        #guitar-tuning
                        #(offset-fret 11 (chord-shape 'c:dim/c guitar-tuning))
% Bdim7
\storePredefinedDiagram #default-fret-table \chordmode {b:dim7}
                        #guitar-tuning
                        #(offset-fret 5 (chord-shape 'fsi:dim guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {b'':dim7}
                        #guitar-tuning
                        #(offset-fret 11 (chord-shape 'c:dim/c guitar-tuning))
% Baug
\storePredefinedDiagram #default-fret-table \chordmode {b:aug}
                        #guitar-tuning
                        #(offset-fret 6 (chord-shape 'f:aug guitar-tuning))
\storePredefinedDiagram #default-fret-table \chordmode {b'':aug}
                        #guitar-tuning
                        #(offset-fret 11 (chord-shape 'c:aug/c guitar-tuning))
\languageRestore
