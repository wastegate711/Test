using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;

namespace Test.Models
{
    /// <summary>
    /// Рабочие подразделения
    /// </summary>
    public class Department
    {
        public int Id { get; set; }
        /// <summary>
        /// Название подразделения
        /// </summary>
        public string Name { get; set; }
        /// <summary>
        /// Ссылка на сотрудника
        /// </summary>
        public virtual ICollection<Employee>
            Employees
        { get; private set; } = new ObservableCollection<Employee>();

        public int? DirectorId { get; set; }
        public virtual Employee Director { get; set; }
    }
}
