using FlutnetDialer.ServiceLibrary;
using Android.Content;
using Android.Net;

namespace FlutnetDialer.Services
{
    public class DialerServiceDroid : IDialerService
    {
        private readonly Context _appContext;

        public DialerServiceDroid(Context appContext)
        {
            this._appContext = appContext;
        }

        /// <summary>
        /// Open Android dialer using Intent
        /// </summary>
        /// <param name="phoneNumber"></param>
        public void OpenDialer(string phoneNumber)
        {

            // Use format with "tel:" and phoneNumber created is  
            // stored in u. 
            Uri uri = Uri.Parse("tel:" + phoneNumber);

            // Create the intent and set the data for the  
            // intent as the phone number. 
            Intent i = new Intent(Intent.ActionDial, uri);
            i.AddFlags(ActivityFlags.NewTask);

            _appContext.StartActivity(i);

        }
    }
}
