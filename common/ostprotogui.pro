TEMPLATE = lib
CONFIG += qt staticlib
QT += network xml
LIBS += \
    -lprotobuf

FORMS = \
    pcapfileimport.ui \

FORMS += \
    mac.ui \
    payload.ui \
    vlan.ui \
    eth2.ui \
    dot3.ui \
    llc.ui \
    snap.ui \
    arp.ui \
    ip4.ui \
    ip6.ui \
    gmp.ui \
    icmp.ui \
    tcp.ui \
    udp.ui

FORMS1 += \
    textproto.ui \
    userscript.ui \
    hexdump.ui \
    sample.ui 

PROTOS = \
    fileformat.proto 

# TODO: Move fileformat related stuff into a different library
HEADERS = \
    ostprotolib.h \
    abstractfileformat.h \
    fileformat.h \
    ipv4addressdelegate.h \
    ipv6addressdelegate.h \
    pcapfileformat.h \
    pdmlfileformat.h \
    pdmlprotocol.h \
    pdmlprotocols.h \
    pdmlreader.h

HEADERS += \
    abstractprotocolconfig.h \
    comboprotocolconfig.h \
    protocolwidgetfactory.h \
    macconfig.h \ 
    payloadconfig.h \
    vlanconfig.h \
    svlanconfig.h \
    vlanstackconfig.h \
    eth2config.h \
    dot3config.h \
    llcconfig.h \
    dot2llcconfig.h \
    snapconfig.h \
    dot2snapconfig.h \
    arpconfig.h \
    ip4config.h \
    ip6config.h \
    ip4over4config.h \
    gmpconfig.h \
    icmpconfig.h \
    igmpconfig.h \
    mldconfig.h \
    tcpconfig.h \
    udpconfig.h

SOURCES += \
    ostprotolib.cpp \
    abstractfileformat.cpp \
    fileformat.cpp \
    pcapfileformat.cpp \
    pdmlfileformat.cpp \
    pdmlprotocol.cpp \
    pdmlprotocols.cpp \
    pdmlreader.cpp \

SOURCES += \
    protocolwidgetfactory.cpp \
    macconfig.cpp \
    payloadconfig.cpp \
    vlanconfig.cpp \
    eth2config.cpp \
    dot3config.cpp \
    llcconfig.cpp \
    snapconfig.cpp \
    arpconfig.cpp \
    ip4config.cpp \
    ip6config.cpp \
    gmpconfig.cpp \
    icmpconfig.cpp \
    igmpconfig.cpp \
    mldconfig.cpp \
    tcpconfig.cpp \
    udpconfig.cpp

QMAKE_DISTCLEAN += object_script.*

include(../protobuf.pri)