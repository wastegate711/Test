using System;
using System.Collections.Generic;
using System.Text;

namespace Test.Models
{
    public class Order
    {
        public int Id { get; set; }
        /// <summary>
        /// Номер заказа
        /// </summary>
        public int Number { get; set; }
        /// <summary>
        /// Имя контрагента
        /// </summary>
        public string Customer { get; set; }
        /// <summary>
        /// Дата заказа
        /// </summary>
        public string OrderDate { get; set; }
        /// <summary>
        /// Автор заказа
        /// </summary>
        public int EmployeeId { get; set; }
        public virtual Employee Employee { get; set; }
    }
}
