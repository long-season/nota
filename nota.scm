; TODO:
; - some sort of repl for constant challenges
; - remove prints where possible
; - add range for frets >12
; - smarter way to populate notes to frets in *-string-{l,s} lists (macro)
; - make it possible to tweak preferences more intuitively
; - add the rest of the strings

(import srfi-216)
(load "strings.scm")

(define letter-notation? (lambda () (print "Use Letter (C, C#) or Solfege (Do, Do#) notation? (l)etter/(s)olfege")
  (let ((notation-choice (read) ))
    (if (equal? notation-choice 'l)
    #t
    #f))))

(define fret? (lambda () (print "Guess the frets of each note, or a note from each fret? (f)ret/(n)ote")
  (let ((notation-choice (read) ))
    (if (equal? notation-choice 'l)
    #t
    #f))))

(define get-fret (lambda ()
                   (if (letter-notation?)
                       (print (car (list-ref all-l
                                             (random (length all-l)))))
                       (print (car (list-ref e-string-s
                                    (random (length e-string-s))))))))
(define get-note (lambda ()
                   (if (letter-notation?)
                    (print (cdr (list-ref e-string-l
                                  (random (length e-string-l)))))
                    (print (cdr (list-ref e-string-s
                                          (random (length e-string-s))))
                     ))))
