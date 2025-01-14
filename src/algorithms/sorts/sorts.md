# Сортировки

Сортировка - это процесс упорядочивания множества по определённом признаку. В страницах этого раздела представлены различные алгоритмы сортировок, имеющие свои преимущества и недостатки. Каждая сортировка детально разобрана, включая асимптотику, принцип работы, сильные/слабые стороны. 

> Сортировка является одной из фундаментальных проблем проектирования алгоритмов. Многие эффективные алгоритмы используют сортировку в качестве подпрограммы, поскольку зачастую легче обрабатывать данные, если они расположены в отсортированном порядке.

>Обращение к ленивым/плохо понимающим сортировки людям! Просьба не копипастить код с сортировок в лабораторные, потому что тогда вы все получите бан за списывание. Вам нужно понять принцип работы и писать свой код, не подглядывая, а не просто перепечатывать код с сайта в лабу!

> Любой алгоритм сортировки, который использует только сравнения элементов массива, не может быть быстрее, чем \\(O(n \log n)\\). Это доказательство было представлено в 1964 году Клаусом Янсеном (Klaus Janson) и Микелем Патерсоном (Michael Paterson). Однако, есть некоторые алгоритмы сортировки, которые не используют сравнения элементов массива и могут работать быстрее \\(O(n \log n)\\), например, поразрядная сортировка (radix sort) и сортировка подсчетом (counting sort). 

<!-- TODO доказать. https://cses.fi/book/book.pdf страница 28 -->

## Устойчивость сортировки

<!-- souce: https://stackoverflow.com/questions/1517793/what-is-stability-in-sorting-algorithms-and-why-is-it-important/1517824#1517824-->

Алгоритм сортировки считается устойчивым, если два объекта с одинаковыми ключами располагаются в сортируемом выходном массиве в том же порядке, в каком они располагаются во входном массиве, подлежащем сортировке. Другими словами,  "стабильный" алгоритм сортировки сохраняет порядок элементов с одинаковым ключом сортировки.

Пример : 

Сортировка в алфавитном порядке по первой букве слова.

```bash
peach
straw
apple
spork
```

Результат стабильной сортировки :

```
apple
peach
straw
spork
```


В алгоритме неустойчивой сортировки `straw` и `spork` могут меняться местами, а в устойчивом алгоритме они остаются в тех же относительных позициях (т.е. поскольку в исходном массиве `straw` оказывается раньше `spork`, то и на выходе она оказывается раньше `spork`).

! Нестабильная сортировка может дать такой-же ответ как и стабильная сортировка.

### Зачем это??? 

Иногда стоит выбрать нужную сортировку, чтобы сохранить порядок.

> На самом деле мы можем сортировать пары со значением и индексом. Например, в примере выше, если мы представим слова, как `(p, 0), (s, 1), (a, 2), (s, 3)`.

