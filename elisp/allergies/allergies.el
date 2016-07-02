;;; allergies.el --- Allergies Exercise (exercism)

;;; Commentary:

;;; Code:
(defun allergen-list (value)
  (allergen-list-internal value 1))

(defun allergic-to-p (value allergy)
  (member allergy (allergen-list value)))

;; I don't quite like it that I'm using an "internal" function
(defun allergen-list-internal (value power)
  "Creates a list of allergies for the given value"
  (if (not (> power 128))
      (let ((list (allergen-list-internal value (* power 2))))
         (if (is-allergy-of value power)
             (cons (allergen-for-value power) list) list))))

(defun is-allergy-of (value allergy-value)
  (= (logand value allergy-value) allergy-value))

;; The list of items (and their value) that were tested are:
(defun allergen-for-value (value)
  (let ((allergies
         '((1 . "eggs")
           (2 . "peanuts")
           (4 . "shellfish")
           (8 . "strawberries")
           (16 . "tomatoes")
           (32 . "chocolate")
           (64 . "pollen")
           (128 . "cats"))))
    (cdr (assoc value allergies))))

(provide 'allergies)

;;; allergies.el ends here
