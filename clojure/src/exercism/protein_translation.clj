(ns exercism.protein-translation
  (:require [clojure.string :as str]))

(defn translate-codon
  [codon]
  (cond
    (= "AUG" codon) "Methionine"
    (re-matches #"UUU|UUC" codon) "Phenylalanine"
    (re-matches #"UUA|UUG" codon) "Leucine"
    (re-matches #"UC[UACG]" codon) "Serine"
    (re-matches #"UAU|UAC" codon) "Tyrosine"
    (re-matches #"UGU|UGC" codon) "Cysteine"
    (= "UGG" codon) "Tryptophan"
    (re-matches #"UAA|UAG|UGA" codon) "STOP"
    :else ""))

(defn translate-rna
  [rna]
  (let [codons (str/split rna #"")]
    (->> codons
      (partition 3)
      (mapv #(apply str %))
      (mapv translate-codon)
      (take-while #(not= % "STOP")))))

