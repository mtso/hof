(ns hof)

(defn add [x]
  #(+ % x))

(defn each [seq f]
  (doseq [x seq] (f x)))

;; Usage.
((add 1) 2)
(each [1 2 3] println)
