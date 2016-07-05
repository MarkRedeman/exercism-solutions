;;; atbash-cipher.el --- Atbash-Cipher (exercism)

;;; Commentary:
;; My solution is kind of trivial and not very extendable (or at least it
;; will be annoying to extend it) however I quite like its simplicity.
;; The hard part was writing the encoding in groups of fixed length (5 letters)

;;; Code:

(defun encode (plaintext)
  "Encode PLAINTEXT to atbash-cipher encoding."
  (reduce
   (lambda (text other) (concat text " " other))
   (group-in-lengths-of-5
    (mapconcat
     (lambda (plaintext)
       (cond
        ((= ?a plaintext) "z")
        ((= ?b plaintext) "y")
        ((= ?c plaintext) "x")
        ((= ?d plaintext) "w")
        ((= ?e plaintext) "v")
        ((= ?f plaintext) "u")
        ((= ?g plaintext) "t")
        ((= ?h plaintext) "s")
        ((= ?i plaintext) "r")
        ((= ?j plaintext) "q")
        ((= ?k plaintext) "p")
        ((= ?l plaintext) "o")
        ((= ?m plaintext) "n")
        ((= ?n plaintext) "m")
        ((= ?o plaintext) "l")
        ((= ?p plaintext) "k")
        ((= ?q plaintext) "j")
        ((= ?r plaintext) "i")
        ((= ?s plaintext) "h")
        ((= ?t plaintext) "g")
        ((= ?u plaintext) "f")
        ((= ?v plaintext) "e")
        ((= ?w plaintext) "d")
        ((= ?x plaintext) "c")
        ((= ?y plaintext) "b")
        ((= ?z plaintext) "a")
        ((= ?0 plaintext) "0")
        ((= ?1 plaintext) "1")
        ((= ?2 plaintext) "2")
        ((= ?3 plaintext) "3")
        ((= ?4 plaintext) "4")
        ((= ?5 plaintext) "5")
        ((= ?6 plaintext) "6")
        ((= ?7 plaintext) "7")
        ((= ?8 plaintext) "8")
        ((= ?9 plaintext) "9")
        (t "")))
     (downcase plaintext) ""))))

(defun group-in-lengths-of-5 (text)
  "Given a string TEXT returns a sequence of strings each of length 5 or less"
  (if (> (length text) 5)
      (cons
       (substring text 0 5)
       (group-in-lengths-of-5 (substring text 5)))
    (cons text nil)))


(provide 'atbash-cipher)
;;; atbash-cipher.el ends here
