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

(define all-l (append e-string-l a-string-l))
(define all-s (append e-string-s a-string-s))
