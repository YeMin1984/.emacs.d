;; init-custom.el --- Initialize custom configurations.
;;
;; Author: Vincent Zhang <seagle0128@gmail.com>
;; Version: 2.2.0
;; URL: https://github.com/seagle0128/.emacs.d
;; Keywords:
;; Compatibility:
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Commentary:
;;             Custom configurations.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 2, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Code:

(defgroup my nil
  "Personal Emacs configurations."
  :group 'extensions)

(defcustom my-full-name "Vincent Zhang"
  "Set user full name."
  :type 'string)

(defcustom my-mail-address "seagle0128@gmail.com"
  "Set user email address."
  :type 'string)

(defcustom my-ac-method 'company
  "Auto complete method: auto-complete' or `company'."
  :type '(choice
          (const :tag "Auto-Complete" auto-complete)
          (const :tag "Company" company)))

(defcustom my-completion-method 'ivy
  "Incremental complition method: `ido', `ivy' or `helm'."
  :type '(choice
          (const :tag "Ido" ido)
          (const :tag "Ivy" ivy)
          (const :tag "Helm" helm)))

(defcustom my-package-archives 'melpa
  "Set package archives from which to fetch."
  :type '(choice
          (const :tag "Melpa" melpa)
          (const :tag "Emacs-China" emacs-china)
          (const :tag "Tsinghua" tsinghua)))

(defcustom my-benchmark-enabled nil
  "Enable the init benchmark or not."
  :type 'boolean)

(defcustom my-profiler-enabled nil
  "Enable the init profiler or not."
  :type 'boolean)

(let ((file (expand-file-name "custom.el" user-emacs-directory)))
  (if (file-exists-p file)
      (load-file file)))

(provide 'init-custom)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-custom.el ends here
