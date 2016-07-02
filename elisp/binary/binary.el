;;; binary.el --- Binary exercise (exercism)

;;; Commentary:

;;; Code:
(defun to-decimal (binary)
  (cond
   ((= 0 (length binary)) 0)
   (t (+
       (to-decimal (substring binary 1))
       (*
        (expt 2 (- (length binary) 1))
        (string-to-int (substring binary 0 1)))))))


(provide 'binary)
;;; binary.el ends here
