;;; hello-world.el --- Hello World Exercise (exercism)
(defun hello (&optional name)
  "Says hello to someone"
  (concat "Hello, " (or name "World") "!")
  )

(provide 'hello-world)
