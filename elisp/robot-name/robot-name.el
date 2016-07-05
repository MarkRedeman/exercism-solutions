;;; robot-name.el --- Robot Name (exercism)

;;; Commentary:
;;
;; Build a robot with a name like AA000, that can be reset
;; to a new name. Instructions are in README.md
;;

;;; Code:
;; We store all robots, their names and their identifiers in the robots global
(defvar robots nil)

(defun build-robot ()
  "Generates and stores a new ROBOT name and returns the robot's identifier"
  (let ((robot (cons
                (length robots)
                (generate-robot-name))))
    (add-to-list 'robots robot)
    (car robot)))

(defun robot-name (robot)
  "Gives the robot name associated to a ROBOT identifier"
  (cdr (assoc robot robots)))

(defun generate-robot-name ()
  "Generate a random ROBOT name with format AA000"
  (concat
   (random-char)
   (random-char)
   (random-number)
   (random-number)
   (random-number)))

(defun random-char ()
  "Returns a random uppercase alpha char."
  (char-to-string (+ ?A (random 26))))

(defun random-number ()
  "Returns a random number between 0 to 9 as a string"
  (int-to-string (random 10)))

(defun reset-robot (robot)
  "Generates and stores a new name for the given ROBOT"
  (setq robots (append
                (delete (assoc robot robots) robots)
                (list (cons robot (generate-robot-name))))))

(provide 'robot-name)
;;; robot-name.el ends here
