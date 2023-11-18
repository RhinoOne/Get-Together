#include "WindowsManager.h"
#include "../../Authorization/AuthorizationController.h"

WindowsManager::WindowsManager(QObject *parent) :
    QObject{parent},
    _window(nullptr)
{
    InitWindowsManager();
}

void WindowsManager::InitWindowsManager()
{
    const char* kGTControllers = "QGTControl.Controllers";

    _engine.addImportPath("qrc:/qml");
    qmlRegisterType<AuthorizationController>(kGTControllers, 1, 0, "AuthorizationController");

    const QUrl url(QStringLiteral("qrc:/qml/MainRootWindow.qml"));
    _engine.load(url);
}
