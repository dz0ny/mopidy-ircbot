FROM google/python-runtime
RUN useradd willie
RUN apt-get install ca-certificates -qq -y
ADD ./config /.willie
RUN chown willie:willie /.willie -R
USER willie
ENTRYPOINT ["/env/bin/willie"]