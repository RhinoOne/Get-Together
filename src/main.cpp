#include <QGuiApplication>

#include "Managers/WindowsManager/windowsmanager.h"
#include <QDirIterator>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    WindowsManager windowsManager;

    return app.exec();
}
