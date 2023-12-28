#ifndef SIGNINCONTROLLER_H
#define SIGNINCONTROLLER_H

#include <QObject>

class SignInController : public QObject
{
    Q_OBJECT
public:
    explicit SignInController(QObject *parent = nullptr);

signals:

};

#endif // SIGNINCONTROLLER_H
