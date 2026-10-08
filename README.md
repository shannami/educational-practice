# Сравнение и анализ оптимизаций компиляторов 

Целью работы является сравнение и анализ оптимизаций, выполняемых компиляторами при компиляции программ на языке C.

## Компиляторы

| Компилятор | Версия | Уровни оптимизации |
|---|---|---|
| GCC | 15.2.1 | `-O0`, `-O2`, `-Os` |
| Clang | 21.1.8 | `-O0`, `-O2`, `-Os` |
| CompCert | 3.17 | `-O0`, `-O1`, `-Os` |

## Тестовая программа 
[optbench.c](https://github.com/shannami/educational-practice/blob/main/src/optbench.c)

## Асcемблерный код
- [GCC](https://github.com/shannami/educational-practice/tree/main/asm/gcc)
- [Clang](https://github.com/shannami/educational-practice/tree/main/asm/clang)
- [CompCert](https://github.com/shannami/educational-practice/tree/main/asm/compcert)

---
Характеристики системы, на которой проводились исследования:
- ОС: EndeavourOS
- Архитектура: x86_64
