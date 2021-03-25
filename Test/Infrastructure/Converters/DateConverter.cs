using System;
using System.Collections.Generic;
using System.Text;
using System.Windows.Data;

namespace Test.Infrastructure.Converters
{
    public class DateConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {if (value!=null)
            {
                string[] formats = {"M/d/yyyy h:mm:ss tt", "M/d/yyyy h:mm tt",
                         "MM/dd/yyyy hh:mm:ss", "M/d/yyyy h:mm:ss",
                         "M/d/yyyy hh:mm tt", "M/d/yyyy hh tt",
                         "M/d/yyyy h:mm", "M/d/yyyy h:mm",
                         "MM/dd/yyyy hh:mm", "M/dd/yyyy hh:mm",
                         "MM/d/yyyy HH:mm:ss.ffffff","dd/MM/yyyy","dd.MM.yyyy" };
                DateTime date = DateTime.ParseExact((string)value, formats, System.Globalization.CultureInfo.InvariantCulture);
                return date.ToString("dd.MM.yyyy");
            }
            else return "";
        }

        public object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
