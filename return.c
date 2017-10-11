#include <stdlib.h>
#include <inttypes.h>

#include "errors.h"

int return_nores (void)
{
    int foo = rand();
    if (foo == 0)
        return EFOO;

    int bar = rand();
    if (bar == 0)
        return EBAR;

    int baz = rand();
    if (baz == 0)
        return EBAZ;

    return EOK;
}

int return_res_leak (void)
{
    uint8_t *foo_p = (uint8_t *)malloc(sizeof(uint8_t));
    if (foo_p == NULL)
        return EFOO;

    int bar = rand();
    if (bar == 0)
        return EBAR;

    int baz = rand();
    if (baz == 0)
        return EBAZ;

    return EOK;
}

int return_res_noleak (void)
{
    int err = EOK;
    uint8_t *foo_p = (uint8_t *)malloc(sizeof(uint8_t));
    if (foo_p == NULL)
        error(err, EFOO, failure);

    int bar = rand();
    if (bar == 0)
        error(err, EBAR, failure);

    int baz = rand();
    if (baz == 0)
        error(err, EBAZ, failure);

    failure:
    if (foo_p != NULL)
        free(foo_p);

    return err;
}
