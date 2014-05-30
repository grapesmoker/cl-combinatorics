(in-package :comb)

(defun permutations-with-repetition (items size)
  (if (= size 1)
      (loop
	 for x in items
	 collect (list x))
      (mapcan #'(lambda (x)
		  (mapcar #'(lambda (y)
			      (cons x y))
			  (permutations-with-repetition items (- size 1))))
	      items)))

(defun rotate-list (target-list num-places)
  (cond ((> num-places 0)
         (loop
            for n from 1 upto num-places
            with rotated-list = target-list
            do
              (setf rotated-list (rest (append rotated-list (list (first rotated-list)))))
            finally (return rotated-list)))
        ((< num-places 0)
         (loop
            for n from (+ 1 num-places) upto 0
            with rotated-list = target-list
            do
              (setf rotated-list (append (last rotated-list) (butlast rotated-list)))
            finally (return rotated-list)))
        ((= num-places 0)
         target-list)))
