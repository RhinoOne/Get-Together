#include <QGuiApplication>

#include "Managers/WindowsManager/WindowsManager.h"
#include <QDirIterator>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    WindowsManager windowsManager;

    return app.exec();
}
