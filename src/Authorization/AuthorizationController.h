#ifndef AUTHORIZATIONCONTROLLER_H
#define AUTHORIZATIONCONTROLLER_H

#include <QObject>

class SessionManager;

class AuthorizationController : public QObject
{
    Q_OBJECT

public:
    Q_INVOKABLE void signIn(QString login, QString pass);
    Q_PROPERTY(bool isAuthorized READ isAuthorized CONSTANT)

public:
    AuthorizationController(QObject *parent = nullptr);

    bool isAuthorized() const;

signals:
    void authorizationSuccessfully();
    void authorizationFailed();

private:
    SessionManager *_sessionManager;
    bool            _isAuthorized;
};

#endif // AUTHORIZATIONCONTROLLER_H
