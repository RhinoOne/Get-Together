#include "windowsmanager.h"

WindowsManager::WindowsManager() :
    m_window(nullptr)
{
    InitWindowsManager();
}

QQuickWindow *WindowsManager::window() const
{
    if (m_window != nullptr)
        return m_window;
    return nullptr;
}

void WindowsManager::setWindow(QQuickWindow *window)
{
    if (window != nullptr) {
        m_window = window;
        emit windowChanged(window);
    }
}

void WindowsManager::InitWindowsManager()
{

    QQmlContext *context = m_engine.rootContext();

    qmlRegisterUncreatableType<WindowsManager>("WindowsManager", 1, 0, "WindowsManager", "Windows Manager must not be able to be created for the manager to work correctly");
    context->setContextProperty(QStringLiteral("windowsManager"), this);

    const QUrl url(QStringLiteral("qrc:/qml/ui/MainRootWindow.qml"));
    m_engine.load(url);
}
