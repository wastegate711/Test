using Castle.Core.Resource;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
using System.Windows.Data;
using Test.Services;
using Microsoft.EntityFrameworkCore;
using System.ComponentModel;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using Test.Models;

namespace Test.ViewModels
{
    internal class MainWindowViewModel : Base.ViewModel
    {
        private readonly DataService _DataService = new DataService();
        //private CollectionViewSource EmployeesViewSource;
        public MainWindowViewModel()
        {
            #region Команды



            #endregion

            // EmployeesViewSource = (CollectionViewSource)Application.Current.FindResource(nameof(EmployeesViewSource));
            //EmployeesViewSource = (CollectionViewSource)FindResource(nameof(EmployeesViewSource));
            // _DataService.Database.EnsureCreated();
            _DataService.Employees.Load();
            Employees = _DataService.Employees.Local.ToBindingList();
            //EmployeesViewSource.Source = _DataService.Employees.Local.ToObservableCollection();
            FillDepartament();
            FillOrders();
        }

        #region Команды



        #endregion
        #region Заголовок окна
        private string _TitleNameWindow = "Тестовое задание";

        public string TitleNameWindow
        {
            get => _TitleNameWindow;
            set => Set(ref _TitleNameWindow, value);
        }
        #endregion
        #region Employee
        private IEnumerable<Employee> _Employees;
        public IEnumerable<Employee> Employees
        {
            get => _Employees;
            set => Set(ref _Employees, value);
        }
        #endregion
        #region Department
        void FillDepartament()
        {
            var d = (from a in _DataService.Departments
                     select a).ToList();
            Departments = d;
        }

        private List<Department> _Departments;
        public List<Department> Departments
        {
            get => _Departments;
            set => Set(ref _Departments, value);
        }
        #endregion

        #region Orders

        void FillOrders()
        {
            var o = (from a in _DataService.Orders
                     select a).ToList();
            Orders = o;
        }
        List<Order> _Orders;

        public List<Order> Orders
        {
            get => _Orders;
            set => Set(ref _Orders, value);
        }

        #endregion
    }
}
