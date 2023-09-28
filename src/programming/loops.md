# Циклы

Часто бывает полезно выполнить блок кода более одного раза. Например, ввести массив.

Для этого в `c++` предусмотрено несколько циклов, которые будут выполнять код внутри тела цикла до конца, а затем сразу же возвращаться в начало. Чтобы поэкспериментировать с циклами.

В `c++` есть три вида циклов: `for`, `while` и `do`. Попробуем использовать каждый из них.

Цикл `while`
===

Синтаксис `while ( condition ) { loop-body }`

Ключевое слово `while` указывает на то, что пока условие истинно, цикл выполняется. Когда условие перестаёт быть истинным, программа вызывает `break`, останавливая цикл. Другое название цикла `while` &mdash; `цикл с условием`

Далее мы рассмотрим `break` подробнее, но в данном случае но завершает выполнение цикла.

```cpp
#include <iostream>
using namespace std;

int main() {
  int t = 5;
  while (t != 0) {
    cout << t << endl;
    t--;
  }
  cout << t;
}
```

Если запустить код вы получите :

```bash
5
4
3
2
1
0
```

Цикл `while` повторился `4` раза. Сначала `t=5`, потом `t=4`, затем `t=3`, `t=2`, `t=1`. В случае `t=1` мы выведем `1`, а затем уменьшим `t` на один, итерация цикла закончится. В следующую итерацию, когда `while` решит проверить условие `t != 0`, получится `false`, а следовательно цикл закончится. После окончания цикла дальнейший код будет выполняться &mdash; `cout << t;`.

Цикл `for`
===

Синтаксис  `for (init-statement; condition; iteration-expression) { loop-body }`

Выполняется `init-statement` всего один раз, затем выполняется тело цикла, если `condition` имеет положительный результат (`true`). После одной итерации выполняется `iteration-expression` и по дальше выполняется следующая итерация.

Давайте напишем программу, которая выведет все чётные числа, которые находятся между `a` и `b`, которые вводятся.

```cpp
#include <bits/stdc++.h>
using namespace std;

int main() {
  int a, b;
  cin >> a >> b;
  for (int x = a; x <= b; x++) {
    if (x % 2 == 0) {
      cout << x << endl;
    }
  }
}
```

При вводе `6 9` программа выведет :

```bash
6 
8
```

Операторы break и continue
===

Иногда при использовании циклов появляется необходимость прервать цикл или пропустить одну итерацию. Для этого в C++ существуют операторы перехода break и continue, рассмотрим каждый из них поподробнее.

>Оператор `break` позволяется завершить цикл, это происходит сразу после выполнения инструкции. Давайте разберем простой пример использования оператора `break`

Допустим, что мы хотим посчитать сумму чисел от 1 до N включительно, но если сумма будет переваливать значение границы, которое ввел пользователь, то мы должны вывести максимальное значение суммы, не превышающее границу, и количество чисел, которые мы сложили в ходе решения.

```cpp
#include <iostream>

int main() {
  int n;
  std::cin >> n;  // максимальное число которое можно будет прибавить к сумме

  int result = 0;  // итоговая сумма

  int bound;  // граница за которую нельзя перевалить
  std::cin >> bound;

  int els_in_sum = 0;  // сколько элементов учвствует в сумме

  for (int i = 1; i < n + 1; i++) {  // цикл от 1 до N включительно

    if (result + i > bound) {
      break;  // если текущая сумма + i переваливает за границу, то выходим из
              // цикла
    }
    els_in_sum += 1;  // иначе увеличиваем количество элементов в сумме на 1
    result += i;      // и сумму на 1
  }
  std::cout << result << " "
            << els_in_sum;  // выводим сумму и количество элементов в ней
}
```
Заметьте, что мы можем не пользоваться оператором `else` в данном случае, т.к цикл попросту завершится при выполнении условия в `if`. Формально увеличение суммы происходит только когда верхнее условие не соблюдается, но это можно не писать из-за оператора `break`, который остановит цикл, как только условие выполнится.

>Оператор `continue` позволяет пропустить текущую итерацию в цикле, пропуская все инструкции, написанные ниже него, для текущей итерации

Рассмотрим простейший пример. Посчитаем сумму нечетных чисел от 1 до N;
```cpp
#include <iostream>

int main() {
  int N;
  std::cin >> N;  // считали с консоли N

  int sum = 0;  // создали сумму со стартовым значением 0

  for (int i = 0; i < N + 1; ++i) {  // цикл по всем числа в диапазоне
    if (N % 2 == 0) {
      continue;  // если число делится на 2 без остатка, то есть является
                 // четным,
      // пропустить все инструкции и перейти к следующей итерации
    }
    sum += i;  // прибавляем к текущей сумме число i
  }

  std::cout << sum;  // вывели ответ
}
```
Так как инструкция суммирования идет после оператора `continue`, то для четных чисел она будет попросту пропущена, как и все инструкции, которые могли бы быть написаны после `continue`. Для нечетных чисел итерация пропускаться не будет, и они будут добавлены в сумму.


Цикл `do`
===

Синтаксис `do { loop-body } while (condition);`

Выполняет оператор многократно, пока значение выражения не станет ложным. Проверка происходит после каждой итерации, а в `while` до. 

Рассмотрим пример :

```cpp
#include <iostream>
using namespace std;

int main() {
  int t = 5;
  do {
    cout << t << endl;
    t--;
  } while (t != 0 && t != 5);
  cout << t;
}
```

Если запустить код вы получите :

```bash
5
4
3
2
1
0
```

Как видно часть условия `t != 5` не была нарушено, так как первый раз проверка производилась с `t=4`.

> `do` удобен лишь для [стрес-тестов](./how-to-testing.md). С `do` надо использовать [next_permutation](https://en.cppreference.com/w/cpp/algorithm/next_permutation) для перебора всех перестановок.

Хорошенько потренируйтесь, попробуйте придумать свой пример с циклами. Когда поймёте, что поняли эту тему, можете смело приступать к следующему уроку.