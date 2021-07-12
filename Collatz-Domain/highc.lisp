#!/usr/bin/sbcl --script

(defvar maxNumRec)
(setf maxNumRec 0)
(defun recursiveCollatz(collatzNum)
	(if (< maxNumRec collatzNum)
		(setf maxNumRec collatzNum))
	(let ((recSteps 0))
	  (cond ((eq collatzNum 1) (return-from recursiveCollatz 0))
	  ((eq (mod collatzNum 2) 1) (setf recSteps (recursiveCollatz(+ (* collatzNum 3) 1))))
	  (t (setf recSteps (recursiveCollatz(/ collatzNum 2)))))
	(setf recSteps (+ 1 recSteps))
	(return-from recursiveCollatz maxNumRec))
	)




(defvar num)
(defvar collatzNum)
(defvar steps)
(defvar maxNum)
(defvar domEnd)

(setf num 19970912)
(setf domEnd 20201203)

(setf maxNum 0)
(loop while(<= num domEnd) do 

	(setf collatzNum num)
	(setf steps (recursiveCollatz collatzNum))

		(if (< maxNum steps)
			(setf maxNum steps))
	(format t "~d" num)
	(format t "=")
	(format t "~d" steps)
	(terpri)			
	(setf num (+ num 1)))
	
(format t "Max Num = ")
(format t "~d" maxNum)
(terpri)
