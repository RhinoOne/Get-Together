#include "AuthorizationController.h"
#include "../Managers/SessionManager/SessionManager.h"

AuthorizationController::AuthorizationController(QObject *parent) :
    QObject         {parent},
    _sessionManager (nullptr),
    _isAuthorized   (false)
{

}

void AuthorizationController::signIn(QString login, QString pass)
{
    if (login == "admin" && pass == "admin") {
        _sessionManager = new SessionManager(this);
        _sessionManager->CreateSession();
        _isAuthorized = true;
        emit authorizationSuccessfully();
    } else {
        emit authorizationFailed();
    }
}


bool AuthorizationController::isAuthorized() const
{
    return _isAuthorized;
}
