FROM docker.io/library/fedora:latest

LABEL org.opencontainers.image.licenses="GPL-2.0-or-later" \
  org.opencontainers.image.authors="Andy Choens <andy.choens@gmail.com>"

RUN sudo dnf upgrade -y
RUN sudo dnf install -y make texlive

CMD ["fish"]