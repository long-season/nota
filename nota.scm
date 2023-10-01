; TODO:
; - some sort of repl for constant challenges
; - add range for frets >12
; - smarter way to populate notes to frets in *-string-{l,s} lists (macro)
; - make it possible to tweak preferences more intuitively
; - fix compiled version (problem caused by list-ref or similar probably)
; - read notation?/fret? from settings.txt + fix newline + avoid append if existing
;
(import srfi-216) ; implements random
(import (chicken string)) ; implements string-chop, ->string
(import (chicken file posix)) ; file i/o
(load "strings.scm")

(define letter-notation? (lambda () (print "Use Letter (C, C#) or Solfege (Do, Do#) notation? (l)etter/(s)olfege")
  (let ((notation-choice (read) ))
    (define settingf (file-open "settings.txt" (+ open/append open/wronly open/creat)))
    (if (equal? notation-choice 'l)
        (file-write settingf "notation l ")
        (file-write settingf "notation s "))
    (file-close settingf))))

(define fret? (lambda () (print "Guess the frets of each note, or a note from each fret? (f)ret/(n)ote")
  (let ((fret-choice (read) ))
    (define settingf (file-open "settings.txt" (+ open/append open/wronly open/creat)))
    (if (equal? fret-choice 'f)
        (file-write settingf "fret f")
        (file-write settingf "fret n"))
    (file-close settingf))))

(define get-fret (lambda ()
                   (if (letter-notation?)
                       (car (list-ref all-l
                                             (random (length all-l))))
                       (car (list-ref all-s
                                    (random (length all-s)))))))

(define get-note (lambda ()
                   (if (letter-notation?)
                    (cdr (list-ref all-l
                                  (random (length all-l))))
                    (cdr (list-ref all-s
                                          (random (length all-s)))))))

; Compart.?
;(define check-guess (lambda ()
;                        ; Currently invalidates get-note/get-fret, implement above
;                        (let (( note `(,(list-ref all-l (random (length all-l))),)' ))
;                          (print "Find " (cadar note) " on the " (car (string-chop (->string (caar note)) 1)) " string. \
;                          (e.g. 'G2'): ")
;                          (let ((guess (read)))
;                            (if (member guess (car note))
;                                (print "Correct!")
;                                (print "Wrong!"))))))

(define repl
  (lambda ()
    (let (( note `(,(list-ref all-l (random (length all-l))),)' ))
      (print "Find " (cadar note) " on the " (car (string-chop (->string (caar note)) 1)) " string. \
             (e.g. 'G2'): ")
      (let ((guess (read)))
        (if (eq? (car guess) 'quit)
            (exit)
        (if (member guess (car note))
            (print "Correct!")
            (print "Wrong!"))))
    (repl))))
