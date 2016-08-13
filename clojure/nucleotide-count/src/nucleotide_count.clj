(ns nucleotide-count)

(defn- reduce-count [carry key]
  (assoc carry key (inc (carry key 0))))

(defn- frequencies [list default]
  (reduce reduce-count default list))

(defn nucleotide-counts [dna]
  (frequencies dna {\A 0, \T 0, \C 0, \G 0}))

(defn count [char dna]
  (when (nil? ({\A 0, \T 0, \C 0, \G 0} char))
    (throw (AssertionError.)))
  ((nucleotide-counts dna) char))
