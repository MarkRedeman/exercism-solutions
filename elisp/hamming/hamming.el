;;; hamming.el --- Hamming (exercism)

;;; Commentary:

;;; Code:

(require 'cl)

(defun hamming-distance (first second)
  "Computes the hamming distance between two dna sequences"
  (assert-equal-length first second)
  (if (= (length first) 0)
      0
    (+
     (hamming-distance-of-first-character first second)
     (hamming-distance (substring first 1) (substring second 1)))))

(defun hamming-distance-of-first-character (first second)
  "Checks if the first character of two strings are equal
Return 1 if they are equal and 0 otherwise"
  (if (= (elt first 0) (elt second 0)) 0 1))

(defun assert-equal-length (first second)
  "Throws an error if both given strings aren't of equal length"
  (if
      (not (= (length first) (length second)))
      (error "Both strings should be of equal length")))

(provide 'hamming)
;;; hamming.el ends here
