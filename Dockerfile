FROM frekele/ant

# https://github.com/frekele/docker-ant

RUN mkdir /root/fleetcor

COPY ./util/ant-salesforce.jar /opt/ant/lib

COPY ./build.properties /root/fleetcor
COPY ./build.xml /root/fleetcor

# Copy current code based fetched using force-cli
# $ force fetch -t ApexClass
COPY ./src /root/fleetcor/src

WORKDIR /root

# Now run:
# $ cd /root/fleetcor
# $ time ant deployIgnoreTests
