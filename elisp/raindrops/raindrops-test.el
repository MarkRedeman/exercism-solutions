;;; raindrops-test.el --- Tests for Raindrops (exercism)

;;; Commentary:

;;; Code:

(load-file "raindrops.el")

(ert-deftest 2-is-a-prime ()
  (should (equal '(2)
                 (prime-factors-of 2))))

(ert-deftest 3-is-a-prime ()
  (should (equal '(3)
                 (prime-factors-of 3))))

(ert-deftest 4-is-2-times-2 ()
  (should (equal '(2 2)
                 (prime-factors-of 4))))

(ert-deftest 5-is-a-prime ()
  (should (equal '(5)
                 (prime-factors-of 5))))

(ert-deftest 6-is-2-times-3 ()
  (should (equal '(2 3)
                 (prime-factors-of 6))))

(ert-deftest 8-is-2-times-2-times-2 ()
  (should (equal '(2 2 2)
                 (prime-factors-of 8))))

(ert-deftest 9-is-3-times-3 ()
  (should (equal '(3 3)
                 (prime-factors-of 9))))

(ert-deftest 1755-is-3-times-3-times-3-times-3-times-5-times-13 ()
  (should (equal '(3 3 3 5 13)
                 (prime-factors-of 1755))))

(ert-deftest test-1 ()
  (should (equal "1"
                 (convert 1))))

(ert-deftest test-3 ()
  (should (equal "Pling"
                 (convert 3))))

(ert-deftest test-5 ()
  (should (equal "Plang"
                 (convert 5))))

(ert-deftest test-7 ()
  (should (equal "Plong"
                 (convert 7))))

(ert-deftest test-6 ()
  (should (equal "Pling"
                 (convert 6))))

(ert-deftest test-9 ()
  (should (equal "Pling"
                 (convert 9))))

(ert-deftest test-10 ()
  (should (equal "Plang"
                 (convert 10))))

(ert-deftest test-15 ()
  (should (equal "PlingPlang"
                 (convert 15))))

(ert-deftest test-21 ()
  (should (equal "PlingPlong"
                 (convert 21))))

(ert-deftest test-25 ()
  (should (equal "Plang"
                 (convert 25))))

(ert-deftest test-35 ()
  (should (equal "PlangPlong"
                 (convert 35))))

(ert-deftest test-49 ()
  (should (equal "Plong"
                 (convert 49))))

(ert-deftest test-52 ()
  (should (equal "52"
                 (convert 52))))

(ert-deftest test-105 ()
  (should (equal "PlingPlangPlong"
                 (convert 105))))

(ert-deftest test-12121 ()
  (should (equal "12121"
                 (convert 12121))))

(provide 'raindrops-test)
;;; raindrops-test.el ends here
