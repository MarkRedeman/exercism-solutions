;;; rna-transcription.el -- RNA Transcription (exercism)

;;; Commentary:

;;; Code:
(defun to-rna (dna)
  "Given a string DNA returns the RNA representation

* `G` -> `C`
* `C` -> `G`
* `T` -> `A`
* `A` -> `U`
"
  (mapconcat
   (lambda (dna)
     (cond
      ((= ?G dna) "C")
      ((= ?C dna) "G")
      ((= ?T dna) "A")
      ((= ?A dna) "U")
      (t (error "Not a valid dna string"))))
   dna ""))


(provide 'rna-transcription)
;;; rna-transcription.el ends here
