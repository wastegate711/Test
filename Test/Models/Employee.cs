using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;

namespace Test.Models
{
    /// <summary>
    /// Сотрудники
    /// </summary>
    public class Employee
    {
        public int Id { get; set; }
        public enum Gender
        {
            Male = 0,
            Women = 1
        };
        /// <summary>
        /// имя сотрудника
        /// </summary>
        public string Name { get; set; }
        /// <summary>
        /// Фамилия сотрудника
        /// </summary>
        public string Surname { get; set; }
        /// <summary>
        /// Отчество сотрудника
        /// </summary>
        public string Patronymic { get; set; }
        /// <summary>
        /// День рождения сотрудника
        /// </summary>
        public string Byrthday { get; set; }
        /// <summary>
        /// Пол муж/жен
        /// </summary>
        public int GenderValue { get; set; }
        /// <summary>
        /// Подразделение в котором работает сотрудник
        /// </summary>
        public int DepartmentId { get; set; }
        public virtual Department Department { get; set; }
        public virtual ICollection<Order>
            Orders
        { get; private set; } =
            new ObservableCollection<Order>();
    }
}
