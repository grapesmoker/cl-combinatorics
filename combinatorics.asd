(defsystem "combinatorics"
  :name "combinatorics"
  :description "General pupose combinatoric algorithms."
  :version "0.1"
  :author "Jerry Vinokurov <jerryv@cmu.edu>"
  :license "GPL v3"
  :defsystem-depends-on (#:lisp-unit2)
  :depends-on (#:lisp-unit2)
  :components 
  ((:file "permutations")))

(defpackage :combinatorics
  (:nicknames :comb)
  (:use :cl :asdf :lisp-unit2)
  (:documentation "A general purpose library implementing various combinatoric routines and algorithms.")
  (:export #:permutations-with-repetition
	   #:rotate-list))
