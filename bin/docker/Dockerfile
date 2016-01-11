FROM openshift/ruby-22-centos7

USER root
# Install imagemagick
RUN yum -y install ImageMagick-c++ ImageMagick-c++-devel sqlite3

USER 1001
# probably better to check out the given Version
ADD build/hitobito /tmp/hitobito
ADD build/hitobito_generic /tmp/hitobito_generic
ADD bin/runhitobito $STI_SCRIPTS_PATH/

ENV RACK_ENV production
ENV RAILS_ENV production

ENV RAILS_DB_ADAPTER sqlite3

# comment the following line when building from master branch
#RAILS_TRANSIFEX_DISABLED=true

RUN git config --global user.email "philipona@puzzle.ch" && git config --global user.name "Thomas Philipona" &&  cd /tmp/ && ./hitobito/bin/package.sh
RUN cp -ar /tmp/sources/. /opt/app-root/src/

EXPOSE 8080

CMD $STI_SCRIPTS_PATH/runhitobito
