(ns bob)

(defn- shouting? [message]
  "Checks whether the person is shouting.
   We want to check that the message is capitalized
   and that at least one capital letter should be present"
  (and (= (clojure.string/upper-case message) message)
       (not (= (clojure.string/lower-case message) message))))

(defn- asking? [message]
  "Checks whether the message is a question"
  (clojure.string/ends-with? message "?"))

(defn- silent? [message]
  "Checks whether the message is silent by checking if it
   is empty or consists of only spaces"
  (clojure.string/blank? message))

(defn response-for [message]
  (cond
    (silent? message)   "Fine. Be that way!"
    (shouting? message) "Whoa, chill out!"
    (asking? message)   "Sure."
    :else               "Whatever."))
