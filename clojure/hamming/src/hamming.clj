(ns hamming)

(defn- chars-are-not-equal [char-1 char-2]
  (if (= char-1 char-2) 0 1))

(defn distance [strain-1 strain-2]
  (if (not (= (count strain-1) (count strain-2))) nil
      (reduce + (map chars-are-not-equal strain-1 strain-2))))
