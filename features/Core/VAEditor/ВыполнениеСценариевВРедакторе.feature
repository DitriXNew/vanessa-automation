﻿# language: ru


@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnUFSovm82Builds
@IgnoreOnWeb

@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
@IgnoreOn8310
@IgnoreOn8311
@IgnoreOn8312
@IgnoreOn8313
@IgnoreOn8314
@IgnoreOn8315
@IgnoreOn8316

@ServerCodeCoverage


Функциональность: Выполнение сценариев в редакторе

    Как разработчик
    Я хочу чтобы в редакторе можно было выполнять сценарии
    Чтобы я мог быстро создавать и выполнять сценарии

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой 'VAEditor'


Сценарий: Закрытие клиента тестирования
	* Закрытие клиента тестирования
		И я закрыл все окна клиентского приложения
		И я закрываю сеанс TESTCLIENT

Сценарий: Выполнить с текущего шага, когда происходит выполнение со строки подсценария

	* Загрузка служебной фичи	
		И я нажимаю на кнопку с именем 'ФормаПерейтиВVanessaEditor'

		И я перехожу к закладке с именем "ГруппаСлужебная"
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAEditor/VanessaEditor20"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient

	* Установка нужной строки текущей. Перед последней строкой сценария.
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'VanessaEditor.setPosition(20, 1, \"\");'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И я перехожу к закладке с именем "ГруппаЗапускТестов"

	* Выполнение сценарий с текущей позиции
		И я нажимаю на кнопку с именем 'VanessaEditorКонтекстноеМенюВыполнитьДанныйСценарийСТекущегоШага'
		И у элемента с именем "ФлагСценарииВыполнены" я жду значения "Да" в течение 30 секунд

	* Проверка результата
		И я нажимаю на кнопку с именем 'ФормаПерейтиВДеревоШагов'
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "СтраницаСлужебноеОсновное"
		И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
		И я перехожу к закладке с именем "ГруппаЗапускТестов"
		Тогда таблица "ДеревоТестов" стала равной:
			| 'Наименование'                                                                | 'Статус'  |
			| 'VanessaEditor20.feature'                                                     | ''        |
			| 'VAEditor20'                                                                  | ''        |
			| 'VAEditor20'                                                                  | 'Success' |
			| 'И Я запоминаю значение выражения \'1+1\' в переменную "ИмяПеременной1"'      | ''        |
			| 'И Я запоминаю значение выражения \'2+2\' в переменную "ИмяПеременной2"'      | ''        |
			| 'И Я вызываю экспортный сценарий для проверки вставок подсценариев'           | ''        |
			| 'И Я запоминаю значение выражения \'1+1\' в переменную "ИмяПеременной1"'      | 'Success' |
			| 'И Я вызываю экспортный сценарий для проверки вставок подсценариев вложенный' | ''        |
			| 'И Я запоминаю значение выражения \'2+2\' в переменную "ИмяПеременной2"'      | 'Success' |
			| 'И Я запоминаю значение выражения \'3+3\' в переменную "ИмяПеременной3"'      | 'Success' |






