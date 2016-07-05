;;; raindrops.el --- Raindrops (exercism)

;;; Commentary:

;;; Code:

(require 'cl)

(defun convert (n)
  "Convert integer N to its raindrops string."
  (let ((factorizations (prime-factors-of n)))
    (if (or (member 3 factorizations)
            (member 5 factorizations)
            (member 7 factorizations))
        (concat
         (if (member 3 factorizations) "Pling")
         (if (member 5 factorizations) "Plang")
         (if (member 7 factorizations) "Plong"))
      (int-to-string n))))

;; I could refactor this so that it will also be able to find prime factors
;; in terms of 11 etc and higher primes, but as we do not need this in this
;; exercise I will skip that for now
(defun prime-factors-of (n)
  "Finds the prime factors of the integer N"
  (cond
   ((= n 1) nil)
   ((zerop (mod n 2)) (cons 2 (prime-factors-of (/ n 2))))
   ((zerop (mod n 3)) (cons 3 (prime-factors-of (/ n 3))))
   ((zerop (mod n 5)) (cons 5 (prime-factors-of (/ n 5))))
   ((zerop (mod n 7)) (cons 7 (prime-factors-of (/ n 7))))
   (t (cons n nil))))

(provide 'raindrops)
;;; raindrops.el ends here
