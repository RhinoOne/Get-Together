#ifndef WINDOWSMANAGER_H
#define WINDOWSMANAGER_H

#include <QObject>
#include <QQuickWindow>
#include <QQmlApplicationEngine>
#include <QQmlContext>

class WindowsManager : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QQuickWindow * window READ window WRITE setWindow NOTIFY windowChanged)

public:
    explicit WindowsManager();
    ~WindowsManager() = default;

public:
    //Q_PROPERTY methods
    QQuickWindow *window() const;
    void setWindow(QQuickWindow *window);

signals:
    void windowChanged(QQuickWindow *window);

private:
    void InitWindowsManager();

private:
    QQuickWindow *m_window;
    QQmlApplicationEngine m_engine;
};

#endif // WINDOWSMANAGER_H