Сценарий: Выполнить один шаг

	* Загрузка служебной фичи	
		И я нажимаю на кнопку с именем 'ФормаПерейтиВVanessaEditor'

		И я перехожу к закладке с именем "ГруппаСлужебная"
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAEditor/VanessaEditor11"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient

	* Переход к нужной строке сценария
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'VanessaEditor.setPosition(27, 1, \"\");'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И я перехожу к закладке с именем "ГруппаЗапускТестов"

	* Выполнение сценарий с текущей позиции

		И я нажимаю на кнопку с именем 'VanessaEditorКонтекстноеМенюВыполнитьОдинШаг'
		И у элемента с именем "ФлагСценарииВыполнены" я жду значения "Да" в течение 30 секунд

	* Проверка результата
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "СтраницаСлужебноеОсновное"
		И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
		И я перехожу к закладке с именем "ГруппаЗапускТестов"
		И я нажимаю на кнопку с именем 'ФормаПерейтиВДеревоШагов'

		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
		И я перехожу к закладке с именем "ГруппаЗапускТестов"

		Тогда таблица "ДеревоТестов" стала равной:
			| 'Наименование'                                                           | 'Статус'  |
			| 'VanessaEditor11.feature'                                                | ''        |
			| 'VAEditor11'                                                             | ''        |
			| 'VAEditor11_1'                                                           | ''        |
			| 'И Я запоминаю значение выражения \'1+1\' в переменную "ИмяПеременной1"' | ''        |
			| 'И Я запоминаю значение выражения \'2+2\' в переменную "ИмяПеременной2"' | ''        |
			| 'И Я запоминаю значение выражения \'3+3\' в переменную "ИмяПеременной3"' | ''        |
			| 'VAEditor11_2'                                                           | ''        |
			| 'И Я запоминаю значение выражения \'2+2\' в переменную "ИмяПеременной2"' | ''        |
			| 'И Я запоминаю значение выражения \'3+3\' в переменную "ИмяПеременной3"' | 'Success' |
			| 'И Я вызваю шаг и исключение в подсценарии "ТекстИсключения111"'         | ''        |
			| '\| \'Сообщить("Hellow world 2.")\' \|'                                  | ''        |
			| 'И я выполняю код встроенного языка'                                     | ''        |
			| '\| \'Сообщить("Hellow world 2.")\' \|'                                  | ''        |
			| 'И я удаляю переменную \'ИмяПеременной1\''                               | ''        |
			| 'И Я запоминаю значение выражения \'1+1\' в переменную "ИмяПеременной1"' | ''        |
			| 'И я вызываю исключение \'ТекстИсключения111\' уровень два'              | ''        |
			| 'И я вызываю исключение \'ТекстИсключения111\''                          | ''        |
			| 'И Я запоминаю значение выражения \'4+4\' в переменную "ИмяПеременной3"' | ''        |





	* Выполнение шага подсценария

		И я нажимаю на кнопку с именем 'ФормаПерейтиВVanessaEditor'
		И Пауза 2
		
	* Переход к нужной строке сценария
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'VanessaEditor.setPosition(30, 1, \"\");'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И я перехожу к закладке с именем "ГруппаЗапускТестов"

	* Выполнение сценарий с текущей позиции

		И я снимаю флаг с именем 'ФлагСценарииЗагружены'
		И я снимаю флаг с именем 'ФлагСценарииВыполнены'

		И я нажимаю на кнопку с именем 'VanessaEditorКонтекстноеМенюВыполнитьОдинШаг'
		И у элемента с именем "ФлагСценарииВыполнены" я жду значения "Да" в течение 30 секунд

		Тогда в логе сообщений TestClient есть строки:
			|'Hellow world 2.'|
			|'ТекстИсключения111'|
			|'БЫЛИ ОШИБКИ.'|
		
		И я нажимаю на кнопку с именем 'ПоказатьСкрытьТаблоПеременных'
		И в таблице "ТаблоПеременных" я разворачиваю строку:
			| 'Имя'      |
			| 'Контекст' |
		И в таблице "ТаблоПеременных" я перехожу к строке:
			| 'Значение' | 'Имя'            |
			| '2'        | 'ИмяПеременной1' |
	



Сценарий: Выполнить сценарий с начала

	* Загрузка служебной фичи	
		И я нажимаю на кнопку с именем 'ФормаПерейтиВVanessaEditor'

		И я перехожу к закладке с именем "ГруппаСлужебная"
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAEditor/VanessaEditor10"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient

	* Переход к нужной строке сценария
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'VanessaEditor.setPosition(28, 1, \"\");'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И я перехожу к закладке с именем "ГруппаЗапускТестов"

	* Выполнение сценарий с текущей позиции

		И я нажимаю на кнопку с именем 'VanessaEditorКонтекстноеМенюПунктВыполнитьСценарий'
		И у элемента с именем "ФлагСценарииВыполнены" я жду значения "Да" в течение 30 секунд

	* Проверка результата
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "СтраницаСлужебноеОсновное"
		И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
		И я перехожу к закладке с именем "ГруппаЗапускТестов"
		И я нажимаю на кнопку с именем 'ФормаПерейтиВДеревоШагов'
		Тогда таблица "ДеревоТестов" стала равной:
			| 'Наименование'                                                           | 'Статус'  |
			| 'VanessaEditor10.feature'                                                | ''        |
			| 'VAEditor10'                                                             | ''        |
			| 'VAEditor10_1'                                                           | ''        |
			| 'И Я запоминаю значение выражения \'1+1\' в переменную "ИмяПеременной1"' | ''        |
			| 'И Я запоминаю значение выражения \'2+2\' в переменную "ИмяПеременной2"' | ''        |
			| 'И Я запоминаю значение выражения \'3+3\' в переменную "ИмяПеременной3"' | ''        |
			| 'VAEditor10_2'                                                           | 'Success' |
			| 'И Я запоминаю значение выражения \'1+1\' в переменную "ИмяПеременной1"' | 'Success' |
			| 'И Я запоминаю значение выражения \'2+2\' в переменную "ИмяПеременной2"' | 'Success' |
			| 'И Я запоминаю значение выражения \'3+3\' в переменную "ИмяПеременной3"' | 'Success' |






