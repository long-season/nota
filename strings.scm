(define e-string-l '((E0 E) (E1 F) (E2 F#) (E3 G) (E4 G#)
                     (E5 A) (E6 A#) (E7 B) (E8 C)
                     (E9 C#) (E10 D) (E11 D#)))

(define e-string-s '((Mi0 Mi) (Mi1 Fa) (Mi2 Fa#) (Mi3 Sol) (Mi4 Sol#)
                     (Mi5 La) (Mi6 La#) (Mi7 Si) (Mi8 Do)
                     (Mi9 Do#) (Mi10 Re) (Mi11 Re#)))

(define a-string-l '((A0 A) (A1 A#) (A2 B) (A3 C) (A4 C#)
                     (A5 D) (A6 D#) (A7 E) (A8 F)
                     (A9 F#) (A10 G) (A11 G#)))

(define a-string-s '((La0 La) (La1 La#) (La2 Si) (La3 Do) (La4 Do#)
                     (La5 Re) (La6 Re#) (La7 Mi) (La8 Fa)
                     (La9 Fa#) (La10 Sol) (La11 Sol#)))

(define d-string-l '((D0 D) (D1 D#) (D2 E) (D3 F) (D4 F#)
                     (D5 G) (D6 G#) (D7 A) (D8 A#)
                     (D9 B) (D10 C) (D11 C#)))

(define d-string-s '((Re0 Re) (Re1 Re#) (Re2 Mi) (Re3 Fa) (Re4 Fa#)
                     (Re5 Sol) (Re6 Sol#) (Re7 La) (Re8 La#)
                     (Re9 Si) (Re10 Do) (Re11 Do#)))

(define g-string-l '((G0 G) (G1 G#) (G2 A) (G3 A#) (G4 B)
                     (G5 C) (G6 C#) (G7 D) (G8 D#)
                     (G9 E) (G10 F) (G11 F#)))

(define g-string-s '((Sol0 Sol) (Sol1 Sol#) (Sol2 La) (Sol3 La#) (Sol4 Si)
                     (Sol5 Do) (Sol6 Do#) (Sol7 Re) (Sol8 Re#)
                     (Sol9 Mi) (Sol10 Fa) (Sol11 Fa#)))

(define b-string-l '((B0 B) (B1 C) (B2 C#) (B3 D) (B4 D#)
                     (B5 E) (B6 F) (B7 F#) (B8 G)
                     (B9 G#) (B10 A) (B11 A#)))

(define b-string-s '((Si0 Si) (Si1 Do) (Si2 Do#) (Si3 Re) (Si4 Re#)
                     (Si5 Mi) (Si6 Fa) (Si7 Fa#) (Si8 Sol)
                     (Si9 Sol#) (Si10 La) (Si11 La#)))

(define all-l (append e-string-l a-string-l d-string-l g-string-l b-string-l))
(define all-s (append e-string-s a-string-s d-string-s g-string-s b-string-s))
