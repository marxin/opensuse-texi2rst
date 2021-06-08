FROM opensuse/tumbleweed
# Remove
RUN zypper addrepo https://download.opensuse.org/repositories/devel:languages:python/openSUSE_Tumbleweed/devel:languages:python.repo
RUN zypper --gpg-auto-import-keys refresh

RUN zypper -n install git tar patch python3 makeinfo sphinx python3-Sphinx make groff-full python3-Sphinx-latex texlive-tex-gyre texlive-xetex-bin \
  python3-flake8 python3-flake8-builtins python3-flake8-bugbear python3-flake8-import-order python3-flake8-quotes python3-pytest python3-pytest-flake8 || true
