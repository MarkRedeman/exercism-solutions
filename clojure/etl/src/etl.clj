(ns etl
  (:require [clojure.string :refer [lower-case]]))

(defn- transform-to-score-per-letter [score letters]
  "Creates a map { \"LETTER\" SCORE }
Example:
(transform-to-score-per-letter 3 [\"WORLD\" \"GSCHOOLERS\"])
=> { \"world\" 3, \"gschoolers\" 3 }
"
  (reduce (fn [carry letter] (assoc carry (lower-case letter ) score))
          {} letters))

(defn transform [legacy]
  "Transforms the LEGACY dataset into a shiny new format"
  (reduce-kv
   (fn
     [carry score letters]
     (merge carry (transform-to-score-per-letter score letters)))
   {} legacy))
