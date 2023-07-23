# Aviasales
<img width="150" src="https://media2.giphy.com/media/v1.Y2lkPTc5MGI3NjExbnl0ZTNsMGtieWM2a3U2OXUxdWx6Zm5zcTB3eDc4ZHhkMHk0aHczaiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/54Y4gr8FntNzXGbWxT/giphy.gif"/>

## Описание

Минимальная версия: iOS 14

Архитектура: MVVM

Пользовательский интерфейс: SwiftUI

Поддержка тёмной темы

Unit и UI тесты

##

Приложение состоит из трёх экранов:

<b>1) Экран ошибки, если не удалость получить информацию о рейсах</b>

<b>2) Экран со списком доступных рейсов</b>

<b>3) Экран покупки билета на выбранный рейс</b>

Для контроля за состоянием приложения во view model имеется соотвествующая переменная, помеченная как @Published для того, чтобы следить за её изменениями. Приложение находится в одном из четырёх состояний, реализованных через enum: unset (только при запуске приложения), loading, error, loaded. При отправлении запроса устанавливается состояние loading, а на экране отображается ProgressView. Состояние loaded принимает информацию, полученную в результате успешного запроса.

В случае ошибки загрузки информации о рейстах устанавливается состояние error и появляется первый экрна, содержащий сообщение о том, что что-то пошло не так, а также кнопку, позволяющую пользователю повторить загрузку данных. Для выполнения запроса был создан сервис <b>APIService</b>, который передаётся во view model при её инициализации.

При успешном выполнении запроса устанавливается состояние loaded и отображается второй экрна. Рейсы сортируются по цене билетов и первый рейст помечается как самый дешёвый вариант, после чего информация передается через состояние. Для отображение информации на экране была создана ячейка, которая переиспользуется для всех рейсов. Для корректного отображения даты и времени был создан сервис <b>FormatterService</b>, который отвечает за преобразования даты, полученной изначально, в нужный вид. Сервис передаётся во view model при её инициализации. При отображении сообщения о количестве оставшихся билетов были учтены особенности русского языка: правильное окончание выбирается на основе конкретного числа. Нажав на определенный рейс, пользователь переходит на экран покупки.

На данном экране имеется информация о выбранно рейсе, а также кнопка для покупки билета. Если рейс является самым дешёвым, сообщение об этом также представлено. Для соответсвия дизайну было изменено свойство UINavigationBarAppearance у UINavigationBar.

В приложении имеются unit тесты, проверяющие корректность работы методов view model. Также были написаны UI тесты, проверяющие наличие определенных элементов интерфейса на экране со списком рейсов, а также на экране покупки билета.

<img src="https://github.com/KurbatovIOS/Aviasales/assets/105456398/7483bf8c-7b98-432b-9a38-b7e9b0d3557f" width="200" />
<img src="https://github.com/KurbatovIOS/Aviasales/assets/105456398/62e241d5-4ea9-44ba-8ab4-9ec5792c5f2c" width="200" />
<img src="https://github.com/KurbatovIOS/Aviasales/assets/105456398/a25a99b4-b65b-4693-a127-682cc8a9f0e3" width="200" />
<img src="https://github.com/KurbatovIOS/Aviasales/assets/105456398/3d8041a3-97c8-4aca-a69c-be0e5844a79e" width="200" />
<p>
<img src="https://github.com/KurbatovIOS/Aviasales/assets/105456398/a7b6a42e-bef0-40f6-b416-bfdcf96855b7" width="200" />
<img src="https://github.com/KurbatovIOS/Aviasales/assets/105456398/87ed8e90-8d47-4898-ae11-65106afd2df8" width="200" />
<img src="https://github.com/KurbatovIOS/Aviasales/assets/105456398/47265847-5462-4d77-a5b5-889212e22dfb" width="200" />
<img src="https://github.com/KurbatovIOS/Aviasales/assets/105456398/0610f76b-4c19-4c33-884d-1866c99940b0" width="200" />
</p>
<img src="https://github.com/KurbatovIOS/Aviasales/assets/105456398/a1fbd58c-f2bd-4bc5-8a9a-deb71bed0eec" width="200" />
</p>







