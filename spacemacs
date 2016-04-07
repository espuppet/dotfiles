(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place you code here."
   ;; soft tab
   (setq-default indent-tabs-mode nil)
   (setq-default tab-width 4)

   ;; enable line wrapper
   (global-visual-line-mode 1)

  (setq-default dotspacemacs-configuration-layers '((chinese :variables chinese-enable-fcitx t)))

  (setq default-buffer-file-coding-system 'utf-8-unix)
  (setq browse-url-browser-function 'eww-browse-url)
  (add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))
)
