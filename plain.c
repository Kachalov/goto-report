#include <stdlib.h>
#include <inttypes.h>

#include "errors.h"
#include "plain.h"

int plain_nores (void)
{
    int err = EOK;
    int foo = rand();
    if (foo == 0)
    {
        err = EFOO;
    }

    if (err == EOK)
    {
        int bar = rand();
        if (bar == 0)
        {
            err = EBAR;
        }
    }

    if (err == EOK)
    {
        int baz = rand();
        if (baz == 0)
        {
            err = EBAZ;
        }
    }

    return err;
}

int plain_res (void)
{
    int err = EOK;
    uint8_t *foo_p = (uint8_t *)malloc(sizeof(uint8_t));
    if (foo_p == NULL)
    {
        err = EFOO;
    }

    if (err == EOK)
    {
        int bar = rand();
        if (bar == 0)
        {
            err = EBAR;
        }
    }

    if (err == EOK)
    {
        int baz = rand();
        if (baz == 0)
        {
            err = EBAZ;
        }
    }

    if (foo_p != NULL)
        free(foo_p);

    return err;
}
