;;; hamming.el --- Hamming (exercism)

;;; Commentary:

;;; Code:

(require 'cl)

(defun hamming-distance (first second)
  "Computes the hamming distance between two dna sequences"
  (let ((first-length (length first)))
    (if (not (= first-length (length second)))
        (error "Both strings should be of equal length")
      )
    (if (= first-length 0) 0
      (+
       (hamming-distance (substring first 1) (substring second 1))
       (if (= (elt first 0) (elt second 0)) 0 1)
       )
      )
    )
  )

(provide 'hamming)
;;; hamming.el ends here
