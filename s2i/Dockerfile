FROM pythagoras-base

LABEL maintainer="Patrick Bucher <patrick.bucher@stud.hslu.ch>"

LABEL io.openshift.s2i.destination="/tmp" \
      io.openshift.s2i.scripts-url="image:///home/gopher/s2i"

USER 1001

ENV S2I_DIR=/home/gopher/s2i
RUN mkdir $S2I_DIR
COPY ./bin $S2I_DIR

CMD ["/home/gopher/s2i/usage"]
