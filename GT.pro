QT += quick

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        src/Authorization/AuthorizationController.cpp \
        src/Managers/SessionManager/SessionManager.cpp \
        src/Managers/WindowsManager/WindowsManager.cpp \
    src/SignIn/SignInController.cpp \
        src/main.cpp \

HEADERS += \
        src/Authorization/AuthorizationController.h \
        src/Managers/SessionManager/SessionManager.h \
        src/Managers/WindowsManager/WindowsManager.h \
    src/SignIn/SignInController.h

RESOURCES += qgt.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH = $$PWD/src/ui

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target


DISTFILES += \
    src/UI/QGTControl/Controls/qmldir
