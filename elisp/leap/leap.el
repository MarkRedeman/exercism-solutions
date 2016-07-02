;;; leap.el --- Leap exercise (exercism)

;;; Commentary:

;;; Code:

(defun leap-year-p (year)
  (and (divisible-by year 4)
   (or
    (not (divisible-by year 100))
    (divisible-by year 400))))

(defun divisible-by (number divisor)
  (= 0 (mod number divisor)))

(provide 'leap)
;;; leap.el ends here
