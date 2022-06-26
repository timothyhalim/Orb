QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    main.cpp \
    src\ui\player.cpp
    src\ffmpeg\videodecode.cpp

HEADERS += \
    src\ui\player.h
    src\ffmpeg\videodecode.h

FORMS += \
    src\ui\player.ui

INCLUDEPATH += \
    $$PWD/src \
    $$PWD/lib/ffmpeg/include

LIBS += \
    -L$$PWD/lib/ffmpeg/lib/ -lavcodec \
    -L$$PWD/lib/ffmpeg/lib/ -lavdevice \
    -L$$PWD/lib/ffmpeg/lib/ -lavfilter \
    -L$$PWD/lib/ffmpeg/lib/ -lavformat \
    -L$$PWD/lib/ffmpeg/lib/ -lavutil \
    -L$$PWD/lib/ffmpeg/lib/ -lswresample \
    -L$$PWD/lib/ffmpeg/lib/ -lswscale \

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
