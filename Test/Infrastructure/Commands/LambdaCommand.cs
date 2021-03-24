using System;
using System.Collections.Generic;
using System.Text;

namespace Test.Infrastructure.Commands
{
    internal class LambdaCommand : Base.Command
    {
        readonly Action<object> _Execute;
        readonly Func<object, bool> _CanExecute;

        public LambdaCommand(Action<object> excute, Func<object, bool> canexecute)
        {
            _Execute = excute ?? throw new ArgumentNullException(nameof(excute));
            _CanExecute = canexecute;
        }
        public override bool CanExecute(object parameter)
        {
            _CanExecute?.Invoke(parameter);
            return true;
        }

        public override void Execute(object parameter)
        {
            _Execute(parameter);
        }
    }
}
