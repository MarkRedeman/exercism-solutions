;;; raindrops.el --- Raindrops (exercism)

;;; Commentary:

;;; Code:

(require 'cl)

(defun convert (n)
  "Convert integer N to its raindrops string."
  (let ((raindrop (concat
              (if (zerop (mod n 3)) "Pling")
              (if (zerop (mod n 5)) "Plang")
              (if (zerop (mod n 7)) "Plong"))))
    (cond ; Return n as a string if it isn't dividable by 3, 5 or 7
     ((string-empty-p raindrop) (int-to-string n))
     (t raindrop))))

(provide 'raindrops)
;;; raindrops.el ends here
