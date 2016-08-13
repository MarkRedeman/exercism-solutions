(ns grade-school)

(defn grade [db grade]
  (db grade []))

(defn add [db student student-grade]
  (let [students (grade db student-grade)]
    (assoc db student-grade (conj students student))))

(defn- sort-map-values [db]
  (reduce-kv
   (fn [carry key value] (assoc carry key (sort value )))
   {} db))

(defn sorted [db]
  (into (sorted-map)
        (sort-map-values db)))
