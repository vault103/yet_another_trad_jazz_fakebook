\version "2.16.0"
\language "english"

#(if (equal? guitar_changes "")     (set! guitar_changes changes))
#(if (equal? ukulele_changes "")    (set! ukulele_changes changes))
#(if (equal? bass_changes "")       (set! bass_changes changes))
bass_changes = \transpose c c,,, { \bass_changes }

#(if (equal? ukulele_chords "")     (set! ukulele_chords chords_used))
#(if (equal? guitar_chords "")      (set! guitar_chords chords_used))
#(if (equal? bass_chords "")        (set! bass_chords chords_used))
#(if (equal? chord_names "")        (set! chord_names chords_used))
bass_chords = \transpose c c,, { \bass_chords }

#(if (equal? ukulele_chords_b "")   (set! ukulele_chords_b chords_used_b))
#(if (equal? guitar_chords_b "")    (set! guitar_chords_b chords_used_b))
#(if (equal? chord_names_b "")      (set! chord_names_b chords_used_b))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%---------------------------------
%\include "_/AccordsJazzDefs.ly"
%
% on peut enregistrer ces commandes dans un fichier "AccordsJazzDefs.ly" par exemple
% pour bénéficier de ces définition il faut substituer la police de base du \chormode
% par la police spéciale "lilyjazzchord" ou les altérations sont définies par les caractères > = b et < = #
%---------------------------------

% modification de la procedure "chordRootNamer"
%---- définition des altérations dans les accords -------
%#(define (chordNamer pitch)
#(define (chordNamer pitch majmin)
    (let* ((alt (ly:pitch-alteration pitch)))
        (make-line-markup
            (list
                (make-simple-markup 
                    (vector-ref #("C" "D" "E" "F" "G" "A" "B")
                        (ly:pitch-notename pitch)))
                (if (= alt 0)           ; alteration ?
                    (markup "")     ;non
                    (if (= alt FLAT)    ; b ou #
                        (markup ">")
                        (markup "<")
                    )
                )
            )
        )
    )
)

