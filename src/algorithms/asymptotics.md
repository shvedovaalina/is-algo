# Оценка асимптотики алгоритмов

[ССЫЛКА НА КНИГУ](https://vk.com/doc191450968_561608466?hash=1K1Cd8tP7N8rZcYeFS8pSJjr82ROC22zM2WlzBbBBzz&dl=RolI6VzGuZKU7zeJEYpjawEP7lZ0yWFsnsqwcJOzkIP) (книга очень интересная и отлично написана, так что при наличии свободного времени рекомендуется прочитать целиком, не пожалеете)

>Каждый, кто хочет постигнуть максимально возможных результатов в изучении алгоритмов и их анализе, обязательно должен прочитать книгу Томаса Кормена.
Для изучения математических основ асимптотики, подробного разбора определений и принципов анализа алгоритмов мы предлагаем вам прочитать несколько страниц. 

* Асимптотические обозначения: страницы 87 - 97

Подробнейший анализ алгоритмов:
* Сортировка вставкой: страницы 57 - 63
* Анализ алгоритмов с примером оценки сортировки вставкой: страницы 64 - 71
* Разработка нескольких алгоритмов и их анализ: страницы 71 - 86

Применение в задачах
===

Оценка асимптотики алгоритма позволяет прикинуть, сколько секунд решение будет работать на каком-то тесте. Для этого, достаточно посмотреть на то, что внутри `O()`, подставить туда нужные нам значения (скорее всего самые сложные по времени тесты для нашего алгоритма, это когда нам дают очень много элементов) и разделить на \\(10^8 \\)` и получить примерное количество секунд на выполнение.

Например, решение работает за \\\(O(n^2)\\). По условию задачи \\(n \le 5000\\). Получаем \\(5000^2 / 10^8 = 0.25\\), следовательно программа в секунду уложится.

Это всё относительно, так как :
1. Вы можете не верно оценивать саму асимптотику
2. Написать код, который не совсем правильно реализует алгоритм. 
3. Разные операции процессор может делать с разной эффективностью. Например, операция `%` взятие по модулю работает не так быстро, как обычное деление. Так, как \\(x = y % z\\) для процессора эквивалентно \\(x = x - y \cdot (x/y)\\), а это уже три операции. Так-же компилятор может оптимизировать ваш код (и не только улучишь его асимптотику, но и ухудшить).

Таблица для обычных ограничений :

| асимптотика  | максимальное n для 1-ой секунды |
| -------- | ------- |
| \\(O(n)\\)  | \\(10^8\\)   |
| \\(O(n \log n)\\) | \\(10^6\\)     |
| \\(O(n^2)\\)    | 5000    |
| \\(O(n^3)\\)    | 1000[^1]   |

[^1]: Для \\(O(n^3)\\) я написал 1000, так как скорее всего алгоритм использует три вложенных цикла, и компилятор [векторизовал](https://ru.algorithmica.org/cs/arithmetic/simd/) их.