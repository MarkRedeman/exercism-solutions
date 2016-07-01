;;; difference-of-squares.el --- Difference of Squares (exercism)

;;; Commentary:

;;; Code:
(defun square-of-sums (until)
  "Computes the square of the sum of 0 ... until"
  (square-number (reduce '+ (number-sequence 0 until)))
  )

(defun sum-of-squares (until)
  "Computes the sum of the square of 0 ... until"
  (reduce '+ (square (number-sequence 0 until)))
  )

(defun square (numbers)
  (mapcar 'square-number numbers)
  )

(defun square-number (number)
  (* number number)
  )

(defun difference (until)
  (- (square-of-sums until) (sum-of-squares until))
  )

(provide 'difference-of-squares)
;;; difference-of-squares.el ends here
