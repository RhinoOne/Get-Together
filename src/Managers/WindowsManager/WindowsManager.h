#ifndef WINDOWSMASNAGER_H
#define WINDOWSMASNAGER_H

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
    QQuickWindow *_window;
    QQmlApplicationEngine _engine;
};

#endif // WINDOWSMASNAGER_H
