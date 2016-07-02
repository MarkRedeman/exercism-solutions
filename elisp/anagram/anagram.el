;;; anagram.el --- Anagram (exercism)

;;; Commentary:

;;; Code:

(require 'cl)

(defun anagrams-for (word possible-anagrams)
  "Filters all words that aren't anagrams of WORD"
  (remove-if-not
   (lambda (anagram) (is-anagram-of word anagram))
   possible-anagrams))

(defun is-anagram-of (word possible-anagram)
  "Checks if two words are anagrams of each other"
  (and
   (not (equal word possible-anagram))
   (equal
    (sort (string-to-list (downcase word)) '<)
    (sort (string-to-list (downcase possible-anagram)) '<)))
   )

(provide 'anagram)
;;; anagram.el ends here
