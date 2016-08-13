(ns beer-song
  (:require [clojure.string :refer [join]]))

(defn verse [number]
  (cond
    (= number 0) (str "No more bottles of beer on the wall, no more bottles of beer.\n"
                      "Go to the store and buy some more, 99 bottles of beer on the wall.\n")
    (= number 1) (str "1 bottle of beer on the wall, 1 bottle of beer.\n"
                      "Take it down and pass it around, no more bottles of beer on the wall.\n")
    (= number 2) (str "2 bottles of beer on the wall, 2 bottles of beer.\n"
                      "Take one down and pass it around, 1 bottle of beer on the wall.\n")
    :else        (str number " bottles of beer on the wall, " number " bottles of beer.\n"
                      "Take one down and pass it around, " (dec number) " bottles of beer on the wall.\n")))

(defn sing
  ([from] (sing from 0))
  ([from to] (join "\n" (map verse (reverse (range to (inc from)))))))
