;;; difference-of-squares.el --- Difference of Squares (exercism)

;;; Commentary:

;;; Code:
(defun square-of-sums (until)
  "Computes the square of the sum of 0 ... until"
  (expt (reduce '+ (number-sequence 0 until)) 2)
  )

(defun sum-of-squares (until)
  "Computes the sum of the square of 0 ... until"
  (reduce '+ (square (number-sequence 0 until)))
  )

(defun square (numbers)
  (mapcar '(lambda (x) (* x x)) numbers)
  )

(defun difference (until)
  (- (square-of-sums until) (sum-of-squares until))
  )

(provide 'difference-of-squares)
;;; difference-of-squares.el ends here
