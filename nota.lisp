(defparameter *letter-notation* '(C 'C# D 'D# E F 'F# G 'G# A 'A# B))
(defparameter *solfege-notation* '('Do 'Do# Re 'Re# Mi Fa 'Fa# Sol 'Sol# La 'La# Si))
(defvar *fretboard* (make-hash-table :test equal))
(setf (
       (gethash 'E0 *fretboard*) 'E)
       (gethash 'E1 *fretboard*) 'F)
       (gethash 'E2 *fretboard*) 'F)
