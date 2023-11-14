#include "windowsmanager.h"

WindowsManager::WindowsManager(QObject *parent) :
    QObject{parent},
    m_window(nullptr)
{
    InitWindowsManager();
}

void WindowsManager::InitWindowsManager()
{
    m_engine.addImportPath("qrc:/qml");
    const QUrl url(QStringLiteral("qrc:/qml/MainRootWindow.qml"));
    m_engine.load(url);
}
