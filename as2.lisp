

(defun sum(l)
  (if (= (LENGTH l) 0)
    0
    (+ (car l) (sum(cdr l)))
  )
)

(defun sum2 (l)
  (cond ((null l)
	 (return-from sum2 max)))
  (setq ld (length l))
  (setq lchange (- ld 2))
  (setq tm (first l))
  (setq i (first l))
  (loop for x from 0 to lchange
	do
	(setq i (+ i (nth (+ x 1) l)))
	(cond ((> i tM) (setq tM i))))
  (cond ((< max tM) (setq max tM)))
  (sum2(rest l)))
   
  
(setq max 0)  
(setq li '(-2 4 -3 5 -3 1 -2 3))
(defvar ti)
(setq tl (sum li))
(setq ti (sum2 li))
(write tl)
(terpri)
(write ti)
(terpri)


