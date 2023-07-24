(TeX-add-style-hook
 "resume"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("res" "line" "mm" "10pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("xcolor" "dvipsnames") ("babel" "english") ("geometry" "margin=1.0in")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "res"
    "res10"
    "xcolor"
    "babel"
    "hyperref"
    "geometry"))
 :latex)

