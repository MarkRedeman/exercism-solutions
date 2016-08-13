(ns word-count
  (:require [clojure.string :refer [lower-case split]]))

(defn reduce-word-count [carry word]
  (assoc carry word (inc (carry word 0))))

(defn count-words [words-to-count]
  (reduce reduce-word-count {} words-to-count))

(defn- normalize [input] (lower-case input))

(defn- split-words [phrase]
  "Splits a phrase into a vector of strings with alpha numerical characters"
  (split phrase #"\W+"))

(defn word-count [input]
  (count-words (split-words (normalize input))))
