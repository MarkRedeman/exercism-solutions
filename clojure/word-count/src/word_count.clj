(ns word-count
  (:require [clojure.string :refer [lower-case split]]))

(defn- normalize [input] (lower-case input))

(defn- split-words [phrase]
  "Splits a phrase into a vector of strings with alpha numerical characters"
  (split phrase #"\W+"))

(defn word-count [input]
  (frequencies (split-words (normalize input))))