%----- commandes markup pour simplifier l'ecriture de l'interprétation des accords -----
%----- cette partie peut etre adaptée a vos convenances ( "MI" et "MA" que je n'aime pas par exemple)
% commande accord mineur "acMin" les accords mineurs sont symbolysés par un "m" small
#(define-markup-command (acMin layout props extension) (string?)
    (interpret-markup layout props
        (markup #:small "m" #:super extension)))

% commande accord majeur "acMaj" les accords mineurs sont symbolysés par un "M" small
#(define-markup-command (acMaj layout props extension) (string?)
    (interpret-markup layout props
        (markup #:small "M" #:super extension)))

% commande accord altéré "acAlt" aguments : exposant puis 2 valeurs qui seront supperposées entre parenthèses 
#(define-markup-command (acAlt layout props strA strB strC) (string? string? string?)
    (interpret-markup layout props
        (markup 
            #:super strA
            #:fontsize 1.5 "["
            #:fontsize -4 
            #:raise 1.8
            #:column (strB strC) 
            #:fontsize 1.5 "]"
        )
    )
)

% modification de la propriété "chordNameExceptions" 
%----- Définition des exceptions pour les accords -----
% 
%   degrés             markup              % écriture
chJazzMusic = {
% accords 1ere tierce mineure - 3  notes
    < c ef gf >     -\markup \super "dim."      % :dim
    < c ef g >      -\markup \acMin #""     % :m

% accords 1ere tierce mineure - 4  notes
    < c f gf bff >      -\markup \super "7dim"      % :dim7
    < c ef gs >     -\markup \acMin #"aug"      % :m5+ (Ab/C)   
    < c ef g a >        -\markup \acMin #"6"        % :m6            
    < c ef gf bf >  -\markup \acMin #"7 >5"     % :m7.5-         
    < c ef g bf >       -\markup \acMin #"7"        % :m7            
    < c ef gs bf >  -\markup \acMin #"7 <5"     % :m7.5+         
    < c ef g b >        -\markup \acMin #"M7"       % :m7+           
    < c ef g d' >       -\markup \acMin #"add9"     % :m5.9
    
% accords 1ere tierce mineure - 5  notes et +
    < c ef g a d' > -\markup \acMin #"6/9"      % :m6.9
    < c ef g bf df' >   -\markup \acMin #"7(>9)"    % :m7.9-
    < c ef g bf d' >    -\markup \acMin #"9"        % :m9
    < c ef gf bf d' >   -\markup \acMin #"9(>5)"    % :m9.5-
    < c ef g b d' > -\markup \acMin #"9(M7)"    % :m9.7+
    < c ef g bf ds' >   -\markup \acMin #"7(<9)"    % :m7.9+
    < c ef g bf f' >    -\markup \acMin #"7(add 11)"    % :m7.11
    < c ef g bf a' >    -\markup \acMin #"7(add 13)"    % :m7.13
    < c ef g bf d' f' > -\markup \acMin #"11"       % :m11
    < c ef gf bf d' f' >    -\markup \acMin #"11(>5)"   % :m11.5-
    < c ef g bf d' f' a'>   -\markup \acMin #"13"       % :m13

% accords 1ere tierce majeure - 3 notes
    < c e gf>       -\markup \super "5>"        % :5-
    < c e gs>       -\markup \super "aug."      % :aug

% accords 1ere tierce majeure - 4 notes
    < c e g a d'>       -\markup {
        \super "6"
        \hspace #-0.5 \raise #0.7 \tiny "/"
        \hspace #-0.5 \tiny "9"
        }   % :6.9

%   < c e g a d'>       -\markup \acAlt #"" #"6" #"9"   % :6.9
%   < c e g b>      -\markup \acMaj #"7"        % :maj
%   < c e gf b>     -\markup \acMaj #"7>5"      % :maj.5-
%   < c e gs b>     -\markup \acMaj #"7<5"      % :maj.5+
    
    < c e gf bf>        -\markup \super "7(>5)"     % :7.5-
    < c e gs bf>        -\markup \super "7(<5)"     % :7.5+
    < c e g d'>     -\markup \super "add9"      % :5.9

% accords 1ere tierce majeure - 5 notes et +
%   <c e g b d'>        -\markup \acMaj #"9"        % :maj9

    <c e g bf df'>  -\markup \super "7(>9)"         % :9-
    <c e gf bf df'> -\markup \acAlt #"7" #">9" #">5"    % :9-.5-
    <c e gs bf df'> -\markup \acAlt #"7" #">9" #"<5"    % :9-.5+
    <c e g bf ds'>  -\markup \super "7(<9)"         % :9+
    <c e gf bf ds'> -\markup \acAlt #"7" #"<9" #">5"    % :9+.5-
    <c e gs bf ds'> -\markup \acAlt #"7" #"<9" #"<5"    % :9+.5+

    <c e g bf fs'>  -\markup \super "7(<11)"        % :7.11+
    <c e g bf af'>  -\markup \super "7(>13)"        % :7.13-
%   < c e g b d' a' >   -\markup \acMaj #"13"       % :maj13 
    < c e g bf d' a' >  -\markup \super "13"        % :13 

% accord sus.
    < c d g>        -\markup \super "sus2"  % :sus2
    < c f g>        -\markup \super "sus"   % :sus4
    < c f g bf>     -\markup \super "7sus"  % :sus4.7
    < c f g bf d'>      -\markup \super "9sus"  % :sus4.7.9
}

%variable permettant d'appeler les exceptions
chJazz = #(append (sequential-music-to-chord-exceptions chJazzMusic #t))    

%-------------------------------
% Fin des définitions
%-------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Half-Diminished chord names
chExceptionMusic = {
  <c e gf bf>1-\markup  { \super \concat { "7(" \smaller {\flat} "5)"} }
  <c ef gf bf>1-\markup { \super \concat { "m7(" \smaller {\flat} "5)"} }
  <c e g d'>1-\markup   { \super "add9" }
  <c e gs bf>1-\markup  { +\super "7" }
}

chExceptions = #( append
  ( sequential-music-to-chord-exceptions chExceptionMusic #t)
    ignatzekExceptions)

% correct markup for "b" and "#" (use symbols from current font...)
chordFlat = \markup { \hspace #0.2 \fontsize #-1 \raise #0.3 "b" }
chordSharp = \markup { \hspace #0.1 \fontsize #-1 \raise #0.3 "#" }

#(define (conditional-string-downcase str condition)
  (if condition
      (string-downcase str)
      str))

%{      
% fix accidentals with some Scheme (using the current font's symbols)
#(define (my-chord-name->pop-markup pitch lowercase?)
  (let* ((alt (ly:pitch-alteration pitch)))
  (make-line-markup
    (list
      (make-simple-markup 
       (conditional-string-downcase
        (vector-ref #("C" "D" "E" "F" "G" "A" "B") (ly:pitch-notename pitch))
        lowercase?))
      ;; If it's natural, do nothing
      (if (= alt 0)
        (make-line-markup (list empty-markup))
        (if (= alt FLAT)
          ;; Otherwise, handle adding the flat symbol
          (make-line-markup
            (list
              (make-hspace-markup 0.3)
              (make-small-markup (make-raise-markup 0.7
                (make-text-markup "b")))))
          ;; or handle adding the sharp symbol
          (make-line-markup
            (list
              (make-hspace-markup 0.1)
              (make-small-markup (make-raise-markup 0.7
                (make-text-markup "#")))))))))))
%}

chord_format = {
    \set majorSevenSymbol                       = \markup { (maj7) }
    \set chordNameExceptions                    = #chJazz
    \set chordRootNamer                         = #chordNamer
    \override ChordNames.ChordName.font-size    = #2
    \override ChordNames.ChordName.font-name    = #"lilyjazz-chord"
    % \set chordChanges                         = ##t
}

page_format = {
    \override Score.Clef.break-visibility           = #'#(#f #f #f)     % une seule clef
%    \override Score.KeySignature #'break-visibility = #'#(#f #f #f)    % une seule signature
    \override Score.SystemStartBar.collapse-height  = #1                % barre en debut de portée
}

\include "./all_parts.ly"
