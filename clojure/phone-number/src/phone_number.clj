(ns phone-number)


(defn- sanitize-number [number]
  "Returns a default number if NUMBER is invalid
   NUMBER is valid if it has 10 digits or 11 digits and first digit is 1
   if it is valid and has 11 digits it returns the last 10 digits"
  (cond
    (= (count number) 10) number
    (and (= (count number) 11) (= (get number 0) \1)) (.substring number 1 11)
    :else "0000000000"))

(defn- numbers-from-string [s]
  (clojure.string/replace s #"\D" ""))

(defn number [number]
 (sanitize-number (numbers-from-string number)))

(defn pretty-print [phone-number]
  (let [number (number phone-number)]
    ;; Extract the area-code exchange and subscriber from the phone number
    ;; (xxx) yyy-zzzz
    (let [[area-code exchange subscriber ]
          [(.substring number 0 3)
           (.substring number 3 6)
           (.substring number 6 10)]]
      (str "(" area-code ") " exchange "-" subscriber))))

(defn area-code [phone-number]
  (.substring (number phone-number) 0 3))
