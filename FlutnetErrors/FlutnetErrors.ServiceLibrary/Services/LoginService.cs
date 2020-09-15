using System;
using Flutnet.ServiceModel;
using FlutnetErrors.ServiceLibrary.Data;
using FlutnetErrors.ServiceLibrary.Errors;

namespace FlutnetErrors.ServiceLibrary.Services
{
    [PlatformService]
    public class LoginService
    {
        /// <summary>
        /// Perform a fake login, returning the session information
        /// to flutter.
        /// </summary>
        /// <param name="username"></param>
        /// <param name="password"></param>
        /// <param name="forceHandleError"></param>
        /// <returns></returns>
        [PlatformOperation]
        public SessionInfo Login(string username, string password, bool forceHandleError)
        {

            // This emulate a not handled exception.
            if (forceHandleError)
            {
                throw new InvalidOperationException("Login method ended bad!");
            }

            // Here you can call your web API to check the credentials
            bool userOk = username == "pippo";
            bool passwordOk = password == "password";

            //
            // The LoginException extend FlutterException, so will be handled and passed directly to flutter UI module,
            // so you can manage directly from Flutter. This is provided by the flutnet.sdk framework
            //
            if (!userOk && !passwordOk)
                throw new LoginException()
                {
                    Error = LoginErrors.InvalidUsernameAndPassword
                };

            if (!userOk)
                throw new LoginException()
                {
                    Error = LoginErrors.InvalidUsername
                };

            if (!passwordOk)
                throw new LoginException()
                {
                    Error = LoginErrors.InvalidPassword
                };

            // Login OK

            DateTime now = DateTime.Now;

            SessionInfo info = new SessionInfo()
            {
                LastLogin = now,
                Token = $"#{now.Ticks}",
            };

            return info;
        }

    }
}
