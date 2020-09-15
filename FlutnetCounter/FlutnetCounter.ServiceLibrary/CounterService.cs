using Flutnet.ServiceModel;

namespace FlutnetCounter.ServiceLibrary
{
    [PlatformService]
    public class CounterService
    {
        // Current state
        private int _value = 0;

        [PlatformOperation]
        public int GetValue()
        {
            return _value;
        }

        [PlatformOperation]
        public int Increment()
        {
            _value++;
            return _value;
        }

        [PlatformOperation]
        public int Decrement()
        {
            _value--;
            return _value;
        }

    }
}