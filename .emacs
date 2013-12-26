(setq-default indent-tab-mode t)
(setq default-tab-width 4)
(add-hook 'c-mode-hook'
          (lambda ()
            (setq c-basic-offset 4)))

(defun my-cpp-highlight ()
  "highlight c/c++ #if 0 #endif macros"
  ;; (interactive)
  (setq cpp-known-face 'default)
  (setq cpp-unknown-face 'default)
  (setq cpp-known-writable 't)
  (setq cpp-unknown-writable 't)
  (setq cpp-edit-list '(("0" font-lock-comment-face default both)
                        ("1" default font-lock-comment-face both)))
  (cpp-highlight-buffer t))

(add-hook 'c-mode-common-hook 'my-cpp-highlight)

