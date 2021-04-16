FROM opensuse/tumbleweed
RUN zypper -n install git python3 makeinfo sphinx python3-Sphinx make groff-full python3-Sphinx-latex || true
