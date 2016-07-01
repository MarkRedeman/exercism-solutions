;;; bob.el --- Bob exercise (exercism)

;;; Commentary:

;;; Code:
(defun response-for (message)
  "Gives a very limited response from Bot, the lackadaisical teenager."
  (cond
   ((is-silent message)   "Fine. Be that way!")
   ((is-shouting message) "Whoa, chill out!")
   ((is-asking message)   "Sure.")
   (t                     "Whatever.")
   ))

(defun is-silent (message)
  "Checks whether the message is silent by checking if it
   is empty or consists of only spaces"
  (string-blank-p message))

(defun is-asking (message)
  "Checks whether the message is a question"
  (string-suffix-p "?" message))

(defun is-shouting (message)
  "Checks whether the person is shouting.
   We want to check that the message is capitalized
   and that at least one capital letter should be present"
  (and
   (string= (upcase message) message)
   (not (string= (downcase message) message))))

(provide 'bob)
;;; bob.el ends here
