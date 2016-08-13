(ns rna-transcription)

(defn dna-char-to-rna [dna]
  (cond (= \G dna) \C
        (= \C dna) \G
        (= \T dna) \A
        (= \A dna) \U
        :else (throw (AssertionError.))))

(defn to-rna [dna]
  (apply str (map dna-char-to-rna dna)))
