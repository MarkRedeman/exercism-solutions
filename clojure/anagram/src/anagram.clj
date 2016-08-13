(ns anagram
  (:require [clojure.string :refer [lower-case]]))

(defn- is-anagram? [word potential]
  (and
   (not (= word potential))
   (= (frequencies word)
      (frequencies potential))))

(defn anagrams-for [word potentials]
  (filter
   (fn [potential] (is-anagram?
                    (lower-case word)
                    (lower-case potential)))
   potentials))
