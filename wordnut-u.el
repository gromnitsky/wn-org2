;; -*- lexical-binding: t -*-

;; s.el
(defun wordnut-u-word-wrap (len s)
  "If S is longer than LEN, wrap the words with newlines."
  (with-temp-buffer
    (insert s)
    (let ((fill-column len))
      (fill-region (point-min) (point-max)))
    (buffer-substring-no-properties (point-min) (point-max))))

(defun wordnut-u-switch-to-buffer (buf)
  (unless (eq (current-buffer) buf)
    (unless (cdr (window-list))
      (split-window-vertically))
    (other-window 1)
    (switch-to-buffer buf)))

(defun wordnut-u-fix-name (str)
  (let ((max 10))
    (if (> (length str) max)
	(concat (substring str 0 max) "...")
      str)
    ))



(provide 'wordnut-u)