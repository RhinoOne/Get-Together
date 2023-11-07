#include "windowsmanager.h"

WindowsManager::WindowsManager() :
    m_window(nullptr)
{
    InitWindowsManager();
}

void WindowsManager::InitWindowsManager()
{
    const QUrl url(QStringLiteral("qrc:/qml/ui/MainRootWindow.qml"));
    m_engine.load(url);
}
