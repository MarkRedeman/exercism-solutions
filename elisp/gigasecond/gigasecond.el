;;; gigasecond.el --- Gigasecond exercise (exercism)

;;; Commentary:
;; Calculate the date one gigasecond (10^9 seconds) from the
;; given date.
;;
;; NB: Pay attention to  Emacs' handling of time zones and dst
;; in the encode-time and decode-time functions.

;;; Code:

(defun from (second minute hour day month year)
  "Calculate the date one gigasecond from the given date"
  ;; So at first I thought I could just calculate the date, but
  ;; then I would have to take into account leap years and all
  ;; other complex stuff. So I will start looking for some
  ;; build in functions that I can use
  (let ((start-date (encode-time second minute hour day month year))
        (gigasecond (seconds-to-time (expt 10 9))))
    ;; Compute the new time and decode it
    (let ((end-date (decode-time (time-add start-date gigasecond))))
      ;; Note that decode-time returns (SEC MINUTE HOUR DAY MONTH YEAR DOW DST ZONE).
      ;; so we will need to only grab the first 6 elements of that list
      (butlast
       end-date (-
                (length end-date)
                (length '(second minute hour day month year))))))
  )


(provide 'gigasecond)
;;; gigasecond.el ends here
