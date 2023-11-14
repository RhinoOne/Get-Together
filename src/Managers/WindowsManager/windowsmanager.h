#ifndef WINDOWSMANAGER_H
#define WINDOWSMANAGER_H

#include <QObject>
#include <QQuickWindow>
#include <QQmlApplicationEngine>
#include <QQmlContext>

class WindowsManager : public QObject
{
    Q_OBJECT

public:
    explicit WindowsManager(QObject *parent = nullptr);
    ~WindowsManager() = default;

private:
    void InitWindowsManager();

private:
    QQuickWindow *m_window;
    QQmlApplicationEngine m_engine;
};

#endif // WINDOWSMANAGER_H
