   M S B A M L   `   `   `  ����U  QSystem.Runtime, Version=4.2.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a7,clr-namespace:System;assembly=System.RuntimeSystem  5   	   ? ;Test, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:TestTest 5   	   1clr-namespace:Test.ViewModelsTest.ViewModels 5   	   )clr-namespace:Test.ModelsTest.Models 5	   	   O,clr-namespace:Test.Infrastructure.ConvertersTest.Infrastructure.Converters 5
   	      Test.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ?system,clr-namespace:System;assembly=System.Runtime     5   	   $localclr-namespace:Test     5   	   ,vmclr-namespace:Test.ViewModels     5   	   ,modelsclr-namespace:Test.Models     5	   	   B	converter,clr-namespace:Test.Infrastructure.Converters     5
   	   $	��350��5   	   $	��500��6     � Title  5   	   ��  �� Path$ TitleNameWindow� � 	Resources 5      2  ,Test.Infrastructure.Converters.EnumConverter   EnumConverter2  ,Test.Infrastructure.Converters.DateConverter  DateConverter 
 Gender S� 
MethodName S� 
ObjectType   System.Enum S� MethodParameters M� TypeName��%�   &	        &	      &	 &       5   
   6"     5   
   6"   S� 5   
   $ 	GetValues��6,   "  6C    5      M� 5      $ models:Gender��6   5      5      .��5      �� .@�5   
   �� $��Сотрудники��6   .��5      ��  �� Orientation$ Vertical=�6   $	��Top=�5      .+�5       &   System.Windows.Controls.DataGrid     AutoGenerateColumns$ False��6   	   CanUserAddRows$
	 True��5"      
   AlternatingRowBackground

 �������5!      �� *	Employees+   Columns 5$      0  *System.Windows.Controls.DataGridTextColumn  5%      ,  &System.Windows.Controls.DataGridColumn   Header$ Фамилия��6-   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6>   �� $ Surname�  5&      $ Имя��6-    6:   �� $
 Name�  5'      $ Отчество��6-    6?   �� $ 
Patronymic�4  .System.Windows.Controls.DataGridTemplateColumn  5)      $ Пол��61      CellTemplate 5*      �� 5+   "    �� DataType$ models:Employee��6/   .R�5,   &   �� ��60   �� *GenderValue+ �� 	Converter# [   �� ConverterParameter	  Test.Models.Gender" 	 5-   #      CellEditingTemplate 50      �� 51   "   .R�52   &   �� ��53   )   ��  �� Source# [  �� SelectedItem 54   )   �� *GenderValue+# [  " 	 55   '   56   #   58        5;      $ 
Отдел��61    5<      �� 5=   "   $ models:Employee��6/   .R�5>   &   �� ��60   �� $ Department.Name�5?   #    5B      �� 5C   "   .R�5D   &   ��  �� DisplayMemberPath$
 Name��5F   )   ��5E   )   �� *DataContext.Departments+ �� RelativeSource ��  �� AncestorType" � �� SelectedValue 5G   )   �� *
Department+5H   '   5I   #   5K        5O      $ Дата рождения��61    5P      �� 5Q   "   $ models:Employee��6/   .R�5R   &   �� ��60   �� $ Birthday�# [ 5S   #    5V      �� 5W   "   $ models:Employee��6/   .R�5X   &   (
  "System.Windows.Controls.DatePicker
   
  SelectedDate 61   �� $ Birthday� �� StringFormat$ 
dd.MM.yyyy�� 5Z   *   :  4System.Windows.Controls.Primitives.DatePickerTextBox �� 
TargetType �� Property �� Value ��Name��%�   '        �� 5[   .   "  64   .�5\   2   ��  � �� 5]   6   �� 5^   :   .R�5_   >   �� $ PART_TextBox��6F   ��5`      �� $ SelectedDate�$ 
dd.MM.yyyy�� �� " 
 5b   ;   5d   3   5e   /   5f   +   5g   '   5h   #   5j      5m      �� 5n      $��Сохранить��6   $	��100��6-   ��5o      �� $ EmployeeUpdateCommand�5p      5q      �� 5s   
   $��Отделы��6   .��5t      �� .+�5u        $ False��6   $
	 True��5v      

 �������5x      �� $ Departments� 5y        5z      $# Название отдела��6-    6F   �� $
 Name�  5|      $+ %Руководитель отдела��61    5}      �� 5~   "   $ models:Department��6/   .R�5   &   �� ��60   �� $ Director.Surname�5�   #    5�      �� 5�   "   .R�5�   &   �� $ Surname��5�   )   ��5�   )   �� *DataContext.Employees+ �� " � 5�   )   �� *
Director+5�   '   5�   #   5�      5�      �� 5�      $��Сохранить��6   $	��100��6-   5�      5�      �� 5�   
   $��Заказы��6   .��5�      �� .+�5�        $ False��6   $
	 True��5�      

 �������5�      �� $ Orders� 5�        5�      $ Номер заказа��6-    6C   �� $ Number�  5�      $ Контрагент��6-    6A   �� $ Customer�  5�      $ Дата заказа��61    5�      �� 5�   "   $ models:Orders��6/   .R�5�   &   �� ��60   �� $ 	OrderDate�# [ 5�   #    5�      �� 5�   "   $ models:Employee��6/   .R�5�   &   
   61   �� $ 	OrderDate�$ 
dd.MM.yyyy�� 5�   *   ��%�   '        �� 5�   .   "  64   .�5�   2   ��  � �� 5�   6   �� 5�   :   .R�5�   >   �� $ PART_TextBox��6F   ��5�      �� $ SelectedDate�$ 
dd.MM.yyyy�� �� " 
 5�   ;   5�   3   5�   /   5�   +   5�   '   5�   #   5�        5�      $ Автор заказа��61    5�      �� 5�   "   $ models:Orders��6/   .R�5�   &   �� ��60   �� $ Employee.Surname�5�   #    5�      �� 5�   "   .R�5�   &   �� $ Surname��5�   )   ��5�   )   �� *DataContext.Employees+ �� " � 5�   )   �� *
Employee+5�   '   5�   #   5�      5�      �� 5�      $��Сохранить��6   $	��100��6-   ��69   �� $ EmployeeUpdateCommand�5�      5�      5�      5�      