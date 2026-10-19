#include <stdio.h>
#include <stdint.h>

/* 
 * функции подсчёта контрольной суммы Флетчера.
 * Алгоритм предложен Джоном Флетчером (1982).
 */

/*  1. Fletcher-16, прямая реализация */

__attribute__((noinline))
uint16_t fletcher16(uint8_t *data, int count)
{
    uint16_t sum1 = 0;
    uint16_t sum2 = 0;
    int index;

    for (index = 0; index < count; ++index)
    {
        sum1 = (sum1 + data[index]) % 255;
        sum2 = (sum2 + sum1) % 255;
    }

    return (sum2 << 8) | sum1;
}

/* 2. Fletcher-16, (оптимизированная)*/
 
__attribute__((noinline))
uint16_t fletcher16_opt(const uint8_t *data, size_t len)
{
    uint32_t c0, c1;
    unsigned int i;

    for (c0 = c1 = 0; len >= 5802; len -= 5802) {
        for (i = 0; i < 5802; ++i) {
            c0 = c0 + *data++;
            c1 = c1 + c0;
        }
        c0 = c0 % 255;
        c1 = c1 % 255;
    }
    for (i = 0; i < len; ++i) {
        c0 = c0 + *data++;
        c1 = c1 + c0;
    }
    c0 = c0 % 255;
    c1 = c1 % 255;
    return (c1 << 8 | c0);
}

/* 3. Fletcher-32, (оптимизированная) */

__attribute__((noinline))
uint32_t fletcher32_opt(const uint16_t *data, size_t len)
{
    uint32_t c0, c1;
    unsigned int i;

    for (c0 = c1 = 0; len >= 360; len -= 360) {
        for (i = 0; i < 360; ++i) {
            c0 = c0 + *data++;
            c1 = c1 + c0;
        }
        c0 = c0 % 65535;
        c1 = c1 % 65535;
    }
    for (i = 0; i < len; ++i) {
        c0 = c0 + *data++;
        c1 = c1 + c0;
    }
    c0 = c0 % 65535;
    c1 = c1 % 65535;
    return (c1 << 16 | c0);
}

int main(void)
{
    uint16_t data[6000];
    for (int i = 0; i < 6000; ++i) {
        data[i] = (uint16_t)i;
    }

    uint16_t sum16 = fletcher16((uint8_t *)data, 12000);
    uint16_t sum16o = fletcher16_opt((const uint8_t *)data, 12000);
    uint32_t sum32o = fletcher32_opt(data, 6000);

    printf("fletcher16_simple : 0x%04X\n", sum16);
    printf("fletcher16_opt    : 0x%04X\n", sum16o);
    printf("fletcher32_opt    : 0x%08X\n", sum32o);

    return 0;
}