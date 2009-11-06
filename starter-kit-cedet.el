
(load-file "~/.emacs.d/vendor/cedet/common/cedet.el")

(global-ede-mode t)

(semantic-load-enable-excessive-code-helpers)

(require 'semantic-ia)

(require 'semantic-gcc)

(load-file "~/work/projects.el")

(defun my-cedet-hook ()
  (local-set-key [(control return)] 'semantic-ia-complete-symbol)
  (local-set-key [(control tab)] 'semantic-ia-complete-symbol-menu)
  (local-set-key "\C-c>" 'semantic-complete-analyze-inline)
  (local-set-key "\C-cp" 'semantic-analyze-proto-impl-toggle))
(add-hook 'c-mode-common-hook 'my-cedet-hook)


(provide 'starter-kit-cedet)