Сценарий: Выполнить выделенные строки

	* Загрузка служебной фичи	
		И я нажимаю на кнопку с именем 'ФормаПерейтиВVanessaEditor'

		И я перехожу к закладке с именем "ГруппаСлужебная"
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAEditor/VanessaEditor09"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient

	* Выделение первых двух строк второго сценария
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'VanessaEditor.setSelection(26,1,29,40);'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И я перехожу к закладке с именем "ГруппаЗапускТестов"

	* Выполнение выделенных строк

		И я нажимаю на кнопку с именем 'VanessaEditorКонтекстноеМенюВыполнитьВыделенныеСтроки'
		И у элемента с именем "ФлагСценарииВыполнены" я жду значения "Да" в течение 30 секунд

	* Проверка результата
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "СтраницаСлужебноеОсновное"
		И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
		И я перехожу к закладке с именем "ГруппаЗапускТестов"
		И я нажимаю на кнопку с именем 'ФормаПерейтиВДеревоШагов'
		Тогда таблица "ДеревоТестов" стала равной:
			| 'Наименование'                                                           | 'Статус'  |
			| 'VanessaEditor09.feature'                                                | ''        |
			| 'VAEditor09'                                                             | ''        |
			| 'VAEditor09_1'                                                           | ''        |
			| 'И Я запоминаю значение выражения \'1+1\' в переменную "ИмяПеременной1"' | ''        |
			| 'И Я запоминаю значение выражения \'2+2\' в переменную "ИмяПеременной2"' | ''        |
			| 'И Я запоминаю значение выражения \'3+3\' в переменную "ИмяПеременной3"' | ''        |
			| 'VAEditor09_2'                                                           | 'Success' |
			| 'И Я запоминаю значение выражения \'1+1\' в переменную "ИмяПеременной1"' | 'Success' |
			| 'И Я запоминаю значение выражения \'2+2\' в переменную "ИмяПеременной2"' | 'Success' |
			| 'И Я запоминаю значение выражения \'3+3\' в переменную "ИмяПеременной3"' | ''        |








Сценарий: Выполнить с текущего шага с продолжением

	* Загрузка служебной фичи	
		И я нажимаю на кнопку с именем 'ФормаПерейтиВVanessaEditor'

		И я перехожу к закладке с именем "ГруппаСлужебная"
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAEditor/VanessaEditor08"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient

	* Установка нужной строки текущей. Перед последней строкой сценария.
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'VanessaEditor.setPosition(19, 1, \"\");'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И я перехожу к закладке с именем "ГруппаЗапускТестов"

	* Выполнение сценарий с текущей позиции
		И я нажимаю на кнопку с именем 'VanessaEditorКонтекстноеМенюВыполнитьДанныйСценарийСТекущегоШагаСПродолжением'
		И у элемента с именем "ФлагСценарииВыполнены" я жду значения "Да" в течение 30 секунд

	* Проверка результата
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "СтраницаСлужебноеОсновное"
		И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
		И я перехожу к закладке с именем "ГруппаЗапускТестов"
		И я нажимаю на кнопку с именем 'ФормаПерейтиВДеревоШагов'
		Тогда таблица "ДеревоТестов" стала равной:
			| 'Наименование'                                                           | 'Статус'  |
			| 'VanessaEditor08.feature'                                                | ''        |
			| 'VAEditor08'                                                             | ''        |
			| 'VAEditor08_1'                                                           | 'Success' |
			| 'И Я запоминаю значение выражения \'1+1\' в переменную "ИмяПеременной1"' | ''        |
			| 'И Я запоминаю значение выражения \'2+2\' в переменную "ИмяПеременной2"' | ''        |
			| 'И Я запоминаю значение выражения \'3+3\' в переменную "ИмяПеременной3"' | 'Success' |
			| 'VAEditor08_2'                                                           | 'Success' |
			| 'И Я запоминаю значение выражения \'1+1\' в переменную "ИмяПеременной1"' | 'Success' |
			| 'И Я запоминаю значение выражения \'2+2\' в переменную "ИмяПеременной2"' | 'Success' |
			| 'И Я запоминаю значение выражения \'3+3\' в переменную "ИмяПеременной3"' | 'Success' |




Сценарий: Выполнить с текущего шага

	* Загрузка служебной фичи	
		И я нажимаю на кнопку с именем 'ФормаПерейтиВVanessaEditor'

		И я перехожу к закладке с именем "ГруппаСлужебная"
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAEditor/VanessaEditor07"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient

	* Установка нужной строки текущей. Перед последней строкой сценария.
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'VanessaEditor.setPosition(19, 1, \"\");'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И я перехожу к закладке с именем "ГруппаЗапускТестов"

	* Выполнение сценарий с текущей позиции
		И я нажимаю на кнопку с именем 'VanessaEditorКонтекстноеМенюВыполнитьДанныйСценарийСТекущегоШага'
		И у элемента с именем "ФлагСценарииВыполнены" я жду значения "Да" в течение 30 секунд

	* Проверка результата
		И я нажимаю на кнопку с именем 'ФормаПерейтиВДеревоШагов'
		Тогда таблица "ДеревоТестов" стала равной:
			| 'Наименование'                                                           | 'Статус'  |
			| 'VanessaEditor07.feature'                                                | ''        |
			| 'VAEditor07'                                                             | ''        |
			| 'VAEditor07'                                                             | 'Success' |
			| 'И Я запоминаю значение выражения \'1+1\' в переменную "ИмяПеременной1"' | ''        |
			| 'И Я запоминаю значение выражения \'2+2\' в переменную "ИмяПеременной2"' | ''        |
			| 'И Я запоминаю значение выражения \'3+3\' в переменную "ИмяПеременной3"' | 'Success' |


	* Закрытие клиента тестирования
		И я закрыл все окна клиентского приложения
		И я закрываю сеанс TESTCLIENT

